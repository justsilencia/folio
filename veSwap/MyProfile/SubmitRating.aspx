<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="SubmitRating.aspx.cs" Inherits="MyProfile_SubmitRating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div class="giveratingcontainer">
<center>
    <p>Please take the time to give an honest rating and a useful comment for future swappers. 
        All ratings <i>are permanent</i> and should reflect your experience with the other person
        and their vehicle. Thanks!</p>
    <asp:Label ID="SwapIdLabel" runat="server" Text='' Visible="false" />
    <h3>Traded with:</h3>
    <div class="mimicinputlabel">
        <asp:Label ID="TradedWith" runat="server" Text='' />
        <asp:Label ID="TradedWithUser" runat="server" Text='' Visible="false" />
    </div><br />
    <h3>Traded on:</h3>
    <div class="mimicinputlabel">
        <asp:Label ID="SwappedOn" runat="server" Text='' />
        <asp:Label ID="SwappedTo" runat="server" Text='' Visible="false" />
    </div><br />
    <h3>Your rating:</h3>
    <div class="inputlabelrating">
    <center>
            <asp:RadioButtonList CellSpacing="4" RepeatDirection="Horizontal" ID="Rank" runat="server">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5" Selected="True"></asp:ListItem>
            </asp:RadioButtonList>
    </center>
    </div><br />
    <h3>Comment:</h3><br />
    <asp:TextBox required placeholder="A brief comment about your experience with this user and their vehicle." ClientIDMode="Static" ID="RatingComment" TextMode="MultiLine" runat="server" />
    <br /><br />
    <asp:Button ID="SubmitRatingBut" CssClass="reglgbut" runat="server" 
        Text="Submit Rating" ClientIDMode="Static" onclick="SubmitRatingBut_Click" />
    <br /><br /><br /><br />
    <asp:HyperLink NavigateUrl="CancelSwap.aspx?id=" ID="CancelSwapBut" CssClass="cancelswapbut" runat="server">Cancel this swap</asp:HyperLink>
</center>
</div>   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

