<%@ Page Title="Contact Us | Credit Score Maestro" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Resources_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="description" content="View our contact information."/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ColumnTwoRowOne" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div class="container">
        <div class="col-lg-auto my-6">
            <div class="card wlgscreen-75 m-auto">
                <div class="card-body text-center">
                    <asp:Image AlternateText="Credit score maestro logo." ImageUrl="~/App_Themes/CSMUserX/Images/Logo.png" ID="Image3" runat="server" />
                    <h2>Credit Score Maestro Contact Info</h2>
                    You're welcome to contact us for order inquiries or any other questions.
                </div>
                <div class="card-footer">
                    <table>
                        <tr>
                            <td>
                                Credit Score Maestro
                                PO Box 1125<br />
                                Tavares, FL <br />
                                32778
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>csm@creditscoremaestro.com</b>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            </div>
 </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

