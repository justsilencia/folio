<%@ Page Title="Free Credit Repair Forms | Credit Score Maestro" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="Form-Library.aspx.cs" Inherits="Resources_Form_Library" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="description" content="Free credit repair forms that will set you up to raise your credit score. All of our credit forms can be downloaded here."/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="container">
        <div class="col-lg-auto my-6">
            <div class="card wlgscreen-75 m-auto">
                <div class="card-body text-center">
                    <asp:Image AlternateText="Credit score maestro logo." ImageUrl="~/App_Themes/CSMUserX/Images/Logo.png" ID="Image3" runat="server" />
                    <h1>Credit Repair Forms</h1>
                </div>
                <div class="card-footer">
                    &nbsp;&nbsp;&nbsp;&nbsp;Our forms library is a compilation of what we consider to be some of the most useful forms
                    for consumers who are looking to take action and build great credit. Learn more about how to
                    use each of these forms
                    <asp:HyperLink NavigateUrl="https://www.amazon.com/Winning-Credit-Score-Game-Complete/dp/0999415301/ref=sr_1_1?ie=UTF8&qid=1539179263&sr=8-1&keywords=winning+the+credit+score+game" 
                        ID="HyperLink5" target="_child" runat="server">
                            by reading our book.
                    </asp:HyperLink>
                </div>
            </div>
                <asp:Panel ID="FormsPanel" ClientIDMode="Static" runat="server">
        
                </asp:Panel>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

