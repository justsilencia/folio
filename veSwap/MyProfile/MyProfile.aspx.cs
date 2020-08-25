using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using SwapModel;

public partial class MyProfile_MyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        DateLabel.Text = DateTime.Now.ToShortDateString();
        UserClass uc = new UserClass(Profile.UserName);
        MyRating.Text = uc.GetUserTradeRating();
        TotalRankings.Text = Convert.ToString(uc.PublicTotalRankings);
        
        if (Request.QueryString.Get("RatingSubmitted") != null && Request.QueryString.Get("RatingSubmitted") != "")
        {
            UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
            Label txtLabel = (Label)ucx.FindControl("TextLabel");
            if (Request.QueryString.Get("RatingSubmitted") == "true")
            { 
                txtLabel.Text = "Your rating has been submitted, thanks!"; 
            }
            else { txtLabel.Text = "Your rating was not submitted, sorry! Please contact us."; }
            Form.Controls.Add(ucx);
        }
        if (Request.QueryString.Get("DeclinedSwap") == "true")
        {
            UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
            Label txtLabel = (Label)ucx.FindControl("TextLabel");
            txtLabel.Text = "Request denied!";
            Form.Controls.Add(ucx);
        }
        if (Request.QueryString.Get("isvalid") != null && Request.QueryString.Get("isvalid") == "true")
        {
            UserControl ucxn = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
            Label txtLabeln = (Label)ucxn.FindControl("TextLabel");

            txtLabeln.Text = "Profile creation is complete!";
            Form.Controls.Add(ucxn);
        }
        BindSchedule();
    }

    protected void BindSchedule()
    {
        string userName = Profile.UserName;

        using (SwapEntities ent = new SwapEntities())
        {
            var checkSwaps = from tbl in ent.ScheduledSwaps
                             where tbl.UserMain == userName &
                             tbl.MainRated == false || tbl.UserOther == userName &
                             tbl.OtherRated == false
                             select tbl;

            if (checkSwaps.Count() >= 1)
            {
                ScheduleListView.DataSource = checkSwaps;
                ScheduleListView.DataBind();
            }
            else
            {
                SchedSwapContainer.Visible = false;
            }
        }
    }

    protected void ScheduleListView_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewItem myItem = (ListViewItem)e.Item;
        Label userMain = (Label)myItem.FindControl("UserMain");
        Label userOther = (Label)myItem.FindControl("UserOther");
        Label swapWith = (Label)myItem.FindControl("SwappingWith");
        Label swapVe = (Label)myItem.FindControl("SwapVe");
        Label vMain = (Label)myItem.FindControl("VMain");
        Label vOther = (Label)myItem.FindControl("VOther");
        Label swapFrom = (Label)myItem.FindControl("SwapFromDate");
        Label swapTo = (Label)myItem.FindControl("SwapToDate");
        Label phone = (Label)myItem.FindControl("Phone");
        Label swapId = (Label)myItem.FindControl("ScheduleId");
        Image swapImg = (Image)myItem.FindControl("SchedSwapVeImage");
        Image persSwapImg = (Image)myItem.FindControl("SchedSwapPersImg");
        HyperLink rateLink = (HyperLink)myItem.FindControl("RateSwapLink");
        HyperLink msgLink = (HyperLink)myItem.FindControl("SendMsgLink");
        Guid veMainGuid = Guid.Parse(vMain.Text);
        Guid veOtherGuid = Guid.Parse(vOther.Text);

        if (userMain.Text == Profile.UserName)
        {
            UserClass uc = new UserClass(userOther.Text);
            CarClass cc = new CarClass(userOther.Text);
            swapWith.Text = uc.PublicFirstName;
            UserVehicle userVe = cc.GetVehicleInfo(veOtherGuid);
            swapImg.ImageUrl = uc.PublicImgMainUrl(veOtherGuid);
            persSwapImg.ImageUrl = uc.PublicPersonalImage;
            swapVe.Text = userVe.VehicleYear + " " + userVe.VehicleMake + " " + userVe.VehicleModel;
            rateLink.NavigateUrl = rateLink.NavigateUrl + "?Id=" + swapId.Text + "&User=" + uc.PublicUserName + "&FirstName=" + uc.PublicFirstName + "&DateFrom=" + swapFrom.Text +
                                   "&DateTo=" + swapTo.Text;
            phone.Text = uc.PublicFormattedPhone;
            msgLink.NavigateUrl = msgLink.NavigateUrl + "?from=" + uc.PublicUserName;
        }
        else
        {
            UserClass uc = new UserClass(userMain.Text);
            CarClass cc = new CarClass(userMain.Text);
            swapWith.Text = uc.PublicFirstName;
            UserVehicle userVe = cc.GetVehicleInfo(veMainGuid);
            swapImg.ImageUrl = uc.PublicImgMainUrl(veMainGuid);
            persSwapImg.ImageUrl = uc.PublicPersonalImage;
            swapVe.Text = userVe.VehicleYear + " " + userVe.VehicleMake + " " + userVe.VehicleModel;
            rateLink.NavigateUrl = rateLink.NavigateUrl + "?Id=" + swapId.Text + "&User=" + uc.PublicUserName + "&FirstName=" + uc.PublicFirstName + "&DateFrom=" + swapFrom.Text +
                                   "&DateTo=" + swapTo.Text;
            phone.Text = uc.PublicFormattedPhone;
            msgLink.NavigateUrl = msgLink.NavigateUrl + "?from=" + uc.PublicUserName;
        }
    }

    protected void RequestsGrid_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label reqFrom = (Label)e.Row.FindControl("RequestFrom");
            Panel swapPanel = (Panel)e.Row.FindControl("SwapRequestPanel");
            Label swapDate = (Label)swapPanel.FindControl("SwapDate");

            RequestNotice.Visible = true;
            swapPanel.Visible = true;

            Label fromVeId = (Label)swapPanel.FindControl("FromVeLabel");
            Label toVeId = (Label)swapPanel.FindControl("ToVeLabel");
            Label otherVeLabel = (Label)swapPanel.FindControl("OtherVeLabel");
            Label myVeLabel = (Label)swapPanel.FindControl("MyVeLabel");
            Label fromName = (Label)swapPanel.FindControl("RequestFromLabel");
            Guid fromVeGuid = Guid.Parse(fromVeId.Text);
            Guid toVeGuid = Guid.Parse(toVeId.Text);

            using (SwapEntities ent = new SwapEntities())
            {
                CarClass cc = new CarClass(Profile.UserName);
                UserVehicle getOtherVe = cc.GetVehicleInfo(fromVeGuid);
                UserVehicle getMyVe = cc.GetVehicleInfo(toVeGuid);
                
                if (getOtherVe != null)
                {
                    otherVeLabel.Text = getOtherVe.VehicleYear + " " + getOtherVe.VehicleMake + " " + getOtherVe.VehicleModel;
                    myVeLabel.Text = getMyVe.VehicleYear + " " + getMyVe.VehicleMake + " " + getMyVe.VehicleModel;
                    UserClass uc = new UserClass(getOtherVe.UserName);
                    fromName.Text = uc.PublicFirstName;
                }

            }
        }
    }

    protected void RequestsGrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //int rowIndex = Convert.ToInt32(e.CommandArgument);
        //GridViewRow myRow = RequestsGrid.Rows[rowIndex];
        //Label idLabel = (Label)myRow.FindControl("RequestId");
        //Guid id = Guid.Parse(idLabel.Text);
        //UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
        //Label txtLabel = (Label)ucx.FindControl("TextLabel");
        //UserClass uc = new UserClass(Profile.UserName);

        //using (SwapEntities ent = new SwapEntities())
        //{
        //    if (e.CommandName == "AcceptSwapListRequest")
        //    {
        //        if (uc.AcceptSwapListRequest(true, id))
        //        {
        //            txtLabel.Text = "Request accepted, user successfully added to your swap list!";
        //            Form.Controls.Add(ucx);
        //        }
        //        else
        //        {
        //            txtLabel.Text = "An error occured, contact us to resolve this issue.";
        //            Form.Controls.Add(ucx);
        //        }
        //    }
        //    else if (e.CommandName == "DeclineSwapRequest")
        //    {
        //        if (uc.AcceptSwapListRequest(false, id))
        //        {
        //            txtLabel.Text = "Successfully declined swap request!";
        //            Form.Controls.Add(ucx);
        //        }
        //        else
        //        {
        //            txtLabel.Text = "An error occured, contact us to resolve this issue.";
        //            Form.Controls.Add(ucx);
        //        }
        //    }
        //    else if (e.CommandName == "DeclineRateRequest")
        //    {
        //        if (uc.DeclineRequest(id))
        //        {
        //            txtLabel.Text = "Successfully declined rate request!";
        //            Form.Controls.Add(ucx);
        //        }
        //        else
        //        {
        //            txtLabel.Text = "An error occured, contact us to resolve this issue.";
        //            Form.Controls.Add(ucx);
        //        }
        //    }
        //}
        //RequestsGrid.DataSourceID = "RequestDataSource";
        //RequestsGrid.DataBind();
    }

    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Label veId = (Label)e.Item.FindControl("VeId");
        Image veImage = (Image)e.Item.FindControl("VeImg");
        Guid veGuid = Guid.Parse(veId.Text);

        using(SwapEntities ent = new SwapEntities())
        {
            var veImg = (from tbl in ent.VeImages
                         where tbl.VehicleId == veGuid && tbl.IsMain == true
                         select tbl.ImageUrl).SingleOrDefault();

            if (veImg != null)
            {
                veImage.ImageUrl = veImg;
            }
        }
    }
}