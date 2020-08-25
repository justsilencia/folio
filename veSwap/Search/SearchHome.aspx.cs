using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;

public partial class Search_SearchHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int strYear = DateTime.Now.Year;
        int insertIndex = 1;

        for (int i = 0; i <= 60; i++)
        {
            ListItem nextYear = new ListItem();
            nextYear.Value = strYear.ToString();
            nextYear.Text = strYear.ToString();
            VehicleYearFrom.Items.Insert(insertIndex, nextYear);
            VehicleYearTo.Items.Insert(insertIndex, nextYear);
            strYear = strYear - 1;
            insertIndex = insertIndex + 1;
        }
    }

    protected void SearchBtn_Click(object sender, EventArgs e)
    {
        UserClass uc = new UserClass(Profile.UserName);
        byte valueCat = uc.PublicValueCat;

        if (uc.UserIsValid())
        {
            int zipCode;

            if (Zip.Text != "" && Zip.Text != null)
            {
                zipCode = Convert.ToInt32(Zip.Text);

                // This label is to use on the getdistance() function.
                ZipFromLabel.Text = Zip.Text;
            }
            else
            {
                zipCode = Convert.ToInt32(Profile.Location.Zip);

                // This label is to use on the getdistance() function.
                ZipFromLabel.Text = Profile.Location.Zip;
            }

            string strQry;
            int range = 100;

            if (SearchRange.Text != "100")
            {
                range = Convert.ToInt32(SearchRange.Text);
            }

            // START OF SEARCH QUERY BUILD. First, check if any optional search parameters are selected.

            bool check = false;
            if (VehicleType.Text != "All types")
            {
                check = true;
            }
            if (VehicleMake.Text != "All makes")
            {
                check = true;
            }
            if (VehicleModel.Text != "All models")
            {
                check = true;
            }
            if (VehicleYearFrom.Text != "All" && VehicleYearTo.Text != "All")
            {
                check = true;
            }

            // This builds the vehicle filter portion of the query if optional search params are selected.
            // Also filters for checking vehicle value category.

            string vefilterSelect;
            if (check == true)
            {
                vefilterSelect = "select Id, UserId, VehicleMake, VehicleModel, VehicleYear, ValueCategory from UserVehicle where ValueCategory <= '" + valueCat + "' And ";

                check = false;
                if (VehicleType.Text != "All types")
                {
                    vefilterSelect = vefilterSelect + "VehicleType = '" + VehicleType.Text + "'";
                    check = true;
                }
                if (VehicleYearFrom.Text != "All" && VehicleYearTo.Text != "All")
                {
                    if (check == false)
                    {
                        vefilterSelect = vefilterSelect + "VehicleYear >= '" + VehicleYearFrom.Text + "' and VehicleYear <= '" + VehicleYearTo.Text + "'";
                        check = true;
                    }
                    else
                    {
                        vefilterSelect = vefilterSelect + " and VehicleYear >= '" + VehicleYearFrom.Text + "' and VehicleYear <= '" + VehicleYearTo.Text + "'";
                    }
                }
                if (VehicleMake.Text != "All makes")
                {
                    if (check == false)
                    {
                        vefilterSelect = vefilterSelect + "VehicleMake = '" + VehicleMake.Text + "'";
                        check = true;
                    }
                    else
                    {
                        vefilterSelect = vefilterSelect + " and VehicleMake = '" + VehicleMake.Text + "'";
                    }
                }
                if (VehicleModel.Text != "All models")
                {
                    if (check == false)
                    {
                        vefilterSelect = vefilterSelect + "VehicleModel = '" + VehicleModel.Text + "'";
                        check = true;
                    }
                    else
                    {
                        vefilterSelect = vefilterSelect + " and VehicleModel = '" + VehicleModel.Text + "'";
                    }
                }
            }
            else
            {
                vefilterSelect = "select Id, UserId, UserName, VehicleMake, VehicleModel, VehicleYear, ValueCategory from UserVehicle";
                check = true;
            }

            // This is the final vehicle filter being placed in a variable to be used on the inner join of main query.

            string veFilter = "inner join " +
                              "(" + vefilterSelect + ") veh " +
                              "on p.UserId = veh.UserId ";

            // Here the query begins truly taking form. Included is vehicle filter, distance filter.

            strQry = "select p.UserName, p.FirstName, p.Zip, veh.Id, veh.VehicleMake, veh.VehicleModel, veh.VehicleYear, veh.ValueCategory from ProfileProperty p " +
                     "inner join " +
                     "(select ZipTo, Distance from ZipDistance where ZipFrom = '" + zipCode + "' and Distance <= '" + range + "') s " +
                     "on p.Zip = s.ZipTo " + veFilter;

            // This union includes users with the same zip code as well because the ZipDistance table in 
            // the database does not include it. Perhaps write script to add manually.

            if (check == true)
            {
                strQry = strQry + " union " +
                        "select p.UserName, p.FirstName, p.Zip, veh.Id, veh.VehicleMake, veh.VehicleModel, veh.VehicleYear, veh.ValueCategory from profileproperty p " + veFilter + " where zip = '" + zipCode + "' " +
                        "and p.UserName <> '" + Profile.UserName + "' ";
            }
            else
            {
                strQry = strQry + " union " +
                        " select p.UserName, p.FirstName, p.Zip, veh.Id, veh.VehicleMake, veh.VehicleModel, veh.VehicleYear, veh.ValueCategory from profileproperty p " +
                        " where zip = '" + zipCode + "' " +
                        "and p.UserName <> '" + Profile.UserName + "'";
            }

            SearchDataSource1.SelectCommand = strQry;
            ListViewSearchResults.DataSourceID = "SearchDataSource1";
            ListViewSearchResults.DataBind();

            DefaultPanel.Visible = false;
        }
        else
        {
            UserControl ucx = (UserControl)LoadControl("~/Controls/UserNoticeModal.ascx");
            Label txtLabel = (Label)ucx.FindControl("TextLabel");
            txtLabel.Text = "Must complete profile first.";
            Form.Controls.Add(ucx);
        }
    }

    protected void ListViewSearchResults_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewItem myItem = (ListViewItem)e.Item;
        Image userImg = (Image)myItem.FindControl("UserVeImage");
        Label unLabel = (Label)myItem.FindControl("UserName");
        Label veId = (Label)myItem.FindControl("VeId");
        Label ziptoLbl = (Label)myItem.FindControl("ZipTo");
        Label distLbl = (Label)myItem.FindControl("DistanceLbl");
        Label ratingLbl = (Label)myItem.FindControl("RatingLabel");
        Label requestBtn = (Label)myItem.FindControl("SwapRequestBtn");

        string zipFromtxt = ZipFromLabel.Text;
        string zipTotxt = ziptoLbl.Text;
        int zipFrom = Convert.ToInt32(zipFromtxt);
        int zipTo = Convert.ToInt32(zipTotxt);
        Repeater xtraImg = (Repeater)myItem.FindControl("ImgRepeater");
        string userName = unLabel.Text;
        string vId = veId.Text;
        Guid veGuid = Guid.Parse(vId);

        UserClass uc = new UserClass(Profile.UserName);
        UserClass uco = new UserClass(userName);

        double distanceFrom = uc.GetDistance(zipFrom, zipTo);
        string strDistance = Convert.ToString(distanceFrom);
        distLbl.Text = strDistance;
        ratingLbl.Text = uco.GetUserTradeRating();


        userImg.ImageUrl = uco.PublicImgMainUrl(veGuid);

        using (SwapEntities ent = new SwapEntities())
        {
            var getXtra = from tbl in ent.VeImages
                          where tbl.VehicleId == veGuid && tbl.IsMain == false
                          select tbl;

            if (getXtra != null)
            {
                xtraImg.DataSource = getXtra;
                xtraImg.DataBind();
            }
        }
    }

    protected void ChooseVeListView_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewItem myItem = (ListViewItem)e.Item;
        Image userImg = (Image)myItem.FindControl("VeImgChoose");
        Label idLbl = (Label)myItem.FindControl("IdLabel");
        Guid id = Guid.Parse(idLbl.Text);

        using (SwapEntities ent = new SwapEntities())
        {
            var getImg = (from tbl in ent.VeImages
                          where tbl.Id == id
                          select tbl).SingleOrDefault();


            if (getImg != null)
            {
                userImg.ImageUrl = getImg.ImageUrl;
            }
        }
    }
}