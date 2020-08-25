using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using SwapModel;

/// <summary>
/// Summary description for MessengerService
/// </summary>
[WebService(Namespace = "http://www.veswap.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class MessengerService : System.Web.Services.WebService {

    public MessengerService () {
    }

    [WebMethod]
    public string SendMessage(string userTo, string userFrom, string msg) {

        MessageClass mc = new MessageClass();
        try
        {
            mc.SendMsg(userFrom, userTo, msg, "QM");
            return "true";
        }
        catch
        {
            return "false";
        }
    }
    
    [WebMethod]
    public string UpdateChat(string userTo, string userFrom)
    {
        MessageClass mc = new MessageClass();
        return mc.UpdateChat(userFrom, userTo);
    }

    [WebMethod]
    public int CheckMessages(string user)
    {
        int msgNum;
        MessageClass mc = new MessageClass();
        msgNum = mc.CheckNewMessages(user);
        return msgNum;
    }

    [WebMethod]
    public string StashGold(string ip, string msg)
    {
        MessageClass mc = new MessageClass();
        try
        {
            mc.StashMethod(ip, msg);
            return "true";
        }
        catch
        {
            return "false";
        }
    }
 }
