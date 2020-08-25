using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using SwapModel;

public partial class Mobile_Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
    {
        TextBox firstName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("FirstName");
        TextBox lastName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("LastName");
        Label firstNameValid = (Label)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("FirstNameValid");
        TextBox userName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName");
        Label userNameValid = (Label)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserNameValid");
        TextBox password = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Password");
        TextBox confPassword = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("ConfirmPassword");
        Label passwordValidBox = (Label)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("PasswordValidBox");
        Label confValidBox = (Label)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("ConfValidBox");
        TextBox eMail = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email");
        Label emailValidBox = (Label)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("EmailValidBox");
        RegularExpressionValidator reg = (RegularExpressionValidator)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RegEx");

        reg.Validate();
        bool myBool = true;

        firstNameValid.CssClass = "validbox";
        userNameValid.CssClass = "validbox";
        passwordValidBox.CssClass = "validbox";
        emailValidBox.CssClass = "validbox";
        confValidBox.CssClass = "none";

        if (firstName.Text == "" & myBool == true || firstName.Text == null & myBool == true)
        {
            myBool = false;
            e.Cancel = true;
            firstNameValid.CssClass = "validboxviz";
        }
        if (userName.Text == "" & myBool == true || userName.Text == null & myBool == true)
        {
            myBool = false;
            e.Cancel = true;
            userNameValid.CssClass = "validboxviz";
        }
        if (password.Text.Length < 6 & myBool == true)
        {
            myBool = false;
            e.Cancel = true;
            passwordValidBox.CssClass = "validboxviz";
        }
        if (confPassword.Text != password.Text & myBool == true)
        {
            myBool = false;
            e.Cancel = true;
            confValidBox.CssClass = "validboxviz";
        }
        if (reg.IsValid == false & myBool == true & eMail.Text != "")
        {
            myBool = false;
            e.Cancel = true;
            emailValidBox.CssClass = "validboxviz";
        }
    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        TextBox eMail = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email");
        TextBox firstName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("FirstName");
        TextBox lastName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("LastName");
        TextBox userName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName");
        TextBox userPw = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Password");

        //Log in user programatically.

        if (Membership.ValidateUser(userName.Text, userPw.Text))
        {
            ProfileCommon pc = new ProfileCommon();
            ProfileCommon userPro = pc.GetProfile(userName.Text);

            //First set profile properties.

            userPro.EMail = eMail.Text;
            userPro.FirstName = firstName.Text;
            userPro.LastName = lastName.Text;
            userPro.Save();

            // Next add user to ProfileProperty table.

            UserClass uc = new UserClass(userPro.UserName);
            uc.SignUpUser(eMail.Text, firstName.Text, lastName.Text);
        }
    }
}