using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using SwapModel;


// Main entry class for all users.

public class UserClass
{
// Backing variables and field data.
    private string _userName;
    private string _email;
    private string _firstName;
    private int _zip;
    private string _city;
    private string _state;
    private string _phone;
    private string _persImg;
    private byte _valueCat;
    private float _numRankings;
    private Guid _userId;

// Constructor and properties.
    public UserClass(string userName)
    {
        _userName = userName;

        using (SwapEntities ent = new SwapEntities())
        {
            var getId = (from tbl in ent.aspnet_Users
                         where tbl.UserName == userName
                         select tbl.UserId).SingleOrDefault();

            var getEmail = (from tbl in ent.aspnet_Membership
                            where tbl.UserId == getId
                            select tbl.Email).SingleOrDefault();

            _userId = getId;
            _email = getEmail;

            var getProfile = (from tbl in ent.ProfileProperties
                              where tbl.UserId == _userId
                              select tbl).SingleOrDefault();

            if (getProfile != null)
            {
                _firstName = getProfile.FirstName;
                if (getProfile.ValueCategory != null)
                {
                    _valueCat = Convert.ToByte(getProfile.ValueCategory);
                }
                if (getProfile.Zip != null)
                {
                    _zip = Convert.ToInt32(getProfile.Zip);
                }
                if (getProfile.City != null)
                {
                    _city = getProfile.City;
                }
                if (getProfile.State != null)
                {
                    _state = getProfile.State;
                }
                if (getProfile.Phone != null)
                {
                    _phone = getProfile.Phone;
                }
                if (getProfile.SelfImgUrl != null)
                {
                    _persImg = getProfile.SelfImgUrl;
                }
            }
        }
    }
    public string PublicUserName
    {
        get { return _userName; }
    }
    public string PublicFirstName
    {
        get { return _firstName; }
    }
    public string PublicEmail
    {
        get { return _email; }
    }
    public string PublicPersonalImage
    {
        get { return _persImg; }
    }
    public Guid PublicUserId
    {
        get { return _userId; }
    }
    public float PublicTotalRankings
    {
        get { return _numRankings; }
        set {  }
    }
    public int PublicZip
    {
        get { return _zip; }
    }
    public string PublicCity
    {
        get { return _city; }
    }
    public string PublicState
    {
        get { return _state; }
    }
    public string PublicPhone
    {
        get 
        {
            if (_phone != null && _phone.Length == 10)
            {
                return _phone;
            }
            else
            {
                return "";
            }
        }
    }
    public string PublicFormattedPhone
    {
        get
        {
            string phoneNum;
            if (_phone != null)
            {
                phoneNum = _phone;
            }
            else
            {
                phoneNum = "";
            }
            if (phoneNum.Length == 10)
            {
                string strCode = phoneNum.Substring(0, 3);
                string num1 = phoneNum.Substring(3, 3);
                string num2 = phoneNum.Substring(6, 4);
                return "(" + strCode + ")" + num1 + "-" + num2;
            }
            else
            {
                return "";
            }
        }
    }
    public byte PublicValueCat
    {
        get { return _valueCat; }
    }
    public bool PublicHasNewRequest
    {
        get
        {
            using (SwapEntities ent = new SwapEntities())
            {
                var newRequestBool = (from tbl in ent.RequestEvents
                                      where tbl.RequestTo == _userName & tbl.Accept == null
                                      select tbl);
                if (newRequestBool != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
    }
    

//  Methods. _________________________

// Method for getting main image path for specific vehicle.

    public string PublicImgMainUrl(Guid veId)
    {
        using (SwapEntities ent = new SwapEntities())
        {
            var getImg = (from i in ent.VeImages
                          where i.VehicleId == veId & i.IsMain == true
                          select i.ImageUrl).SingleOrDefault();

            if (getImg != null)
            {
                return getImg;
            }
            else
            {
                return "";
            }
        }
        
    }

// Method for authenticating users.

   public bool AuthenticateUser(string pw)
   {
       bool isAuthentic;
       if (Membership.ValidateUser(_userName, pw))
       {
           isAuthentic = true;
       }
       else
       {
           isAuthentic = false;
       }
       return isAuthentic;
    }

// Method for creating user profile at signup.

   public void SignUpUser(string email, string firstName, string lastName)
   {
       if (_userName != "veswap")
       {
           Roles.AddUserToRole(_userName, "PaidMembers");
       }
       else
       {
           Roles.AddUserToRole(_userName, "Managers");
       }

       using (SwapEntities myEnt = new SwapEntities())
       {
           var newEntry = new ProfileProperty();
           newEntry.Email = email;
           newEntry.UserId = _userId;
           newEntry.UserName = _userName;
           newEntry.FirstName = firstName;
           newEntry.LastName = lastName;

           myEnt.AddToProfileProperties(newEntry);
           myEnt.SaveChanges();

           EmailUsersClass sndEmail = new EmailUsersClass("veswap");
           string body = sndEmail.PopulateBody(firstName, "Thanks for signing up! Your account is active. Please " + 
               "feel free to contact us at veswap@veswap.com with any questions or concerns. Thanks again, and happy swapping!");

           sndEmail.SendHtmlFormattedEmail(email, "New message from veSwap.com customer care.", body);
       }
   }

// Method for updating user.

   public void UpdateUserInfo(string firstName, string lastName, string email, string city,
                              string state, int zip, string phone, string imgUrl)
   {
       using (SwapEntities ent = new SwapEntities())
       {
           var getRecord = (from tbl in ent.ProfileProperties
                            where tbl.UserId == _userId
                            select tbl).SingleOrDefault();

           getRecord.FirstName = firstName;
           getRecord.LastName = lastName;
           getRecord.Email = email;
           getRecord.City = city;
           getRecord.State = state;
           getRecord.Zip = zip;
           getRecord.Phone = phone;

           if (imgUrl != "")
           {
               getRecord.SelfImgUrl = imgUrl;
           }

           ent.SaveChanges();
       }
   }

// Method for checking if user has completed all sign up requirements in order to use services.

   public bool UserIsValid()
   {
       bool isValid = true;
      
       using (SwapEntities myEnt = new SwapEntities())
       {
           var getUser = (from tbl in myEnt.ProfileProperties
                          where tbl.UserId == _userId & tbl.FirstName != null
                          & tbl.FirstName != "" & tbl.City != null & tbl.City != ""
                          & tbl.State != null & tbl.State != "" & tbl.Zip != null  
                          & tbl.Phone.Length == 10
                          select tbl).SingleOrDefault();

           if (getUser == null)
           {
               isValid = false;
           }
           
           var getUserCars = (from tbl in myEnt.UserVehicles
                             where tbl.UserId == _userId
                             select tbl).FirstOrDefault();

           if (getUserCars == null)
           {
               isValid = false;
           }
       }

       return isValid;
   }

// Method for getting users trade rating.

   public string GetUserTradeRating()
   {
       double userRating;
       float count = 0;
       float totalRating = 0;

       using (SwapEntities ent = new SwapEntities())
       {
           var getRating = from tbl in ent.SwapRatings
                           where tbl.UserName == _userName
                           select tbl.Rating;

           foreach (int item in getRating)
           {
               totalRating = totalRating + item;
               count = count + 1;
           }
       }
       _numRankings = count;
       if (count > 0)
       {
           userRating = totalRating / count;
           userRating = Math.Round(userRating, 1);
       }
       else { userRating = 0; }

       return userRating.ToString();
   }

// Method for denying a request.

   public bool DeclineRequest(Guid id)
   {
       using (SwapEntities ent = new SwapEntities())
       {
           var getRequest = (from tbl in ent.RequestEvents
                            where tbl.Id == id
                            select tbl).SingleOrDefault();

           if (getRequest != null)
           {
               getRequest.DateAccepted = DateTime.Now;
               getRequest.Accept = false;
               ent.SaveChanges();

               string notifyUser = getRequest.RequestFrom;
               UserClass uc = new UserClass(notifyUser);
               MessageClass mc = new MessageClass();

               string newMsg = "Sorry, your request to swap with " + PublicFirstName + " " +
                   "on " + getRequest.DateFrom.ToShortDateString() + " has been denied. Please " +
                   "feel free to contact us at veswap@veswap.com with any questions or concerns. Thanks again, and happy swapping!";

               mc.SendMsg("veswap", notifyUser, newMsg, "QM");

               //EmailUsersClass sndEmail = new EmailUsersClass("veswap");
               //string body = sndEmail.PopulateBody(uc.PublicFirstName, "Sorry, your request to swap with " + PublicFirstName + " " +
               //    "on " + getRequest.DateFrom.ToShortDateString() + " has been denied. Please " +
               //    "feel free to contact us at veswap@veswap.com with any questions or concerns. Thanks again, and happy swapping!");

               //sndEmail.SendHtmlFormattedEmail(PublicEmail, "New message from veSwap.com customer care.", body);

               return true;
           }
           else
           {
               return false;
           }
       }
    }

// Method for accepting a request.

   //public bool AcceptRequest(Guid id)
   //{
   //    using (SwapEntities ent = new SwapEntities())
   //    {
   //        var getRequest = (from tbl in ent.RequestEvents
   //                          where tbl.Id == id
   //                          select tbl).SingleOrDefault();

   //        if (getRequest != null)
   //        {
   //            getRequest.DateAccepted = DateTime.Now;
   //            getRequest.Accept = true;
   //            ent.SaveChanges();
   //            return true;
   //        }
   //        else
   //        {
   //            return false;
   //        }
   //    }
   //}
// Method for submitting a swap rating.

   public bool SubmitNewRating(Guid swapIdGuid, string userTo, DateTime dtFrom, DateTime dtTo, byte rating, string comment)
   {
       using (SwapEntities ent = new SwapEntities())
       {
           var acceptRequest = (from tbl in ent.RequestEvents
                                where tbl.RequestTo == PublicUserName & tbl.DateFrom == dtFrom &
                                tbl.DateTo == dtTo
                                select tbl).SingleOrDefault();

           if (acceptRequest != null && acceptRequest.Accept == null && acceptRequest.DateAccepted == null)
           {
               acceptRequest.DateAccepted = DateTime.Now;
               acceptRequest.Accept = true;
           }

           var check = (from tbl in ent.SwapRatings
                        where tbl.UserName == userTo & tbl.DateFrom == dtFrom &
                        tbl.DateTo == dtTo
                        select tbl).SingleOrDefault();

           if (check == null)
           {
               Guid newGuid = Guid.NewGuid();
               var rateRequest = new SwapRating();
               rateRequest.Id = newGuid;
               rateRequest.SwapId = swapIdGuid;
               rateRequest.Date = DateTime.Now;
               rateRequest.DateFrom = dtFrom;
               rateRequest.DateTo = dtTo;
               rateRequest.TradedWith = PublicUserName;
               rateRequest.UserName = userTo;
               rateRequest.Rating = rating;
               rateRequest.Comment = comment;
               ent.AddToSwapRatings(rateRequest);
               ent.SaveChanges();

               var isNowRated = (from tbl in ent.ScheduledSwaps
                                 where tbl.Id == swapIdGuid
                                 select tbl).SingleOrDefault();

               if (isNowRated != null)
               {
                   if (isNowRated.UserMain == PublicUserName)
                   {
                       isNowRated.MainRated = true;
                   }
                   else
                   {
                       isNowRated.OtherRated = true;
                   }
                   ent.SaveChanges();
               }

               string strMsg = PublicFirstName + " has given you a rating of " + rating + ". If this rating seems unfair " +
                               "or disagreeable to you, please let us know and we will take a look. Thanks!";
               MessageClass msg = new MessageClass();
               msg.SendMsg(PublicUserName, userTo, strMsg, "QM");

               return true;
           }
           else
           {
               return false;
           }
       }
   }

// Method for setting users value category to null/0.

   public void ValueCategoryDemotion()
   {
       using (SwapEntities ent = new SwapEntities())
       {
           var getPro = (from tbl in ent.ProfileProperties
                         where tbl.UserId == PublicUserId
                         select tbl).SingleOrDefault();

           if (getPro != null)
           {
               getPro.ValueCategory = 0;
               ent.SaveChanges();
           }
       }
   }

// Method for getting distance from one user to the other user.

   public double GetDistance(int zipFrom, int zipTo)
   {
       double distance = 0;

       using (SwapEntities ent = new SwapEntities())
       {
           var getDist = (from tbl in ent.ZipDistances
                          where tbl.ZipFrom == zipFrom && tbl.ZipTo == zipTo
                          select tbl.Distance).SingleOrDefault();

           if (getDist != null)
           {
               distance = Convert.ToDouble(getDist);
               return distance;
           }
           else
           {
               return distance;
           }
       }
   }

// Method for accepting a swap request.

   public bool AcceptSwapRequest(Guid requestId)
   {
       using (SwapEntities ent = new SwapEntities())
       {
           try
           {
               var getSwap = (from tbl in ent.RequestEvents
                              where tbl.Id == requestId
                              select tbl).SingleOrDefault();

               DateTime dateFrom = getSwap.DateFrom;
               DateTime dateTo = getSwap.DateTo;
               Guid veMain = getSwap.FromVeId;
               Guid veOther = getSwap.ToVeId;
               string userMain = getSwap.RequestFrom;
               string userOther = getSwap.RequestTo;
               string emailUser;
               string userwhoAccepts;

               getSwap.Accept = true;
               getSwap.DateAccepted = DateTime.Now;
               ent.SaveChanges();

               Guid swapId = Guid.NewGuid();
               ScheduledSwap newSwap = new ScheduledSwap();
               newSwap.Id = swapId;
               newSwap.OtherRated = false;
               newSwap.MainRated = false;
               newSwap.Date = DateTime.Now;
               newSwap.DateFrom = dateFrom;
               newSwap.DateTo = dateTo;
               newSwap.UserMain = userMain;
               newSwap.UserOther = userOther;
               newSwap.VeMain = veMain;
               newSwap.VeOther = veOther;

               ent.AddToScheduledSwaps(newSwap);
               ent.SaveChanges();

               string strMsg = "You and I have a new scheduled swap! Please contact me when you can.";
               MessageClass msg = new MessageClass();
               msg.SendMsg(userMain, userOther, strMsg, "QM");
               msg.SendMsg(userOther, userMain, strMsg, "QM");
               CleanRequestsAndNotify(requestId, dateFrom, dateTo, userMain, userOther);

               if (userMain == PublicUserName)
               {
                   emailUser = userOther;
                   userwhoAccepts = userMain;
               }
               else
               {
                   emailUser = userMain;
                   userwhoAccepts = userOther;
               }

               UserClass iAccepted = new UserClass(userwhoAccepts);
               string strEmsg = "Your swap request has been accepted! You have a new scheduled swap on " + dateFrom.ToShortDateString() + 
                                " with " + iAccepted.PublicFirstName + ". Please log in at veswap.com " +
                                "in order to review " + iAccepted.PublicFirstName + "'s information, and arrange swap details with this user. Remember, the smoother " +
                                "the swap the better your rating, so please be punctual!";

               EmailUsersClass emu = new EmailUsersClass(emailUser);
               emu.SendHtmlFormattedEmail(emailUser, "Swap request accepted!", strEmsg);

               return true;
           }
           catch
           {
               return false;
           }
       }
   }

// Method for declining a swap request.
//
   public bool DeclineSwapRequest(Guid requestId)
   {
       using (SwapEntities ent = new SwapEntities())
       {
           var getSwap = (from tbl in ent.RequestEvents
                          where tbl.Id == requestId & tbl.Accept == null
                          select tbl).SingleOrDefault();

           getSwap.Accept = false;
           ent.SaveChanges();

           string notifyUser = getSwap.RequestFrom;
           UserClass uc = new UserClass(notifyUser);
           MessageClass mc = new MessageClass();
           EmailUsersClass emu = new EmailUsersClass(notifyUser);

           string newMsg = "Sorry, your request to swap with " + PublicFirstName + " " +
               "on " + getSwap.DateFrom.ToShortDateString() + " has been denied. Please " +
               "feel free to contact us at veswap@veswap.com with any questions or concerns. Thanks again, and happy swapping!";

           mc.SendMsg("veswap", notifyUser, newMsg, "QM");
           emu.SendHtmlFormattedEmail(uc.PublicEmail, "Sorry, your swap request was denied.", newMsg);
       }

       return true;
   }

// Method for notifying a user that another user, who has a pending request for a swap, has
// instead accepted another swap within the corresponding time frame. This method will also
// cancel the pending request that is in conflict.
//
   public void CleanRequestsAndNotify(Guid id, DateTime dateFrom, DateTime dateTo, string userOne, string userTwo)
   {
       string userToNotify, msg;
       MessageClass mc = new MessageClass();
       
       using (SwapEntities ent = new SwapEntities())
       {
               var checkOne = from tbl in ent.RequestEvents
                              where tbl.RequestFrom == userOne &
                              tbl.DateFrom >= dateFrom & tbl.DateFrom <= tbl.DateTo &
                              tbl.Id != id & tbl.Accept != false ||
                              tbl.RequestFrom == userOne &
                              tbl.DateTo >= dateFrom & tbl.DateTo <= dateTo &
                              tbl.Id != id & tbl.Accept != false ||
                              tbl.RequestTo == userOne & 
                              tbl.DateFrom >= dateFrom & tbl.DateFrom <= dateTo &
                              tbl.Id != id & tbl.Accept != false ||
                              tbl.RequestTo == userOne & 
                              tbl.DateTo >= dateFrom & tbl.DateTo <= dateTo &
                              tbl.Id != id & tbl.Accept != false
                              select tbl;

               foreach (var item in checkOne)
               {
                   if (item.RequestFrom == userOne)
                   {
                       msg = userOne + " sent you a request to swap vehicles from " + item.DateFrom.ToShortDateString() + " to " + item.DateTo.ToShortDateString() + 
                       ". However, they have since committed to another swap within this time frame, so the request has been cancelled. " +
                       "Log in frequently to avoid missing any more potentially great swaps!";
                       userToNotify = item.RequestTo;
                       mc.SendMsg("veSwap", userToNotify, msg, "QM");

                       ent.RequestEvents.DeleteObject(item);
                   }
                   if (item.RequestTo == userOne)
                   {
                       msg = item.RequestFrom + " sent you a request to swap vehicles from " + item.DateFrom.ToShortDateString() + " to " + item.DateTo.ToShortDateString() +
                       ". However, they have since committed to another swap within this time frame, so the request has been cancelled. " +
                       "Log in frequently to avoid missing any more potentially great swaps!";
                       userToNotify = item.RequestTo;
                       mc.SendMsg("veSwap", userToNotify, msg, "QM");

                       ent.RequestEvents.DeleteObject(item);
                   }
               }

               var checkTwo = from tbl in ent.RequestEvents
                              where tbl.RequestFrom == userTwo &
                              tbl.DateFrom >= dateFrom & tbl.DateFrom <= tbl.DateTo &
                              tbl.Id != id & tbl.Accept != false ||
                              tbl.RequestFrom == userTwo &
                              tbl.DateTo >= dateFrom & tbl.DateTo <= dateTo &
                              tbl.Id != id & tbl.Accept != false ||
                              tbl.RequestTo == userTwo &
                              tbl.DateFrom >= dateFrom & tbl.DateFrom <= dateTo &
                              tbl.Id != id & tbl.Accept != false ||
                              tbl.RequestTo == userTwo &
                              tbl.DateTo >= dateFrom & tbl.DateTo <= dateTo &
                              tbl.Id != id & tbl.Accept != false
                              select tbl;

               foreach (var item in checkOne)
               {
                   if (item.RequestFrom == userTwo)
                   {
                       msg = userTwo + " sent you a request to swap vehicles from " + item.DateFrom.ToShortDateString() + " to " + item.DateTo.ToShortDateString() +
                       ". However, they have since committed to another swap within this time frame, so the request has been cancelled. " +
                       "Log in frequently to avoid missing any more potentially great swaps!";
                       userToNotify = item.RequestTo;
                       mc.SendMsg("veSwap", userToNotify, msg, "QM");

                       ent.RequestEvents.DeleteObject(item);
                   }
                   if (item.RequestTo == userTwo)
                   {
                       msg = item.RequestFrom + " sent you a request to swap vehicles from " + item.DateFrom.ToShortDateString() + " to " + item.DateTo.ToShortDateString() +
                       ". However, they have since committed to another swap within this time frame, so the request has been cancelled. " +
                       "Log in frequently to avoid missing any more potentially great swaps!";
                       userToNotify = item.RequestTo;
                       mc.SendMsg("veSwap", userToNotify, msg, "QM");

                       ent.RequestEvents.DeleteObject(item);
                   }
               }
               ent.SaveChanges();
       }
   }

// Method for cancelling a scheduled swap.
//
   public void CancelSwap(Guid swapGuid, string userFrom)
   {
       MessageClass mc = new MessageClass();
       string userTo;

       using (SwapEntities ent = new SwapEntities())
       {
           var getSwap = (from tbl in ent.ScheduledSwaps
                          where tbl.Id == swapGuid
                          select tbl).SingleOrDefault(); 

           if (getSwap != null)
           {
               string myMsg;
               if (getSwap.UserMain == userFrom)
               {
                   userTo = getSwap.UserOther;
               }
               else
               {
                   userTo = getSwap.UserMain;
               }
               try
               {
                   ent.DeleteObject(getSwap);
                   ent.SaveChanges();

                   myMsg = "Sorry, unfortunately I am unable to commit to our scheduled swap on " + getSwap.DateFrom.ToShortDateString()
                           + ". I have cancelled the swap, I apologize for the inconvenience.";
                   mc.SendMsg(userFrom, userTo, myMsg, "QM");
               }
               catch
               {
                   myMsg = "I attempted to cancel our scheduled swap on " + getSwap.Date.ToShortDateString() + 
                           ", but an error occurred. Unfortunately, I am unable to commit to this swap, sorry for the inconvenience.";
                   mc.SendMsg(userFrom, userTo, myMsg, "QM");
               }
           }
       }
   }
}

