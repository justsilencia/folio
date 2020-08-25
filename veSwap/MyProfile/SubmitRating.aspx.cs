using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;

public partial class MyProfile_SubmitRating : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TradedWithUser.Text = Request.QueryString.Get("User");
        TradedWith.Text = Request.QueryString.Get("FirstName");
        SwappedOn.Text = Request.QueryString.Get("DateFrom");
        SwappedTo.Text = Request.QueryString.Get("DateTo");
        SwapIdLabel.Text = Request.QueryString.Get("Id");
        CancelSwapBut.NavigateUrl = CancelSwapBut.NavigateUrl + Request.QueryString.Get("Id");
    }
    protected void SubmitRatingBut_Click(object sender, EventArgs e)
    {
        UserClass uc = new UserClass(Profile.UserName);
        Guid swapIdGuid = Guid.Parse(SwapIdLabel.Text);

        if (uc.SubmitNewRating(swapIdGuid, TradedWithUser.Text, Convert.ToDateTime(SwappedOn.Text), Convert.ToDateTime(SwappedTo.Text), Convert.ToByte(Rank.Text), RatingComment.Text)
           == true)
        { Response.Redirect("~/MyProfile/MyProfile.aspx?RatingSubmitted=true"); }
        else { Response.Redirect("~/MyProfile/MyProfile.aspx?RatingSubmitted=false"); }
    }
}