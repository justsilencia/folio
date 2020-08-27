using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using CreditMaestroModel;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Guid userName = Guid.NewGuid();
        TextBox userNameBox = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName");
        userNameBox.Text = userName.ToString();
    }
    protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
    {
        TextBox firstName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("FirstName");
        TextBox lastName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("LastName");
        Label firstNameValid = (Label)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("FirstNameValid");
        TextBox userName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName");
        TextBox eMail = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email");
        Label emailValidBox = (Label)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("EmailValidBox");
        RegularExpressionValidator reg = (RegularExpressionValidator)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RegEx");

        reg.Validate();
        bool myBool = true;
        
        emailValidBox.CssClass = "validbox";

        if (reg.IsValid == false & myBool == true & eMail.Text != "")
        {
            myBool = false;
            e.Cancel = true;
            emailValidBox.CssClass = "validboxviz";
        }

        using (CreditMaestroEntities ent = new CreditMaestroEntities())
        {
            var checkEmail = ent.aspnet_Membership.Where(u => u.Email.Equals(eMail.Text)).SingleOrDefault();
            if (checkEmail != null)
            {
                myBool = false;
                e.Cancel = true;
                DuplicateEmailPanel.Visible = true;
            }
        }
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        TextBox eMail = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email");
        TextBox firstName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("FirstName");
        TextBox lastName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("LastName");
        TextBox userName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName");
        
        ProfileCommon pc = new ProfileCommon();
        ProfileCommon userPro = pc.GetProfile(userName.Text);

        //First set profile properties.

        userPro.EMail = eMail.Text;
        if (userPro.FirstName != "" && userPro.FirstName != null)
        {
            userPro.FirstName = firstName.Text;
        }
        if (userPro.LastName != "" && userPro.LastName != null)
        {
            userPro.LastName = lastName.Text;
        }
        userPro.Save();

        // Next add user to ProfileProperty table.

        UserClass uc = new UserClass(userPro.UserName);
        uc.SignUpUser(eMail.Text, firstName.Text, lastName.Text);
    }
}