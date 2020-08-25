using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;

public partial class MyProfile_M_EditVehicle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string getId = Request.QueryString.Get("veid");
            Guid veId = Guid.Parse(getId);
            BindPage(veId);
        }
    }

    protected void SaveImgBut_Click(object sender, EventArgs e)
    {
        string getId = VeGuidLabel.Text;
        Guid veGuid = Guid.Parse(getId);
        string virtualPath = "~/Images/";
        string physicalFolder = Server.MapPath(virtualPath);
        string fileName = Guid.NewGuid().ToString();
        string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
        string imgUrl = System.IO.Path.Combine(virtualPath, fileName + ext);

        FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + ext));

        CarClass cc = new CarClass(Profile.UserName);
        UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
        Label txtLabel = (Label)ucx.FindControl("TextLabel");
        if (cc.AddVehicleImage(imgUrl, veGuid, false))
        {
            txtLabel.Text = "Success!";
            Form.Controls.Add(ucx);
            BindPage(veGuid);
        }
        else
        {
            txtLabel.Text = "3 images per vehicle max.";
            Form.Controls.Add(ucx);
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label imgId = (Label)e.Row.FindControl("ImgId");
            Guid imgGuid = Guid.Parse(imgId.Text);
            Image veImg = (Image)e.Row.FindControl("VeImg");

            using (SwapEntities ent = new SwapEntities())
            {
                var getImg = (from tbl in ent.VeImages
                              where tbl.Id == imgGuid
                              select tbl).SingleOrDefault();

                if (getImg != null)
                {
                    veImg.ImageUrl = getImg.ImageUrl;
                }
            }
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow myRow = GridView1.Rows[rowIndex];
        Label veIdLbl = (Label)myRow.FindControl("VeId");
        Label veImgLbl = (Label)myRow.FindControl("ImgId");

        Guid veGuid = Guid.Parse(veIdLbl.Text);
        Guid imgGuid = Guid.Parse(veImgLbl.Text);

        if (e.CommandName == "SetAsMain")
        {
            CarClass cc = new CarClass(Profile.UserName);
            cc.SetMainImage(imgGuid, veGuid);
            BindPage(veGuid);
            UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
            Label txtLabel = (Label)ucx.FindControl("TextLabel");
            txtLabel.Text = "Success!";
            Form.Controls.Add(ucx);
        }
        if (e.CommandName == "DeleteImg")
        {
            using (SwapEntities ent = new SwapEntities())
            {
                var delImg = (from tbl in ent.VeImages
                              where tbl.Id == imgGuid
                              select tbl).SingleOrDefault();

                if (delImg != null)
                {
                    string imgPath = delImg.ImageUrl;
                    string serverPath = Server.MapPath(imgPath);
                    try
                    {
                        System.IO.File.Delete(serverPath);
                    }
                    catch
                    {
                    }

                    ent.DeleteObject(delImg);
                    ent.SaveChanges();
                    BindPage(veGuid);

                    UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
                    Label txtLabel = (Label)ucx.FindControl("TextLabel");
                    txtLabel.Text = "Success!";
                    Form.Controls.Add(ucx);
                }
            }
        }
    }

    protected void BindPage(Guid veId)
    {
        
        Guid veGuid = veId;
        VeGuidLabel.Text = veId.ToString();

        using (SwapEntities ent = new SwapEntities())
        {
            var getVe = (from v in ent.UserVehicles
                         join i in ent.VeImages on v.Id equals i.VehicleId
                         where i.VehicleId == veGuid && i.IsMain == true
                         select new { v.UserName, v.VehicleMake, v.VehicleModel, v.VehicleYear, i.ImageUrl }).SingleOrDefault();

            if (getVe.UserName == Profile.UserName)
            {
                if (getVe != null)
                {
                    MainVeImg.ImageUrl = getVe.ImageUrl;
                    VeInfo.Text = getVe.VehicleYear + " " + getVe.VehicleMake + " " + getVe.VehicleModel;
                }
            }
            else
            {
                UserControl ucxn = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
                Label txtLabeln = (Label)ucxn.FindControl("TextLabel");

                txtLabeln.Text = "That vehicle doesn't belong to you.";
                Form.Controls.Add(ucxn);
            }

            var getVes = from tbl in ent.VeImages
                         where tbl.VehicleId == veGuid && tbl.IsMain == false
                         select tbl;

            GridView1.DataSource = getVes;
            GridView1.DataBind();
        }
    }
}