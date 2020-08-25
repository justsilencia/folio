using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using SwapModel;

// Class for doin any work related to user vehicles.

public class CarClass : UserClass
{
    // Constructor.
    public CarClass(string userName)
        : base(userName)
    {
    }

    // Method for adding vehicle.
    //
    public bool AddCarToProfile(string veType, string veMake, string veModel, int veYear, int veMiles, string veDesc, string imgUrl, string valCat)
    {
        using (SwapEntities myEnt = new SwapEntities())
        {
            //var getValcat = (from tbl in myEnt.ValueCategories
            //                 where tbl.Range == valCat
            //                 select tbl.Category).SingleOrDefault();

            Guid veGuid = Guid.NewGuid();
            byte getValcat = Convert.ToByte(valCat);
            int veCount = (from tbl in myEnt.UserVehicles
                           where tbl.UserId == PublicUserId
                           select tbl).Count();

            if (veCount <= 1)
            {
                var newVehicle = new UserVehicle();
                newVehicle.Id = veGuid;
                newVehicle.UserId = PublicUserId;
                newVehicle.UserName = PublicUserName;
                newVehicle.VehicleType = veType;
                newVehicle.VehicleMake = veMake;
                newVehicle.VehicleModel = veModel;
                newVehicle.VehicleYear = veYear;
                newVehicle.VehicleMiles = veMiles;
                newVehicle.VehicleDescription = veDesc;
                newVehicle.ValueCategory = getValcat;
                newVehicle.IsActive = true;

                myEnt.AddToUserVehicles(newVehicle);
                myEnt.SaveChanges();

                // Add image class, for adding initial vehicle image..

                AddVehicleImage(imgUrl, veGuid, true);

                // Check value category, and set anew if required.

                var proValuecategory = (from tbl in myEnt.ProfileProperties
                                        where tbl.UserId == PublicUserId
                                        select tbl).SingleOrDefault();

                if (proValuecategory != null)
                {
                    byte proValue = Convert.ToByte(proValuecategory.ValueCategory);
                    if (proValue < getValcat || proValue == null)
                    {
                        proValuecategory.ValueCategory = getValcat;
                        myEnt.SaveChanges();
                    }
                }
                return true;
            }
            else
            {
                return false;
            }
        }
    }

    // Method for adding an image for a user vehicle.
    //
    public bool AddVehicleImage(string imgUrl, Guid veId, bool isMain)
    {
        using (SwapEntities myEnt = new SwapEntities())
        {
            var coungImgs = (from tbl in myEnt.VeImages
                             where tbl.VehicleId == veId
                             select tbl).Count();

            if (coungImgs < 3)
            {
                var imgTbl = new VeImage();
                Guid id = Guid.NewGuid();
                imgTbl.Id = id;
                imgTbl.VehicleId = veId;
                imgTbl.ImageUrl = imgUrl;
                imgTbl.IsMain = isMain;

                myEnt.AddToVeImages(imgTbl);
                myEnt.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }
    }

    // Method for setting main vehicle image.
    //
    public void SetMainImage(Guid imgId, Guid veId)
    {
        using (SwapEntities ent = new SwapEntities())
        {
            var getImg = (from i in ent.VeImages
                          where i.Id == imgId
                          select i).SingleOrDefault();

            var getMain = (from m in ent.VeImages
                           where m.VehicleId == veId && m.IsMain == true 
                           select m).SingleOrDefault();

            getMain.IsMain = false;
            getImg.IsMain = true;
            ent.SaveChanges();
        }
    }

    // Method for editing car.
    //
    public void EditCarInfo(Guid veId, int veMiles, string veDesc)
    {
        using (SwapEntities myEnt = new SwapEntities())
        {
            var getCar = (from tbl in myEnt.UserVehicles
                          where tbl.Id == veId
                          select tbl).SingleOrDefault();

            if (veMiles != 0) { getCar.VehicleMiles = veMiles; }
            if (veDesc != "") { getCar.VehicleDescription = veDesc; }

            myEnt.SaveChanges();
        }
    }

    // Method for getting vehicle information.
    //
    public UserVehicle GetVehicleInfo(Guid veId)
    {
        using (SwapEntities ent = new SwapEntities())
        {
            return ent.UserVehicles.SingleOrDefault(d => d.Id == veId);
        }
    }

    // Method for getting swap request info.
    //
    public RequestEvent GetSwapRequestInfo(Guid reId)
    {
        using (SwapEntities ent = new SwapEntities())
        {
            return ent.RequestEvents.SingleOrDefault(r => r.Id == reId);
        }
    }

     //Method for getting main vehicle image.
    
    //public string MainVeImageUrl(Guid veId)
    //{
    //    using (SwapEntities ent = new SwapEntities())
    //    {
    //        return (from tbl in ent.VeImages
    //                orderby tbl.IsMain descending
    //                where tbl.VehicleId == veId & tbl.IsMain == true
    //                select tbl.ImageUrl).SingleOrDefault();
    //    }
    //}
}