using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_UserX : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ThisUserName.Text = Profile.UserName;
        MenuLinkHome.NavigateUrl = "~/MyProfile/MyProfile.aspx";
        MenuLinkSearch.NavigateUrl = "~/Search/SearchHome.aspx";
        if (Profile.IsValidated != true)
        {
            UserControl ucx = (UserControl)LoadControl("~/Controls/ProfileIncomplete.ascx");
            cpMainContent.Controls.AddAt(0, ucx);
        }
        
        MessageClass mc = new MessageClass();
        int msgNum = mc.CheckNewMessages(Profile.UserName);
        if (msgNum > 0)
        {
            MsgNumNotice.Visible = true;
            MsgNumNotice.Text = msgNum.ToString();
            MobMsgNumNotice1.Visible = true;
            MobMsgNumNotice1.Text = " " + msgNum.ToString();
            MobMsgNumNotice2.Visible = true;
            MobMsgNumNotice2.Text = msgNum.ToString();
        }

        YearLabel.Text = Convert.ToString(DateTime.Now.Year);
        EmailLabel.Text = Profile.EMail;
    }
}
