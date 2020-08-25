using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;

public partial class Mail_Messenger : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string otherUser = Request.QueryString.Get("from");
        string firstName;
        UserClass uc = new UserClass(otherUser);
        firstName = uc.PublicFirstName;
        OtherUser.Text = firstName;
        JsMsgFrom.Text = Profile.UserName;
        JsMsgTo.Text = otherUser;

        if (uc.PublicPersonalImage != "" && uc.PublicPersonalImage != null)
        {
            MsgImg.ImageUrl = uc.PublicPersonalImage;
        }
    }
    protected void MessengerListView_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewItem myItem = (ListViewItem)e.Item;
        Label isFrom = (Label)myItem.FindControl("MsgIsFrom");
        Label lblMessage = (Label)myItem.FindControl("LblMsg");
        Label isRead = (Label)myItem.FindControl("IsRead");
        Panel messageDiv = (Panel)myItem.FindControl("MsgPanel");

        if (isRead.Text == "False" && isFrom.Text != Profile.UserName)
        {
            Label msgId = (Label)myItem.FindControl("MsgId");
            Guid msgGuid = Guid.Parse(msgId.Text);

            using (SwapEntities ent = new SwapEntities())
            {
                var setRead = (from m in ent.MsgEvents
                               where m.UId == msgGuid 
                               select m).SingleOrDefault();

                setRead.IsRead = true;
                ent.SaveChanges();
            }
        }
        if (isFrom.Text == Profile.UserName)
        {
            messageDiv.CssClass = "msgfrommebox";
            if (lblMessage.Text == "You and I have a new scheduled swap! Please contact me when you can.")
            {
                messageDiv.Visible = false;
            }
        }
        else
        {
            messageDiv.CssClass = "msgfromotherbox";
        }
    }
}