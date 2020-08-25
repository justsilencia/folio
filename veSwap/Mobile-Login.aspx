<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Landing.master" AutoEventWireup="true" CodeFile="Mobile-Login.aspx.cs" Inherits="Mobile_Login" %>

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
    <div class="loginslogan">Everyday is a New Ride</div>
    <div class="loginmobile">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login OnAuthenticate="Login1_Authenticate" 
                LoginButtonStyle-CssClass="loginbut" ID="Login1" runat="server">
                <LayoutTemplate>
                    <table border="0" class="logintbl"><caption>Log-In to veSwap</caption>
                        <tr>
                            <td>
                                <asp:TextBox autofocus MaxLength="15" CssClass="signuptxtbox" ID="UserName" placeholder="UserName" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox MaxLength="18" required TextMode="Password" CssClass="signuptxtbox" ID="Password" placeholder="Password" runat="server" />
                                <asp:Label Visible="false" ClientIDMode="Static" ID="LoginPwValidBox" runat="server" Text="Incorrect username or password.</b>" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <br />
                                <asp:Button CssClass="loginbut" CommandName="Login" ID="LoginButton" runat="server" Text="Log In" />
                                <br />
                            </td>
                        </tr>
                        <tr>
                        <td colspan="2">
                            <span class="forgot">
                                Forgot your &nbsp;<asp:HyperLink ID="HyperLink2" NavigateUrl="~/Resources/GetUserInfo.aspx" runat="server">password?</asp:HyperLink>
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
<asp:Content ID="Content4" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

