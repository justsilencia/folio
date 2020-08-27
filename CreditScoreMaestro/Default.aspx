<%@ Page Title="Subscribe to Our Newsletter | Credit Score Maestro" EnableViewStateMac="true" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div class="container">
    <div class="row my-6">
        <div class="col-lg-5">
            <div class="card h-100">
                <div class="card-body">
                    <h2>
                        Sign up to our newsletter and stay up to date on the latest news in the world of credit.
                    </h2>
                    <asp:Image AlternateText="Credit score maestro logo." ImageUrl="~/App_Themes/CSMUserX/Images/Logo.png" ID="Image3" runat="server" />
                </div>
                <div class="card-footer">
                    ** The book password is no longer required, all access to our forms and research library is free.
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="signupblock">
            <asp:Panel ID="SignupPanel" runat="server">
            <h1>Sign up now!</h1>
            <asp:CreateUserWizard
                ContinueButtonText="Continue" ContinueButtonStyle-CssClass="btn btn-info" ContinueDestinationPageUrl="~/Landing.aspx" 
                ID="CreateUserWizard1" runat="server" RequireEmail="true" AutoGeneratePassword="true"
                OnCreatedUser="CreateUserWizard1_CreatedUser"
                OnCreatingUser="CreateUserWizard1_CreatingUser" 
                CompleteSuccessText="You've been added to our mailer list, and will be receiving periodic credit updates. Thank you!">
            <ContinueButtonStyle CssClass="btn btn-info" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <table border="0" class="signuptbl">
                            <tr>
                                <td>
                                    <asp:TextBox ClientIDMode="Static" MaxLength="15" ID="FirstName" placeholder="First Name (Optional)" runat="server" />
                                    <asp:Label CssClass="validbox" ClientIDMode="Static" ID="FirstNameValid" runat="server" Text="A <b>first name</b> or <b>alias</b> is required." />
                                </td>
                            </tr>
                            <tr>
                                <td><asp:TextBox MaxLength="15" ID="LastName" placeholder="Last Name (Optional)" runat="server" />
                            </tr>
                            <tr>
                                <td class="relbox">
                                    <asp:TextBox Visible="false" ClientIDMode="Static" ID="UserName" runat="server" />
                                    <asp:TextBox MaxLength="40" ClientIDMode="Static" CssClass="signuptxtbox" ID="Email" placeholder="E-Mail" runat="server" />
                                    <asp:Label CssClass="validbox" ClientIDMode="Static" ID="EmailValidBox" runat="server" Text="Correct email format: <b>myEmail@provider.com</b>" />
                                </td>
                            </tr>
                        </table>
                        <asp:RegularExpressionValidator ControlToValidate="Email" ValidationExpression='\w+([-+.&apos;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*' Display="None" ID="RegEx" runat="server" />
                    </ContentTemplate>
                    <CustomNavigationTemplate>
                        <table border="0">
                        <tr>
                            <td>
                                <asp:Button ClientIDMode="Static" CssClass="btn btn-info" ID="StepNextButton" runat="server" CommandName="MoveNext" 
                                ValidationGroup="CreateUserWizard1" Text="Subscribe" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            By clicking the 'Create User' button, you agree to our
                            <asp:HyperLink NavigateUrl="~/Resources/TermsOfUse.aspx" ID="HyperLink2" runat="server">
                                Terms of Use Policy
                            </asp:HyperLink>
                            </td>
                        </tr>
                        </table>
                    </CustomNavigationTemplate>
                </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server"></asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
        </asp:Panel>
        <asp:Panel ID="DuplicateEmailPanel" Visible="false" runat="server">
            <h1>
                The e-mail address you entered is already in our mailer list.
            </h1>
        </asp:Panel>
        </div>
    </div>
  </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
    <script type="text/javascript" src="Scripts/FormValidate-Functions.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#Email').keyup(checkValidEmail);
        });
    </script>
</asp:Content>

