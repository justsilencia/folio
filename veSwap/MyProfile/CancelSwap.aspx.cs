using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;

public partial class MyProfile_CancelSwap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Guid swapGuid = Guid.Parse(Request.QueryString.Get("id"));
        
        using (SwapEntities ent = new SwapEntities())
        {
            var getSwap = (from tbl in ent.ScheduledSwaps
                           where tbl.Id == swapGuid
                           select tbl).SingleOrDefault();

            if (getSwap != null)
            {
                
            }
        }
    }
    protected void CancelSwap_Click(object sender, EventArgs e)
    {
        Guid swapGuid = Guid.Parse(Request.QueryString.Get("id"));

        UserClass uc = new UserClass(Profile.UserName);
        string userEmail = uc.PublicEmail.ToLower();
        string inputEmail = VerifyEmail.Text.ToLower();

        if (userEmail == inputEmail)
        {
            uc.CancelSwap(swapGuid, Profile.UserName);
            CancelSwapPanel.Visible = false;
            SwapCancelledPanel.Visible = true;
        }
        else
        {
            InvalidEmail.Visible = true;
        }
    }
}