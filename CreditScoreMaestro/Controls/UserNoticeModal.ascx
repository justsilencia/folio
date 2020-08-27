<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserNoticeModal.ascx.cs" Inherits="Controls_UserNoticeModal" %>

<input id="modalnoticecheckbox" class="none" type="checkbox" />
<asp:Panel CssClass="modalnoticecontain" ID="ModalPanel" runat="server">
    <label class="modalexit" for="modalnoticecheckbox">X</label>
    <div class="modalnoticetxt">
        <asp:Label ID="TextLabel" runat="server" Text="" />
    </div>
</asp:Panel>