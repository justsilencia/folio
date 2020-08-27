<%@ Page Title="Credit Research Library | Credit Score Maestro" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="PDF-Library.aspx.cs" Inherits="Resources_PDF_Library" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="description" content="Free comprehensive credit repair library. Includes everything from recent legal updates to credit building strategies.."/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="container">
        <div class="col-lg-auto my-6">
            <div class="card wlgscreen-75 m-auto">
                <div class="card-body text-center">
                    <asp:Image AlternateText="Credit score maestro logo." ImageUrl="~/App_Themes/CSMUserX/Images/Logo.png" ID="Image3" runat="server" />
                    <h1>Credit Research Library</h1>
                </div>
                <div class="card-footer">
                    &nbsp;&nbsp;&nbsp;&nbsp;Our credit research library is a compilation of what we consider to be some of the most useful information
                    available in the industry. Whether you're a consumer looking to better your understanding of credit, or an
                    attorney looking to research the relevant law, this library is for you.
                </div>
            </div>
            <asp:Panel ID="PDFPanel" ClientIDMode="Static" runat="server">
                
            </asp:Panel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

