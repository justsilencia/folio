using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;

public partial class Mail_MailBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SwapEntities ent = new SwapEntities())
        {
            var contactCount = (from tbl in ent.Contacts
                                where tbl.UserTo == Profile.UserName
                                select tbl).Count();

            if (contactCount < 5)
            {
                MailBoxDataPager.Visible = false;
            }
        }
    }
    protected void InboxListView_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewItem myItem = (ListViewItem)e.Item;
        Label countLabel = (Label)myItem.FindControl("CountLabel");
        Label userLabel = (Label)myItem.FindControl("UserLabel");
        Image userImg = (Image)myItem.FindControl("MsgImg");
        UserClass uc = new UserClass(userLabel.Text);
        if (uc.PublicPersonalImage != "" && uc.PublicPersonalImage != null)
        {
            userImg.ImageUrl = uc.PublicPersonalImage;
        }
        using(SwapEntities ent = new SwapEntities())
        {
            var msgCount = (from tbl in ent.MsgEvents join msgrec in ent.RecMessages
                           on tbl.UId equals msgrec.UId
                           where tbl.UserFrom == userLabel.Text && tbl.IsRead == false && tbl.UserTo == Profile.UserName 
                           select tbl).Count();

            countLabel.Text = msgCount.ToString();
        }
    }
}