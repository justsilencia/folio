using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;

public partial class MyProfile_RequestRating : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewItem myItem = (ListViewItem)e.Item;
        Image swapImg = (Image)myItem.FindControl("SwapListImg");
        Label userLabel = (Label)myItem.FindControl("SwapUserLabel");
        Label lastName = (Label)myItem.FindControl("LastName");
        Label firstName = (Label)myItem.FindControl("FirstName");
        Label city = (Label)myItem.FindControl("City");
        Label state = (Label)myItem.FindControl("State");

        ProfileCommon pc = Profile.GetProfile(userLabel.Text);

        lastName.Text = pc.LastName;
        firstName.Text = pc.FirstName;
        city.Text = pc.Location.City;
        state.Text = pc.Location.State;
    }

    protected void SendRequestBut_Click(object sender, EventArgs e)
    {
        UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
        Label txtLabel = (Label)ucx.FindControl("TextLabel");
        UserClass uc = new UserClass(Profile.UserName);
        if (uc.SendRatingRequest(UserNameValue.Text, Convert.ToDateTime(DateSwapped.Text)))
        {
            txtLabel.Text = "Your rating request has been sent!";
            Form.Controls.Add(ucx);
        }
        else
        {
            txtLabel.Text = "You have already sent a rating request for this date to this user.";
            Form.Controls.Add(ucx);
        }
    }
}