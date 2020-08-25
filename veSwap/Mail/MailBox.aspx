<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="MailBox.aspx.cs" Inherits="Mail_MailBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div class="inboxcontainer">
<h1>My Inbox</h1>
<table class="inboxtable">
    <asp:ListView ID="InboxListView" DataSourceID="InboxDataSource" runat="server" 
        onitemdatabound="InboxListView_ItemDataBound">
        <EmptyDataTemplate>
            <tr>
                <td class="inboxdesccell">
                    <br />
                    You have no messages in your mailbox at this time.
                    <br /><br />
                </td>
            </tr>
        </EmptyDataTemplate>
        <ItemTemplate>
          <tr>
            <td>
            <asp:HyperLink NavigateUrl='<%# "~/Mail/Messenger.aspx?from=" + Eval("UserFrom") %>' ID="HyperLink1" runat="server">
            <table><tr>
            <td align="left">
                <div class="containmsgimg">
                    <asp:Image ID="MsgImg" ImageUrl="~/App_Themes/SwapUserX/Images/EmptyImg.png" runat="server" />
                </div>
            </td>
            <td class="inboxdesccell">
                    You have 
                    <asp:Label ID="CountLabel" runat="server" Text="" />
                    new message(s) from
                    <asp:Label ID="UserLabel" runat="server" Text='<%# Eval("UserFrom") %>' />.
            </td>
            </tr></table>
            </asp:HyperLink>
            </td>
          </tr>
        </ItemTemplate>
    </asp:ListView>
    <asp:DataPager Visible="true" ClientIDMode="Static" PagedControlID="InboxListView" PageSize="5" ID="MailBoxDataPager" runat="server">
    <Fields>
        <asp:NextPreviousPagerField PreviousPageText="< Prev 5 &nbsp;&nbsp;&nbsp;" NextPageText="&nbsp;&nbsp;&nbsp; Next 5 >" ButtonType="Link" />
    </Fields>
    </asp:DataPager>
</table>
</div>
    <asp:SqlDataSource ID="InboxDataSource" runat="server" 
         ConnectionString="<%$ ConnectionStrings:SwapConn %>" 
         SelectCommand="Select * From Contact Where UserTo = @UN Order By LastReceived Desc">
         <SelectParameters>
            <asp:ProfileParameter Name="UN" PropertyName="UserName" Type="String" />
         </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

