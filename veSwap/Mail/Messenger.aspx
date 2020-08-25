<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="Messenger.aspx.cs" Inherits="Mail_Messenger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<center>
<div class="msgngrheader">
<h1>Messaging with <asp:Label ID="OtherUser" runat="server" /></h1>
</div>
<div class="containmsgimg">
   <asp:Image ID="MsgImg" ImageUrl="~/App_Themes/SwapUserX/Images/EmptyImg.png" runat="server" />
</div>
</center>
<div id="m-wrapper" class="m-wrapper optiscroll">
<table class="messengertableoutermost">
    <asp:ListView DataSourceID="MsgDataSource" ID="MessengerListView" 
        runat="server" onitemdatabound="MessengerListView_ItemDataBound">
        <ItemTemplate>
            <tr>
                <td align="center">
                    <asp:Panel ID="MsgPanel" runat="server">
                    <asp:Label ID="Date" runat="server" Text='<%# DateTime.Parse(Eval("When").ToString()).ToShortDateString() %>' />
                    @
                    <asp:Label ID="Time" runat="server" Text='<%# DateTime.Parse(Eval("When").ToString()).ToShortTimeString() %>' />
                    <br />
                        <asp:Label ID="MsgIsFrom" Visible="false" runat="server" Text='<%# Eval ("UserFrom") %>' />
                        <asp:Label ID="MsgId" runat="server" Visible="false" Text='<%# Eval("UId") %>' />
                        <asp:Label ID="IsRead" runat="server" Visible="false" Text='<%# Eval("IsRead") %>' />
                        <asp:Label ID="LblMsg" runat="server" Text='<%# Eval("Message") %>' />
                    </asp:Panel>
                </td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
    <tr class="js-insertmsg">
        <td class="msgbutcell" align="center">
            <asp:TextBox placeholder="Type new message here." ID="NewMsgInput" ClientIDMode="Static" TextMode="MultiLine" runat="server" />
            <br /><br />
            <asp:Image ImageUrl="~/App_Themes/SwapUserX/Images/Loader-Bar.gif" CssClass="msgloader" ID="MsgLoaderImg" runat="server" />
            <a href="javascript:void(0);" id="SendMsgBut" class="reglgbut js-sendmsg">Send Message</a>
        </td>
    </tr>
</table>
</div>
    <asp:SqlDataSource ID="MsgDataSource" runat="server" 
         ConnectionString="<%$ ConnectionStrings:SwapConn %>" 
         SelectCommand="Select e.UId, s.Message, e.UserFrom, e.UserTo, e.[When], e.IsRead
                        From SentMessage s Inner Join MsgEvent e On s.UId = e.UId
                        Where e.UserFrom = @UN And e.UserTo = @OU
                        Union
                        Select e.UId, r.Message, e.UserFrom, e.UserTo, e.[When], e.IsRead
                        From RecMessage r Inner Join MsgEvent e On r.UId = e.UId
                        Where e.UserFrom = @OU And e.UserTo = @UN
                        Order By e.[When] Asc"
         DeleteCommand="DELETE MsgEvent WHERE UId = @UId">
         <DeleteParameters>
            <asp:Parameter Name="UId" Type="String" />
        </DeleteParameters>
         <SelectParameters>
            <asp:ProfileParameter Name="UN" PropertyName="UserName" Type="String" />
            <asp:QueryStringParameter Name="OU" QueryStringField="from" Type="String" />
         </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
<asp:Label ID="JsMsgFrom" runat="server" Text="" ClientIDMode="Static" />
<asp:Label ID="JsMsgTo" runat="server" Text="" ClientIDMode="Static" />
<script type="text/javascript">
    $(document).ready(function () {
        $('#JsMsgFrom, #JsMsgTo, .msgloader').hide();
        InitializeConvoUpdater();
    });
    
</script>
</asp:Content>

