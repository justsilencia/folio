using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;

public partial class Landing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Get("activated") == "true")
        {
            UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
            Label txtLabel = (Label)ucx.FindControl("TextLabel");
            txtLabel.Text = "Thanks for activating your account!";
            Form.Controls.Add(ucx);
        }

    }

    protected void download(object sender, EventArgs e)
    {
        string fname = "CSM-Calculator";
        string virtualPath = "~/Resources/";
        string physicalFoler = Server.MapPath(virtualPath);
        string Url = System.IO.Path.Combine(virtualPath, fname + ".xlsx");
        string name = Path.GetFileName(Url);
        Response.AppendHeader("content-disposition", "attachment; filename=" + name);
        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        Response.WriteFile(Url);
        Response.End();
    }
    
}