<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="CancelSwap.aspx.cs" Inherits="MyProfile_CancelSwap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div class="cancelswapcontainer">
 <asp:Panel CssClass="scheduledswapcontainer" ID="CancelSwapPanel" runat="server">

    <h3>Are you sure you'd like to cancel this swap?</h3>
    <br />
    <table>
        <tr>
            <th align="center">Please enter your e-mail address in order to verify<br />
             that you'd like to cancel this swap. Upon cancellation,<br />
             the other user will be notified.</th>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="InvalidEmail" Visible="false" CssClass="validboxviz" runat="server" Text="That email doesn't match the one we have on file." />
                <asp:TextBox ID="VerifyEmail" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Button ID="CancelSwap" CssClass="reglgbut" runat="server" 
                    Text="Cancel This Swap" onclick="CancelSwap_Click" />
                <br /><br />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel Visible="false" CssClass="scheduledswapcontainer" ID="SwapCancelledPanel" runat="server">
        <table>
        <tr><td>
        Swap successfully cancelled. Thanks!
        </td></tr>
        <tr><td><br /><br />
        <asp:HyperLink CssClass="reglgbut" NavigateUrl="~/MyProfile/MyProfile.aspx" ID="ReturnHome" runat="server">Return Home</asp:HyperLink>
        <br /><br /><br /></td></tr></table>
    </asp:Panel>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

