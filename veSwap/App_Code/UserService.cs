using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using SwapModel;

[WebService(Namespace = "http://Swap")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]

public class UserService : System.Web.Services.WebService {

    public UserService() {
    }

    [WebMethod]
    public int NumberOfVehicles(string userName)
    {
        using (SwapEntities ent = new SwapEntities())
        {
            var getNum = (from tbl in ent.UserVehicles
                          where tbl.UserName == userName
                          select tbl).Count();

            return getNum;
        }
    }

    [WebMethod]
    public string SendSwapRequest(string userFrom, string userTo, string fromVeId, string toVeId, string dtFrom, string dtTo) {

        using (SwapEntities ent = new SwapEntities())
        {
            // Check if any swap request has already been accepted for either of these vehicles
            // within this date range. Also check if current requesting user has already sent a request
            // for this vehicle.

            Guid fromVeGuid = Guid.Parse(fromVeId);
            Guid toVeGuid = Guid.Parse(toVeId);
            DateTime dateFrom = DateTime.Parse(dtFrom);
            DateTime dateTo = DateTime.Parse(dtTo);

            var checkSwap = (from tbl in ent.RequestEvents
                             where tbl.RequestFrom == userFrom & 
                             tbl.RequestTo == userTo & tbl.FromVeId == fromVeGuid &
                             tbl.ToVeId == toVeGuid & tbl.Accept == null & tbl.DateFrom >= DateTime.Now ||
                             tbl.RequestFrom == userFrom &
                             tbl.RequestTo == userTo & tbl.ToVeId == toVeGuid &
                             tbl.FromVeId == fromVeGuid & tbl.Accept == null & tbl.DateFrom >= DateTime.Now ||
                             tbl.RequestFrom == userTo &
                             tbl.RequestTo == userFrom & tbl.ToVeId == fromVeGuid &
                             tbl.ToVeId == fromVeGuid & tbl.Accept == null & tbl.DateFrom >= DateTime.Now ||
                             tbl.RequestFrom == userTo &
                             tbl.RequestTo == userFrom & tbl.ToVeId == fromVeGuid &
                             tbl.FromVeId == toVeGuid & tbl.Accept == null & tbl.DateFrom >= DateTime.Now
                             select tbl).SingleOrDefault();

            if (checkSwap == null)
            {
                // This query checks if any scheduled swaps already exist within given date range
                // for either user's vehicle.
                //
                 var checkList = from tbl in ent.ScheduledSwaps
                                 where tbl.VeMain == fromVeGuid & 
                                 tbl.DateFrom >= dateFrom & tbl.DateFrom <= dateTo ||
                                 tbl.VeMain == fromVeGuid &
                                 tbl.DateTo >= dateFrom & tbl.DateTo <= dateTo ||
                                 tbl.VeMain == toVeGuid &
                                 tbl.DateFrom >= dateFrom & tbl.DateFrom <= dateTo ||
                                 tbl.VeMain == toVeGuid &
                                 tbl.DateTo >= dateFrom & tbl.DateTo <= dateTo ||
                                 tbl.VeOther == fromVeGuid & 
                                 tbl.DateFrom >= dateFrom & tbl.DateFrom <= dateTo ||
                                 tbl.VeOther == fromVeGuid &
                                 tbl.DateTo >= dateFrom & tbl.DateTo <= dateTo ||
                                 tbl.VeOther == toVeGuid & 
                                 tbl.DateFrom >= dateFrom & tbl.DateFrom <= dateTo ||
                                 tbl.VeOther == toVeGuid & 
                                 tbl.DateTo >= dateFrom & tbl.DateTo <= dateTo 
                                 select tbl;

                if (checkList.FirstOrDefault() == null)
                {
                    UserClass uc = new UserClass(userFrom);

                    RequestEvent newRequest = new RequestEvent();
                    Guid newGuid = Guid.NewGuid();

                    newRequest.Id = newGuid;
                    newRequest.RequestFrom = userFrom;
                    newRequest.RequestTo = userTo;
                    newRequest.FromVeId = fromVeGuid;
                    newRequest.ToVeId = toVeGuid;
                    newRequest.DateFrom = dateFrom;
                    newRequest.DateTo = dateTo;
                    newRequest.RequestDate = DateTime.Now;

                    ent.AddToRequestEvents(newRequest);
                    ent.SaveChanges();

                    string strMsg = "Just so you know, I sent you a new swap request!";
                    MessageClass mc = new MessageClass();
                    mc.SendMsg(userFrom, userTo, strMsg, "QM");

                    return "true";
                }
                else
                {
                    bool isRequester = false;
                    // Determine which user has commited to a swap within this timeframe, and notify 
                    // client script accordingly.
                    //
                    foreach (var item in checkList)
                    {
                        if (item.VeMain == fromVeGuid || item.VeOther == fromVeGuid)
                        {
                            isRequester = true;
                        }
                    }
                    if (isRequester == true)
                    {
                        return "falsescheduledswapyou";
                    }
                    else
                    {
                        return "falsescheduledswapother";
                    }
                }
            }
            else
            {
                if (checkSwap.RequestFrom == userFrom)
                {
                    return "falsesentrequest";
                }
                else if (checkSwap.RequestFrom == userTo)
                {
                    return "falseothersent";
                }
                else
                {
                    return "error";
                }
            }
        }
    }
    
}
