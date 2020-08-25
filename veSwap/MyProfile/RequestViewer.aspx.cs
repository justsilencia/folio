using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;
public partial class MyProfile_RequestViewer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string getMyVeId = Request.QueryString.Get("toVeId");
        string getOtherVeId = Request.QueryString.Get("fromVeId");
        string requestFrom = Request.QueryString.Get("requestfrom");
        string requestId = Request.QueryString.Get("id");
        
        Guid myVeGuid = Guid.Parse(getMyVeId);
        Guid otherVeGuid = Guid.Parse(getOtherVeId);
        Guid requestGuid = Guid.Parse(requestId);

        UserClass uc = new UserClass(Profile.UserName);
        UserClass ouc = new UserClass(requestFrom);

        RequestGuidLabel.Text = requestId;
        string imgUrl = uc.PublicImgMainUrl(myVeGuid);

        using (SwapEntities ent = new SwapEntities())
        {
            CarClass cc = new CarClass(Profile.UserName);

            var fromVe = (from tbl in ent.VeImages orderby tbl.IsMain descending
                          where tbl.VehicleId == otherVeGuid
                          select tbl);

            Repeater.DataSource = fromVe;
            Repeater.DataBind();

            UserVehicle myVe = cc.GetVehicleInfo(myVeGuid);
            UserVehicle otherVe = cc.GetVehicleInfo(otherVeGuid);
            RequestEvent thisRequest = cc.GetSwapRequestInfo(requestGuid);

            OtherUser.Text = ouc.PublicFirstName;
            OtherUser2.Text = ouc.PublicFirstName;
            SwapFromDate.Text = thisRequest.DateFrom.ToShortDateString();
            SwapToDate.Text = thisRequest.DateTo.ToShortDateString();
            MyVeLabel.Text = myVe.VehicleYear + " " + myVe.VehicleMake + " " + myVe.VehicleModel;
            OtherVeLabel.Text = otherVe.VehicleYear + " " + otherVe.VehicleMake + " " + otherVe.VehicleModel;
            VeMiles.Text = otherVe.VehicleMiles.ToString();
            CityState.Text = ouc.PublicCity + ", " + ouc.PublicState;
            Distance.Text = cc.GetDistance(uc.PublicZip, ouc.PublicZip).ToString();
        }
        MyImg.ImageUrl = imgUrl;
    }
    protected void AcceptSwapBut_Click(object sender, ImageClickEventArgs e)
    {
        Guid requestGuid = Guid.Parse(RequestGuidLabel.Text);
        UserClass uc = new UserClass(Profile.UserName);

        if (uc.AcceptSwapRequest(requestGuid))
        { 
            Response.Redirect("~/MyProfile/MyProfile.aspx");
        }
        else
        {
            Response.Redirect("~/Errors/AcceptSwapError.aspx");
        }
    }
    protected void DeclineSwapBut_Click(object sender, ImageClickEventArgs e)
    {
        UserClass uc = new UserClass(Profile.UserName);
        Guid requestGuid = Guid.Parse(RequestGuidLabel.Text);
        uc.DeclineSwapRequest(requestGuid);


        MessageClass mc = new MessageClass();
        string msgTo = OtherUser.Text;
        string msgFrom = "veSwap";
        string msg = "Sorry, " + uc.PublicFirstName + " is not interested in trading their  " + MyVeLabel.Text + "  at this time. Your " +
                     " request has been denied. Thanks anyways!";
        mc.SendMsg(msgFrom, msgTo, msg, "QM");
        Response.Redirect("~/MyProfile/MyProfile.aspx?DeclinedSwap=true");
    }
}