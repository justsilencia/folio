<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="RequestViewer.aspx.cs" Inherits="MyProfile_RequestViewer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<asp:Label ID="RequestGuidLabel" runat="server" Text="" Visible="false" />
<table class="requestviewtbl">
<tr><td align=center>
    <asp:ImageButton ImageUrl="~/App_Themes/SwapUserX/Images/AcceptButton.png" 
        ID="AcceptSwapBut" runat="server" ClientIDMode="Static" 
        onclick="AcceptSwapBut_Click" />
    <asp:ImageButton ImageUrl="~/App_Themes/SwapUserX/Images/DeclineButton.png" 
        ID="DeclineSwapBut" ClientIDMode="Static" runat="server" 
        onclick="DeclineSwapBut_Click" js-user="" />
</td></tr>
<tr><td>
    <div class="swapnoticeinfo">
        <br />
        <asp:Label ID="OtherUser" CssClass="js-user" ClientIDMode="Static" runat="server" Text="" />
        would like to swap from
        <asp:Label ID="SwapFromDate" Font-Bold="true" runat="server" Text="" />
        to
        <asp:Label ID="SwapToDate" Font-Bold="true" runat="server" Text="" />.<br />
    </div>
    <center>If you accept, all other requests you've sent within this time frame will be cancelled, and the corresponding user will be notified.<br />
    <i>By accepting this request, you are obligated to swap your vehicle with 
    <asp:Label ID="OtherUser2" runat="server" Text="" />
    on the foregoing dates, and are bound by our
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Resources/TermsOfUse.aspx" runat="server">Terms of Use</asp:HyperLink> policy.</i><br /><br />
    </center>
</td></tr>
<tr><td>
    <div class="myswapveh">
        <asp:Label Font-Bold="true" ID="OtherVeLabel" runat="server" Text="" /><br />
        <span>Mileage:</span>
        <asp:Label ID="VeMiles" runat="server" Text="" /><br />
        <span>Location:</span>
        <asp:Label ID="CityState" runat="server" Text="" /><br />
        <span>(<asp:Label ID="Distance" runat="server" Text="" /> miles from your current zip.)</span>
        <asp:Repeater ID="Repeater" runat="server">
            <ItemTemplate>
                <asp:Image CssClass="requestotherimages" ImageUrl='<%# Eval("ImageUrl") %>' ID="OtherImg" runat="server" />
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <asp:Image CssClass="blipimg" ImageUrl="~/App_Themes/SwapUserX/Images/Notice-Bubble.png" ID="Blip" runat="server" />
    <div class="myswapveh">
         <asp:Label ID="MyVeLabel" runat="server" Text="Label" />
         <asp:Image CssClass="requestimages" ID="MyImg" runat="server" />
    </div>
</td></tr>
</table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
<script type="text/javascript" src="../Scripts/Confirm-Alerts.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var otherUser = $('#OtherUser').text();
        $('#AcceptSwapBut').click(function (e) {
            ConfirmBox(e, "Are you sure you want to accept " + otherUser + "'s request for this swap?");
        });
        $('#DeclineSwapBut').click(function (e) {
            ConfirmBox(e, "Are you sure you want to permanently decline " + otherUser + "'s request for this swap?");
        });
    });
</script>
</asp:Content>

