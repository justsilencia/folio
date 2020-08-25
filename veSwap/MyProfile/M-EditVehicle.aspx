<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="M-EditVehicle.aspx.cs" Inherits="MyProfile_M_EditVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div id="contain">

<table class="editvemobile">
    <tr>
        <td align=center>
            <asp:Label ID="VeInfo" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="MainVeImg" runat="server" />
            <asp:Label ID="IsMainLabel" runat="server" CssClass="ismainimg" Text="Main Vehicle Image" />
        </td>
    </tr>
    <tr>
        <td align=center><br />Other Images</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ShowHeader="false" AutoGenerateColumns="false" ID="GridView1" runat="server" 
                onrowdatabound="GridView1_RowDataBound" 
                onrowcommand="GridView1_RowCommand">
                <EmptyDataTemplate>
                    <h3>No other images, add below.</h3>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="ImgId" runat="server" Text='<%# Eval("Id") %>' Visible="false" />
                        <asp:Label ID="VeId" runat="server" Text='<%# Eval("VehicleId") %>' Visible="false" />
                        <asp:Image ID="VeImg" ClientIDMode="Static" ImageUrl='' runat="server" />
                        <asp:Button ID="BtnSetAsMain" CommandName="SetAsMain" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' CssClass="regsmbut" runat="server" Text="Set as Main Image" />
                        <asp:Button ID="BtnDeleteImg" CommandName="DeleteImg" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' CssClass="regsmbut btndeleteimg" runat="server" Text="Delete" />
                        <br /><br />
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align=center>
            <asp:Label Visible="false" ID="VeGuidLabel" runat="server" Text="" />
            Add Image (Max 3 per vehicle):<br />
            <asp:FileUpload Font-Size="72px" ID="FileUpload1" runat="server" />
            <asp:Button CssClass="reglgbut" ID="SaveImgBut" runat="server" 
                Text="Save Image" onclick="SaveImgBut_Click" />
        </td>
    </tr>
</table>

</div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

