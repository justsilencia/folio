using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Resources_Form_Library : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!User.IsInRole("BookValidatedUsers"))
        //{
        //    Response.Redirect("~/Default.aspx");
        //}

        string virtualPath = "~/Resources/forms/Word-Documents";
        string physicalPath = Server.MapPath(virtualPath);
        DirectoryInfo myDir = new DirectoryInfo(physicalPath);
        FileInfo[] myFiles = myDir.GetFiles("*.docx", SearchOption.AllDirectories);
        string linkName;
        string linkUrl;
        int lengthOf;

        if (myFiles.Count() >= 1)
        {
            foreach (FileInfo file in myFiles)
            {
                HyperLink newLink = new HyperLink();
                linkName = file.Name;
                lengthOf = file.Name.Length;
                lengthOf = lengthOf - 5;
                linkName = file.Name.Substring(0, lengthOf);
                linkUrl = "~/Resources/Forms/Word-Documents/" + file.Name;
                newLink.NavigateUrl = linkUrl;
                newLink.Text = linkName;
                FormsPanel.Controls.Add(newLink);
            }

        }
    }
}