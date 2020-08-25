<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Landing.master" AutoEventWireup="true" CodeFile="Mobile-Signup.aspx.cs" Inherits="Mobile_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpBodyHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="mobilefleximg">
        <asp:Image ImageUrl="~/App_Themes/SwapUserX/Images/VeMobile1.png" ID="Image3" runat="server" />
        <div class="flexmidmobile">
        <center>
            <asp:Image ImageUrl="~/App_Themes/SwapUserX/Images/ArrowCirc.png" ID="Image5" runat="server" />
        </center>
        </div>
        <asp:Image ImageUrl="~/App_Themes/SwapUserX/Images/VeMobile2.png" ID="Image4" runat="server" />
    </div>
    <div class="signupsteps">
        <center>
            <span>Step 1: Sign Up</span>
            <span>Step 2: Build Profile</span>
        </center>
    </div>
    <div class="signup">
    <asp:CreateUserWizard
                ContinueButtonText="Continue" ContinueButtonStyle-CssClass="reglgbut continuebut" ContinueDestinationPageUrl="~/MyProfile/MyProfile.aspx" 
                ID="CreateUserWizard1" runat="server" RequireEmail="true"
                OnCreatedUser="CreateUserWizard1_CreatedUser"
                OnCreatingUser="CreateUserWizard1_CreatingUser">
        <ContinueButtonStyle CssClass="reglgbut" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <table border="0" class="signuptbl">
                            <tr>
                                <td><asp:TextBox ClientIDMode="Static" MaxLength="15" CssClass="signuptxtboxnm" ID="FirstName" placeholder="First Name" runat="server" />
                                <asp:Label CssClass="validbox" ClientIDMode="Static" ID="FirstNameValid" runat="server" Text="A <b>first name</b> or <b>alias</b> is required." />
                                <td><asp:TextBox MaxLength="15" CssClass="signuptxtboxnm" ID="LastName" placeholder="Last Name" runat="server" />
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox ClientIDMode="Static" MaxLength="15" CssClass="signuptxtbox" ID="UserName" placeholder="New UserName" runat="server" />
                                    <asp:Label CssClass="validbox" ClientIDMode="Static" ID="UserNameValid" runat="server" Text="Username with <b>max</b> of <b>15 characters</b> required" />
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
        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server"></asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
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

