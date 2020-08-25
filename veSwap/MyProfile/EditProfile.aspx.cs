using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;

public partial class MyProfile_EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string phoneNum;
            string myImg;

            FirstName.Text = Profile.FirstName;
            LastName.Text = Profile.LastName;
            Email.Text = Profile.EMail;
            City.Text = Profile.Location.City;
            State.Text = Profile.Location.State;
            Zip.Text = Profile.Location.Zip;
            UserName.Text = Profile.UserName;

            UserClass uc = new UserClass(Profile.UserName);
            phoneNum = uc.PublicPhone;
            myImg = uc.PublicPersonalImage;

            if (phoneNum != "")
            {
                string strCode = phoneNum.Substring(0, 3);
                string firstThree = phoneNum.Substring(3, 3);
                string lastThree = phoneNum.Substring(6, 4);
                AreaCode.Text = strCode;
                Num1.Text = firstThree;
                Num2.Text = lastThree;
            }
            else
            {
                ValidatePhone.Text = "Please enter a valid phone #. This # will </br>only be given to users you are sheduled </br>to swap with.";
            }

            if (myImg != "" && myImg != null)
            {
                SelfImgLabel.Text = "Change Img:";
                PersImage.ImageUrl = myImg;
                PersImage.Visible = true;
                ImgNoticeLabel.Visible = false;
            }
        }
    }

    protected void SaveNewCar_Click(object sender, EventArgs e)
    {
        string type = VehicleType.Text;
        string strYear = Convert.ToString(InjectYear.Text);
        string make = InjectMake.Text;
        string model = InjectModel.Text;
        string desc = VehicleDesc.Text;
        string valueCat = ValueRange.SelectedValue;
        string virtualPath = "~/Images/";
        string physicalFolder = Server.MapPath(virtualPath);
        string fileName = Guid.NewGuid().ToString();
        string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
        string imgUrl = System.IO.Path.Combine(virtualPath, fileName + extension);
        int year = Convert.ToInt32(strYear);
        int miles = Convert.ToInt32(VehicleMiles.Text);
        UserClass uc = new UserClass(Profile.UserName);

        if (extension == ".jpg" || extension == ".jpeg")
        {
            FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
            CarClass cc = new CarClass(Profile.UserName);
            UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
            Label txtLabel = (Label)ucx.FindControl("TextLabel");

            if (cc.AddCarToProfile(type, make, model, year, miles, desc, imgUrl, valueCat))
            {
                txtLabel.Text = "Vehicle successfully added to your profile!";
                Form.Controls.Add(ucx);
            }
            else
            {
                txtLabel.Text = "Sorry, an error occurred. Only 2 vehicles are allowed.";
                Form.Controls.Add(ucx);
            }
        }
        else
        {
            CustomValidator imgValidate = (CustomValidator)ImgValid;
            imgValidate.IsValid = false;
        }

        if (uc.UserIsValid())
        {
            if (Profile.IsValidated != true)
            {
                Profile.IsValidated = true;
                Response.Redirect("~/MyProfile/MyProfile.aspx?isvalid=true");
            }
        }
        else
        {
            if (Profile.IsValidated == true)
            {
                Profile.IsValidated = false;
            }
        }

        CarsGridView.DataSourceID = "CarsDataSource";
        CarsGridView.DataBind();
    }

    protected void SaveProBut_Click(object sender, EventArgs e)
    {
        RegEx.Validate();
        if (RegEx.IsValid == true & Email.Text != "")
        {
            Profile.EMail = Email.Text;
            EmailValidBox.CssClass = "none";
        }
        else
        {
            EmailValidBox.CssClass = "validboxvizrt";
        }
        if (FirstName.Text == "")
        {
            FirstNameValid.CssClass = "validboxvizrt";
            FirstName.Text = Profile.FirstName;
        }
        if (City.Text == "")
        {
            CityValidBox.CssClass = "validboxvizrt";
            City.Text = Profile.Location.City;
        }
        if (Zip.Text == "" || Zip.Text.Length < 5)
        {
            ZipValidBox.CssClass = "validboxvizrt";
            Zip.Text = Profile.Location.Zip;
        }
        int zip;
        UserClass uc = new UserClass(Profile.UserName);

        if (Zip.Text != null & Zip.Text != "")
        {
            zip = Convert.ToInt32(Zip.Text);
        }
        else
        {
            zip = 0;
        }
        string phoneNum;
        phoneNum = AreaCode.Text + Num1.Text + Num2.Text;
        if (phoneNum.Length < 10)
        {
            phoneNum = "0";
        }

        string virtualPath = "~/Images/";
        string physicalFolder = Server.MapPath(virtualPath);
        string fileName = Guid.NewGuid().ToString();
        string extension = System.IO.Path.GetExtension(PersImgUpload.FileName);
        string imgUrl = System.IO.Path.Combine(virtualPath, fileName + extension);

        if (extension == ".jpg" || extension == ".jpeg")
        {
            PersImgUpload.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
        }
        else
        {
            imgUrl = "";
        }

        uc.UpdateUserInfo(FirstName.Text, LastName.Text, Email.Text, City.Text, State.Text, zip, phoneNum, imgUrl);

        Profile.FirstName = FirstName.Text;
        Profile.LastName = LastName.Text;
        Profile.Location.City = City.Text;
        Profile.Location.State = State.Text;
        Profile.Location.Zip = Zip.Text;

        FirstName.Text = Profile.FirstName;
        LastName.Text = Profile.LastName;
        Email.Text = Profile.EMail;
        City.Text = Profile.Location.City;
        State.Text = Profile.Location.State;
        Zip.Text = Profile.Location.Zip;

        if (uc.UserIsValid())
        {
            if (Profile.IsValidated != true)
            {
                Profile.IsValidated = true;
                Response.Redirect("~/MyProfile/MyProfile.aspx?isvalid=true");
            }
        }
        else
        {
            if (Profile.IsValidated == true)
            {
                Profile.IsValidated = false;
            }
        }
        UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
        Label txtLabel = (Label)ucx.FindControl("TextLabel");
        txtLabel.Text = "Your updates have been saved!";
        Form.Controls.Add(ucx);
    }

    protected void CarsGridView_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        UserClass uc = new UserClass(Profile.UserName);
        if (uc.UserIsValid() == false)
        {
            Profile.IsValidated = false;
            uc.ValueCategoryDemotion();
            UserControl ucx = (UserControl)LoadControl("~/Controls/ProfileIncomplete.ascx");
            ContentPlaceHolder cph = (ContentPlaceHolder)Master.FindControl("cpMainContent");
            cph.Controls.AddAt(0, ucx);
        }
    }

    protected void CarsGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditCar")
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            CarClass cc = new CarClass(Profile.UserName);
            int miles = 0;
            string desc = "";
            string imgUrl = "";

            GridViewRow myRow = CarsGridView.Rows[rowIndex];
            TextBox boxMiles = (TextBox)myRow.FindControl("EditMiles");
            TextBox boxDesc = (TextBox)myRow.FindControl("EditDesc");
            FileUpload newImg = (FileUpload)myRow.FindControl("FileUpload2");
            Label myId = (Label)myRow.FindControl("CarId");
            Guid id = Guid.Parse(myId.Text);

            if (boxMiles.Text != "") { miles = Convert.ToInt32(boxMiles.Text); }
            if (boxDesc.Text != "") { desc = boxDesc.Text; }

            cc.EditCarInfo(id, miles, desc);

            UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
            Label txtLabel = (Label)ucx.FindControl("TextLabel");

            if (newImg.FileName != "")
            {
                string ext = System.IO.Path.GetExtension(newImg.FileName);
                if (ext == ".jpg" || ext == ".jpeg")
                {
                    string virtualPath = "~/Images/";
                    string physicalPath = Server.MapPath(virtualPath);
                    Guid fileName = Guid.NewGuid();

                    newImg.SaveAs(System.IO.Path.Combine(physicalPath, fileName + ext));
                    imgUrl = System.IO.Path.Combine(virtualPath, fileName + ext);

                    if (cc.AddVehicleImage(imgUrl, id, false))
                    {
                        txtLabel.Text = "Success!";
                        Form.Controls.Add(ucx);
                    }
                    else
                    {
                        txtLabel.Text = "3 Images max.";
                        Form.Controls.Add(ucx);
                    }
                 }
                else
                {
                    txtLabel.Text = "Image must be .jpg or .jpeg";
                    Form.Controls.Add(ucx);
                }
            }
            else
            {
                txtLabel.Text = "Success!";
                Form.Controls.Add(ucx);
            }

            CarsGridView.DataSourceID = "CarsDataSource";
            CarsGridView.DataBind();
        }
        if (e.CommandName == "DeleteVehicle")
        {
            using (SwapEntities myEnt = new SwapEntities())
            {
                string userName = Profile.UserName;
                string strId = Convert.ToString(e.CommandArgument);
                Guid veGuid = Guid.Parse(strId);

                var checkSwaps = from tbl in myEnt.ScheduledSwaps
                                 where tbl.UserMain == userName &
                                 tbl.MainRated == false & tbl.VeMain == veGuid ||
                                 tbl.UserMain == userName &
                                 tbl.MainRated == false & tbl.VeOther == veGuid || 
                                 tbl.UserOther == userName &
                                 tbl.OtherRated == false & tbl.VeMain == veGuid ||
                                 tbl.UserOther == userName &
                                 tbl.OtherRated == false & tbl.VeOther == veGuid
                                 select tbl;

                if (checkSwaps.Count() >= 1)
                {
                    UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
                    Label txtLabel = (Label)ucx.FindControl("TextLabel");
                    txtLabel.Text = "You cannot delete a vehicle with a scheduled swap pending."; 
                    Form.Controls.Add(ucx);
                }
                else
                {
                    var getVe = (from vetbl in myEnt.UserVehicles
                                 where vetbl.Id == veGuid
                                 select vetbl).SingleOrDefault();

                    if (getVe != null)
                    {
                        myEnt.DeleteObject(getVe);
                        myEnt.SaveChanges();
                    }

                    var getImgs = from tbl in myEnt.VeImages
                                  where tbl.VehicleId == veGuid
                                  select tbl;

                    foreach (var item in getImgs)
                    {
                        string imgPath = item.ImageUrl;
                        string serverPath = Server.MapPath(imgPath);
                        try
                        {
                            System.IO.File.Delete(serverPath);
                        }
                        catch
                        {
                        }
                    }

                    var validCheck = (from vetbl in myEnt.UserVehicles
                                     where vetbl.UserName == userName
                                     select vetbl).SingleOrDefault();

                    if (validCheck == null)
                    {
                        Profile.IsValidated = false;
                    }
                    
                    Response.Redirect("~/MyProfile/EditProfile.aspx");
                }
            }
        }
    }

    protected void CarsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label veId = (Label)e.Row.FindControl("VehicleId");
            Image carImg = (Image)e.Row.FindControl("MainVeImg");
            Image carModalImg = (Image)e.Row.FindControl("ModalMainImg");
            ListView imgLv = (ListView)e.Row.FindControl("VeEditListView");
            Guid veGuid = Guid.Parse(veId.Text);
            string imgUrl;

            // Now get images with this vehicle Id, and grab the one with 'IsMain' equals true.

            using (SwapEntities myEnt = new SwapEntities())
            {
                var getVe = (from tbl in myEnt.VeImages
                             where tbl.VehicleId == veGuid && tbl.IsMain == true
                             select tbl).SingleOrDefault();

                if (getVe != null)
                {
                    imgUrl = getVe.ImageUrl;
                }
                else
                {
                    imgUrl = "";
                }

                // Bind gridview for other vehicle images.

                var getVes = from tbl in myEnt.VeImages
                             where tbl.VehicleId == veGuid && tbl.IsMain == false
                             select tbl;

                imgLv.DataSource = getVes;
                imgLv.DataBind();

            }
            carImg.ImageUrl = imgUrl;
            carModalImg.ImageUrl = imgUrl;
        }
    }

    protected void VeEditListView_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewItem myItem = (ListViewItem)e.Item;
        Label imgId = (Label)myItem.FindControl("ImgId");
        Guid imgGuid = Guid.Parse(imgId.Text);
        Image veImg = (Image)myItem.FindControl("VeImg");

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

    protected void VeEditListView_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
        string veId = commandArgs[0];
        string veImgId = commandArgs[1];

        Guid veGuid = Guid.Parse(veId);
        Guid imgGuid = Guid.Parse(veImgId);

        if (e.CommandName == "SetAsMain")
        {
            CarClass cc = new CarClass(Profile.UserName);
            cc.SetMainImage(imgGuid, veGuid);

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

                    UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
                    Label txtLabel = (Label)ucx.FindControl("TextLabel");
                    txtLabel.Text = "Success!";
                    Form.Controls.Add(ucx);
                }
            }
        }
        CarsGridView.DataSourceID = "CarsDataSource";
        CarsGridView.DataBind();
    }
}