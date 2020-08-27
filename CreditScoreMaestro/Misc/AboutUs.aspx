<%@ Page Title="About Us | Credit Score Maestro" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Misc_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="description" content="Our credit repair resources will help you improve your credit score. Go to creditscoremaestro.com for free information."/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ColumnTwoRowOne" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div class="container">
        <div class="col-lg-auto my-6">
            <div class="card wlgscreen-75 m-auto">
                <div class="card-body text-center">
                    <asp:Image AlternateText="Credit score maestro logo." ImageUrl="~/App_Themes/CSMUserX/Images/Logo.png" ID="Image3" runat="server" />
                    <h1>Credit Score Maestro Mission Statement</h1>
                </div>
                <div class="card-footer">
                    &nbsp;&nbsp;&nbsp;&nbsp;At Credit Score Maestro, our mission is to fulfill our name. In English, Maestro means to be a 
                    master of an art. In Spanish, Maestro means teacher.
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;We are Winning the Credit Score Game, and our aim is to be masterful teachers for those 
                    striving to do their best. This task will be fulfilled by providing our readers and associates with 
                    knowledge of the game and the tools they need so they can apply them in every situation of your 
                    financial lives.
                </div>
            </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpFooter" Runat="Server">
</asp:Content>

