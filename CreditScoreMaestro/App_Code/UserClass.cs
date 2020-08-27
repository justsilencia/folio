using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using CreditMaestroModel;
using System.IO;

// Main entry class for all users.

public class UserClass
{
// Backing variables and field data.
    private string _userName;
    private string _email;
    private string _firstName;
    private string _bookPassword = "halloffamer";
    private Guid _userId;

// Constructor and properties.

    public UserClass(string userName)
    {
        _userName = userName;

        using (CreditMaestroEntities ent = new CreditMaestroEntities())
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
    public Guid PublicUserId
    {
        get { return _userId; }
    }

//  Methods. _________________________

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
       if (_userName == "maestro")
       {
           Roles.AddUserToRole(_userName, "Managers");
       }

       using (CreditMaestroEntities myEnt = new CreditMaestroEntities())
       {
           var newEntry = new ProfileProperty();
           newEntry.EMail = email;
           newEntry.UserId = _userId;
           newEntry.UserName = _userName;
           newEntry.FirstName = firstName;
           newEntry.LastName = lastName;
           
           newEntry.BookActivated = true;
           Roles.AddUserToRole(_userName, "BookValidatedUsers");
           

           myEnt.AddToProfileProperties(newEntry);
           myEnt.SaveChanges();

           EmailUsersClass sndEmail = new EmailUsersClass("veswap");
           string body = sndEmail.PopulateBody(firstName, "Thanks for signing up! Your account is active. Please " +
               "feel free to contact us at CSM@creditscoremaestro.com with any questions or concerns. Thanks again!");

           sndEmail.SendHtmlFormattedEmail(email, "New message from creditscoremaestro.com customer care.", body);
       }
   }

}

