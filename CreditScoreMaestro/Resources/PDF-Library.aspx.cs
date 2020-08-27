using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Resources_PDF_Library : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string virtualPath = "~/Resources/PDFs";
        string physicalPath = Server.MapPath(virtualPath);
        DirectoryInfo myDir = new DirectoryInfo(physicalPath);
        FileInfo[] myFiles = myDir.GetFiles("*.pdf", SearchOption.TopDirectoryOnly);
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
                lengthOf = lengthOf - 4;
                linkName = file.Name.Substring(0, lengthOf);
                linkUrl = "~/Resources/PDFs/" + file.Name;
                newLink.NavigateUrl = linkUrl;
                newLink.Target = "_child";
                newLink.Text = linkName;
                PDFPanel.Controls.Add(newLink);
            }

        }
    }
}