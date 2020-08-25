<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProfileIncomplete.ascx.cs" Inherits="Controls_ProfileIncomplete" %>

<asp:Panel ClientIDMode="Static" ID="FinishProPanel" runat="server">
  <asp:HyperLink ID="HyperLink12" NavigateUrl="~/MyProfile/EditProfile.aspx" runat="server">
      <div class="finishpronotice">
        Please complete your profile!
      </div>
  </asp:HyperLink>
</asp:Panel>