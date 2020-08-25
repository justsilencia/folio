<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<asp:Label Visible="false" ID="DateLabel" runat="server" Text='' />

 <asp:Panel CssClass="scheduledswapcontainer" ID="SchedSwapContainer" runat="server">
    <h2>You Have a Scheduled Swap!</h2>
    <table>
        <asp:ListView ID="ScheduleListView" runat="server" 
        onitemdatabound="ScheduleListView_ItemDataBound">
            <ItemTemplate>
            <tr>
                <th align="right">From:</th>
                <td align="left">
                    <asp:Label ID="UserMain" runat="server" Text='<%# Eval("UserMain") %>' Visible="false" />
                    <asp:Label ID="UserOther" runat="server" Text='<%# Eval("UserOther") %>' Visible="false" />
                    <asp:Label ID="VMain" runat="server" Text='<%# Eval("VeMain") %>' Visible="false" />
                    <asp:Label ID="VOther" runat="server" Text='<%# Eval("VeOther") %>' Visible="false" />
                    <asp:Label ID="ScheduleId" runat="server" Text='<%# Eval("Id") %>' Visible="false" />
                    <asp:Label ID="SwapFromDate" Text='<%# DateTime.Parse(Eval("DateFrom").ToString()).ToShortDateString() %>' runat="server" />
                </td>
            </tr>
             <tr>
                <th align="right">To:</th>
                <td align="left">
                    <asp:Label ID="SwapToDate" Text='<%# DateTime.Parse(Eval("DateTo").ToString()).ToShortDateString() %>' runat="server" />
                </td>
             </tr>
             <tr>
                <th align="right">With:</th>
                <td align="left">
                    <asp:Label ID="SwappingWith" runat="server" Text="" />'s
                    <asp:Label ID="SwapVe" runat="server" Text="" />
                </td>
             </tr>
             <tr>
                <th align="right">Phone#:</th>
                <td align="left">
                    <asp:Label ID="Phone" runat="server" Text="" />
                </td>
             </tr>
             <tr>
                <td colspan="2" align="center" style="position: relative;">
                    <asp:Image CssClass="schedswapveimg" ID="SchedSwapVeImage" runat="server" />
                    <div class="containscheduleimg">
                        <asp:Image ID="SchedSwapPersImg" runat="server" />
                    </div>
                </td>
             </tr>
             <tr>
                <td colspan="2">
                    <br />
                    <asp:HyperLink NavigateUrl="~/Mail/Messenger.aspx" ID="SendMsgLink" CssClass="regsmbut" runat="server">Send Message</asp:HyperLink>
                    <br /><br />
                    <asp:HyperLink js-fromdate='<%# DateTime.Parse(Eval("DateFrom").ToString()).ToShortDateString() %>' ClientIDMode="Static" ID="RateSwapLink" NavigateUrl="~/MyProfile/SubmitRating.aspx" CssClass="regsmbut js-rate" runat="server">Rate Swap</asp:HyperLink>
                    <br /><br />
                </td>
             </tr>
            </ItemTemplate>
        </asp:ListView>
    </table>
  </asp:Panel> 
<div class="homenoticecontainer">
<table>
<tr>
<td>
    <div class="homenotice">
        <label>Swap Rating</label>
        <p>
            My Rating: <asp:Label Font-Bold="true" ID="MyRating" runat="server" Text="" /><br />
            Total Ratings: <asp:Label Font-Bold="true" ID="TotalRankings" runat="server" Text="" />
        </p><br />
        <div class="tradecomments">
            <asp:GridView AllowPaging="true" PageSize="2" ShowHeader="false" 
             GridLines="None" 
             AutoGenerateColumns="false"
             PagerSettings-Mode="Numeric"
             PagerSettings-Position="Top"
             PagerStyle-CssClass="pagebut"
             ID="RatingGrid" DataSourceID="RatingDataSource" runat="server">
                <EmptyDataTemplate>
                    <h2>No ratings yet. Start swapping now and get rated!</h2>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="ratingrow">
                                <asp:Label ID="RatingDate" runat="server" Text='<%# DateTime.Parse(Eval("Date").ToString()).ToShortDateString() %>' />
                                -
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TradedWith") %>' />
                                -
                                <b>Rating: 
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Rating") %>' />
                                </b>
                                <br />
                                <asp:Label ID="RatingComment" runat="server" Text='<%# Eval("Comment") %>' />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <div class="homenotice">
        <label>
            Request Box
            <asp:Image ID="RequestNotice" Visible="false" ClientIDMode="Static" ImageUrl="~/App_Themes/SwapUserX/Images/Exclamation.png" runat="server" />
        </label>
        <div class="requestcontainer">
        <asp:GridView AllowPaging="true" PageSize="1" ShowHeader="false" 
             GridLines="None" 
             AutoGenerateColumns="false"
             PagerSettings-Mode="Numeric"
             PagerSettings-Position="Top"
             PagerStyle-CssClass="pagebut"
             ID="RequestsGrid" DataSourceID="RequestDataSource" runat="server" 
             onrowdatabound="RequestsGrid_RowDataBound" 
             onrowcommand="RequestsGrid_RowCommand">
                <EmptyDataTemplate>
                    <center><h2>No requests yet.</h2></center>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="requestrow">
                                <asp:Panel  ID="SwapRequestPanel" runat="server">
                                    <asp:Label ID="RequestId" Visible="false" runat="server" Text='<%# Eval("Id") %>' />
                                    <asp:Label ID="FromVeLabel" Visible="false" runat="server" Text='<%# Eval("FromVeId") %>' />
                                    <asp:Label ID="ToVeLabel" Visible="false" runat="server" Text='<%# Eval("ToVeId") %>' />
                                    <asp:Label ID="RequestFromLabel" CssClass="emphasis" runat="server" Text="" /><br />
                                    has offered to swap a<br />
                                    <asp:Label CssClass="emphasis" ID="OtherVeLabel" runat="server" Text="" /><br />
                                    for your<br />
                                    <asp:Label ID="MyVeLabel" CssClass="emphasis" runat="server" Text="1998 Mustang GT" /><br />
                                    <center><asp:HyperLink NavigateUrl='<%# "~/MyProfile/RequestViewer.aspx?id=" + Eval("Id") + "&requestfrom=" + Eval("RequestFrom") + "&fromVeId=" + Eval("FromVeId") + "&toVeId=" + Eval("ToVeId") %>' ID="AcceptSwapRequest" CssClass="regsmbut" runat="server">Review Swap & Decide</asp:HyperLink>
                                    </center>
                                </asp:Panel>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </div>
    </div>
</tr>
</table>
</div>

<div class="homecarscontainer">
 <table>
  <tr>
    <td>
    <asp:Repeater DataSourceID="CarsDataSource" ID="Repeater1" runat="server" 
            onitemdatabound="Repeater1_ItemDataBound">
        <ItemTemplate>
            <asp:Label ID="VeId" Visible="false" runat="server" Text='<%# Eval("Id") %>' />
            <div class="myvehcontainer">
                <div class="imgcontainer">
                    <asp:Image ID="VeImg" ClientIDMode="Static" ImageUrl='' runat="server" />
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
  </tr>
 </table>
</div>

<asp:EntityDataSource ID="CarsDataSource" runat="server" 
 ConnectionString="name=SwapEntities" DefaultContainerName="SwapEntities" 
 EnableFlattening="False" EntitySetName="UserVehicles" EnableDelete="True"
 Where="it.UserName = @UN" OrderBy="it.VehicleMake">
    <WhereParameters>
        <asp:ProfileParameter Name="UN" PropertyName="UserName" Type="String" />
    </WhereParameters>
</asp:EntityDataSource>
<asp:EntityDataSource ID="RatingDataSource" runat="server" 
            ConnectionString="name=SwapEntities" DefaultContainerName="SwapEntities" 
            EnableFlattening="False" EntitySetName="SwapRatings"
            Where="it.UserName = @UN" OrderBy="it.Date desc">
    <WhereParameters>
        <asp:ProfileParameter Name="UN" PropertyName="UserName" Type="String" />
    </WhereParameters>
</asp:EntityDataSource>
<asp:EntityDataSource ID="RequestDataSource" runat="server" 
            ConnectionString="name=SwapEntities" DefaultContainerName="SwapEntities" 
            EnableFlattening="False" EntitySetName="RequestEvents"
            Where="it.RequestTo = @UN And it.DateFrom >= @Now And it.Accept Is Null" OrderBy="it.RequestDate desc">
    <WhereParameters>
        <asp:ProfileParameter Name="UN" PropertyName="UserName" Type="String" />
        <asp:ControlParameter Name="Now" ControlID="DateLabel" PropertyName="Text" Type="DateTime" />

    </WhereParameters>
</asp:EntityDataSource>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
<script src="../Scripts/Confirm-Alerts.js" type="text/javascript"></script>
<script type="text/javascript">

    $('.js-rate').click(function (e) {

        var dateFrom = new Date($(this).attr('js-fromdate'));
        var now = new Date();
        if (now < dateFrom) {
            ConfirmBox(e, "This swap isn't scheduled to occur until " + $(this).attr('js-fromdate') + ". Are you" +
                      " sure you would like to continue? If this swap has been cancelled, click OK, then click the " +
                      " 'Cancel this swap' link on the next page.");
        }
    });
    
</script>
</asp:Content>

