using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mobile_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        Login myLogin = (Login)LoginView1.FindControl("Login1");
        TextBox pwBox = (TextBox)myLogin.FindControl("Password");
        TextBox unBox = (TextBox)myLogin.FindControl("UserName");
        string pw = pwBox.Text;
        string un = unBox.Text;
        UserClass uc = new UserClass(un);
        if (uc.AuthenticateUser(pw))
        {
            e.Authenticated = true;
        }
        else
        {
            Label pwLoginValid = (Label)myLogin.FindControl("LoginPwValidBox");
            pwLoginValid.CssClass = "validboxviz";
            pwLoginValid.Visible = true;
            e.Authenticated = false;
        }
        myLogin.DestinationPageUrl = "~/MyProfile/MyProfile.aspx";
    }
}