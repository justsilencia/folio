<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Landing.master" AutoEventWireup="true" CodeFile="GetUserInfo.aspx.cs" Inherits="Resources_GetUserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
            <asp:Panel CssClass="pwrecoverpanel" ClientIDMode="Static" ID="PwPanel" HorizontalAlign="Center" runat="server">
                <asp:PasswordRecovery SubmitButtonStyle-CssClass="reglgbut" TitleTextStyle-Font-Bold="true" ID="PasswordRecovery1" runat="server">
                    <MailDefinition From="veswap@veswap.com" Subject="Your new password for veswap.com"></MailDefinition>
                </asp:PasswordRecovery>
            </asp:Panel>
            </AnonymousTemplate>
        </asp:LoginView>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

