<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Landing.master" AutoEventWireup="true" CodeFile="Landing.aspx.cs" Inherits="Landing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpBodyHead" Runat="Server">
    <div class="checkboxphrases">
    <div class="phrase">
        <asp:Image ID="Check1" alt="" ImageUrl="~/App_Themes/SwapUserX/Images/check1.png" runat="server" />        
        <div class="phrasetxt">
            Fun
        </div>
    </div>
    <div class="phrase">
        <asp:Image ID="Check2" alt="" ImageUrl="~/App_Themes/SwapUserX/Images/check1.png" runat="server" />        
        <div class="phrasetxt">
            Free
        </div>
    </div>
    <div class="phrase">
        <asp:Image ID="Image1" alt="" ImageUrl="~/App_Themes/SwapUserX/Images/check1.png" runat="server" />        
        <div class="phrasetxt">
            Convenient
        </div>
    </div>
</div>
<div class="loginpanel">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login OnAuthenticate="Login1_Authenticate" 
                LoginButtonStyle-CssClass="loginbut" ID="Login1" runat="server">
                <LayoutTemplate>
                    <table border="0" class="logintbl">
                        <tr>
                            <td>
                                <asp:TextBox autofocus MaxLength="15" CssClass="signuptxtbox" ID="UserName" placeholder="UserName" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox MaxLength="18" TextMode="Password" CssClass="signuptxtbox" ID="Password" placeholder="Password" runat="server" />
                                <asp:Label Visible="false" ClientIDMode="Static" ID="LoginPwValidBox" runat="server" Text="Incorrect username or password.</b>" />
                            </td>
                            <td>
                                <asp:Button CssClass="loginbut" CommandName="Login" ID="LoginButton" runat="server" Text="Log In" />
                            </td>
                        </tr>
                        <tr>
                        <td colspan="2">
                            <span class="forgot">
                                Forgot your <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Resources/GetUserInfo.aspx" runat="server">password?</asp:HyperLink>
                            </span>
                        </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:HyperLink ID="HyperLink3" NavigateUrl="~/MyProfile/MyProfile.aspx" runat="server">You're logged in! Go to your profile.</asp:HyperLink>
        </LoggedInTemplate>
    </asp:LoginView>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="signupcontain">
    <h2>Buy what you want.. Ride what you need.</h2>
    <div class="overview">
        <asp:Image alt="Trade cars." ImageUrl="~/App_Themes/SwapUserX/Images/Landing.png" ID="Image2" runat="server" />
    </div>
    <div class="signup">
        <div class="ribbon">
            <span>Sign Up!</span>
        </div>
        <asp:CreateUserWizard
                ContinueButtonText="Continue" ContinueButtonStyle-CssClass="reglgbut" ContinueDestinationPageUrl="~/MyProfile/MyProfile.aspx" 
                ID="CreateUserWizard1" runat="server" RequireEmail="true"
                OnCreatedUser="CreateUserWizard1_CreatedUser"
                OnCreatingUser="CreateUserWizard1_CreatingUser">
        <ContinueButtonStyle CssClass="reglgbut" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <table border="0" class="signuptbl">
                            <tr>
                                <td class="resizesignupnamecells"><asp:TextBox ClientIDMode="Static" MaxLength="15" CssClass="signuptxtboxnm" ID="FirstName" placeholder="First Name" runat="server" />
                                <asp:Label CssClass="validbox" ClientIDMode="Static" ID="FirstNameValid" runat="server" Text="A <b>first name</b> or <b>alias</b> is required." />
                                <td class="resizesignupnamecells"><asp:TextBox MaxLength="15" CssClass="signuptxtboxnm" ID="LastName" placeholder="Last Name" runat="server" />
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox ClientIDMode="Static" MaxLength="15" CssClass="signuptxtbox" ID="UserName" placeholder="New UserName" runat="server" />
                                    <asp:Label CssClass="validbox" ClientIDMode="Static" ID="UserNameValid" runat="server" Text="Username with <b>5-15 characters</b> required" />
                                    <asp:Label runat="server" ClientIDMode="Static" ID="UserNameInUseLabel" CssClass="validbox" Text="This username is taken, please choose another." />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox MaxLength="18" TextMode="Password" ClientIDMode="Static" CssClass="signuptxtbox" ID="Password" placeholder="Password" runat="server" />
                                    <asp:Label runat="server" ClientIDMode="Static" ID="PasswordValidBox" CssClass="validbox" Text="Password must be at least <b>6</b> characters." />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox MaxLength="18" TextMode="Password" ClientIDMode="Static" CssClass="signuptxtbox" ID="ConfirmPassword" placeholder="Confirm Password" runat="server" />
                                    <asp:Label runat="server" ClientIDMode="Static" ID="ConfValidBox" CssClass="none" Text="Passwords did not match." />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox MaxLength="40" ClientIDMode="Static" CssClass="signuptxtbox" ID="Email" placeholder="E-Mail" runat="server" />
                                    <asp:Label CssClass="validbox" ClientIDMode="Static" ID="EmailValidBox" runat="server" Text="Correct email format: <b>myEmail@provider.com</b>" />
                                </td>
                            </tr>
                        </table>
                        <asp:RegularExpressionValidator ControlToValidate="Email" ValidationExpression='\w+([-+.&apos;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*' Display="None" ID="RegEx" runat="server" />
                    </ContentTemplate>
                    <CustomNavigationTemplate>
                        <table border="0" class="submit" cellspacing="5" style="width:100%;height:100%;">
                        <tr align="right">
                            <td align="right" colspan="0">
                                <asp:Button ClientIDMode="Static" CssClass="reglgbut" ID="StepNextButton" runat="server" CommandName="MoveNext" 
                                ValidationGroup="CreateUserWizard1" Text="Create User" />
                            </td>
                        </tr>
                        <tr>
                            <td><div class="disclaimer">By clicking the 'Create User' button, you agree to
                                our <a href="Resources/TermsOfUse.aspx">terms of use</a> policy.</div>
                            </td>
                        </tr>
                        </table>
                    </CustomNavigationTemplate>
                </asp:CreateUserWizardStep>
<asp:CompleteWizardStep runat="server"></asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
</div>
<div class="mobilelanding">
    <div class="mobilefleximg">
        <asp:Image alt="" ImageUrl="~/App_Themes/SwapUserX/Images/VeMobile1.png" ID="Image3" runat="server" />
        <div class="flexmidmobile">
        <center>
            <asp:Image alt="" ImageUrl="~/App_Themes/SwapUserX/Images/ArrowCirc.png" ID="Image5" runat="server" />
        </center>
        </div>
        <asp:Image alt="" ImageUrl="~/App_Themes/SwapUserX/Images/VeMobile2.png" ID="Image4" runat="server" />
    </div>
    <h3>Buy what you want.. Ride what you need.</h3>
    <dl>
        <dt>
            <asp:HyperLink ID="HyperLink5" NavigateUrl="~/Mobile-Signup.aspx" runat="server">SIGN UP FREE</asp:HyperLink>
        </dt>
        <dt>
            <asp:HyperLink ID="HyperLink4" NavigateUrl="~/Mobile-Login.aspx" runat="server">LOGIN</asp:HyperLink>
        </dt>
    </dl>
    <div class="aboutusmobile">
        
    </div>
</div>
<div class="roadmap">
    <table>
        <tr>
            <td>
                <asp:Image alt="" ImageUrl="~/App_Themes/SwapUserX/Images/LI-Img.png" ID="Image6" runat="server" />
            </td>
            <td valign="middle">
                <b>Step 1: </b>
                Create your new account.
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image alt="" ImageUrl="~/App_Themes/SwapUserX/Images/LI-Img.png" ID="Image7" runat="server" />
            </td>
            <td valign="middle">
                <b>Step 2: </b>
                Build your profile.
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image alt="" ImageUrl="~/App_Themes/SwapUserX/Images/LI-Img.png" ID="Image8" runat="server" />
            </td>
            <td valign="middle">
                <b>Step 3: </b>
                Swap your ride!
            </td>
        </tr>
    </table>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpFooter" Runat="Server">
    <script type="text/javascript" src="Scripts/FormValidate-Functions.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#Password,#ConfirmPassword').keyup(checkPasswordMatch);
        $('#Email').keyup(checkValidEmail);
    });
</script>
</asp:Content>

