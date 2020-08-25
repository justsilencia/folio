<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="SearchHome.aspx.cs" Inherits="Search_SearchHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    <Services>
        <asp:ServiceReference Path="~/Services/UserService.asmx" />
    </Services>
</asp:ScriptManagerProxy>
<div class="searchmobileview">
    <label class="expandoptions">Expand Search Options</label>
    <label class="collapseoptions hidemobile">Collapse Search Options</label>
</div>
<div class="searchdesktopview">
      <dl>
        <dd class="hidemobile">
            <label>Zip code:</label>
        </dd>
        <dt>
            <asp:TextBox MaxLength="5" placeholder="Enter your zip." ID="Zip" runat="server" />
        </dt>
        <dt class="hidemobile"></dt>
        <dd class="hidemobile">
            <label>Search range:</label>
        </dd>
        <dt class="hidemobile">
            <asp:DropDownList ID="SearchRange" ClientIDMode="Static" runat="server">
                 <asp:ListItem Value="100">< 100 Miles</asp:ListItem>
                 <asp:ListItem Value="80">< 80 Miles</asp:ListItem>
                 <asp:ListItem Value="60">< 60 Miles</asp:ListItem>
                 <asp:ListItem Value="40">< 40 Miles</asp:ListItem>
                 <asp:ListItem Value="20">< 20 Miles</asp:ListItem>
            </asp:DropDownList>
        </dt>
        <dt class="hidemobile"></dt>
        <dd class="hidemobile">
            <label>Vehicle types:</label>
        </dd>
        <dt class="hidemobile">
        <asp:DropDownList ID="VehicleType" ClientIDMode="Static" runat="server">
            <asp:ListItem>All types</asp:ListItem>
            <asp:ListItem>Coup</asp:ListItem>
            <asp:ListItem>Sedan</asp:ListItem>
            <asp:ListItem>Convertible</asp:ListItem>
            <asp:ListItem>SUV</asp:ListItem>
            <asp:ListItem>Pickup</asp:ListItem>
            <asp:ListItem>Crossover</asp:ListItem>
            <asp:ListItem>Minivan</asp:ListItem>
            <asp:ListItem>Van</asp:ListItem>
            <asp:ListItem>Wagon</asp:ListItem>
        </asp:DropDownList>
        </dt>
        <dt class="hidemobile"></dt>
        <dd class="hidemobile">
            <label>Vehicle years:</label>
        </dd>
        <dt class="hidemobile">
        <b>From:</b>
        <asp:DropDownList ID="VehicleYearFrom" CssClass="js-minyear searchminyear" ClientIDMode="Static" runat="server">
             <asp:ListItem>All</asp:ListItem>
        </asp:DropDownList>
        <br />
        <b>To:</b>
        <asp:DropDownList ID="VehicleYearTo" CssClass="js-maxyear searchmaxyear" ClientIDMode="Static" runat="server">
             <asp:ListItem>All</asp:ListItem>
        </asp:DropDownList>
        </dt>
        <dt class="hidemobile"></dt>
        <asp:DropDownList Visible="false" ID="VehicleMake" ClientIDMode="Static" runat="server">
             <asp:ListItem>All makes</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList Visible="false" ID="VehicleModel" ClientIDMode="Static" runat="server">
             <asp:ListItem>All models</asp:ListItem>
        </asp:DropDownList>
        <dt></dt>
        <dt>
            <select id="car-model-trims" style="display: none;"></select>
            <asp:Button ID="SearchBtn" ClientIDMode="Static" CssClass="searchbut" runat="server" Text=" Search " 
                onclick="SearchBtn_Click" />
        </dt>
      </dl>
</div>
<asp:Label ID="ZipFromLabel" runat="server" Text="" Visible="false" />

<div class="searchresults">

<asp:Panel ID="DefaultPanel" CssClass="defaultpanel" runat="server">
    <asp:Image ImageUrl="~/App_Themes/SwapUserX/Images/Notice-Bubble.png" ID="Image1" runat="server" />
     Please enter a zip code, and any other optional info you prefer.
</asp:Panel>

<table>
    <asp:ListView ID="ListViewSearchResults" runat="server" 
        onitemdatabound="ListViewSearchResults_ItemDataBound">
        <EmptyDataTemplate>
            <tr>
                <td>
                    <h2>No vehicles were found near this ZIP code.</h2>
                </td>
            </tr>
        </EmptyDataTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <div class="searchmainresults">
                        <asp:Label ID="ValueCat" Visible="false" ClientIDMode="Static" runat="server" Text=<%# Eval("ValueCategory") %> />
                        <asp:Image ID="UserVeImage" CssClass="mainsearchimg" runat="server" />
                        <asp:Label ID="SwapRequestBtn" js-param1='<%# Profile.UserName %>' js-param2='<%# Eval("UserName") %>'
                         js-param3='<%# Eval("ValueCategory") %>' js-param4='<%# Eval("Id") %>' js-param5=''
                         CssClass="swapbtn" runat="server" Text="Swap Request" ClientIDMode="Static" />
                        <asp:Image ID="LoadingImage" CssClass="loadingimg" ClientIDMode="Static" ImageUrl="~/App_Themes/SwapUserX/Images/Loader-Bar.gif" runat="server" />
                        <div class="choosevehiclemodal">
                        <label class="js-close close">x</label>
                        <table><tr><td>
                            <asp:ListView DataSourceID="SqlData2" ID="ChooseVeListView" runat="server"
                            onitemdatabound="ChooseVeListView_ItemDataBound">
                                <ItemTemplate>
                                    <asp:Image ID="VeImgChoose" js-param5='<%# Eval("VehicleId") %>' CssClass="js-imgclick" runat="server" />
                                    <asp:Label ID="IdLabel" Text='<%# Eval("Id") %>' runat="server" Visible="false" />
                                </ItemTemplate>
                            </asp:ListView>
                        </td></tr></table>
                        <h3>Please click which vehicle you would like to offer.</h3>
                        </div>
                    </div>
                    <div class="searchextrascontainer">
                        <asp:Label ID="VeId" Visible="false" runat="server" Text='<%# Eval("Id") %>' />
                        <table>
                        <tr>
                            <asp:Repeater ID="ImgRepeater" runat="server">
                                <ItemTemplate>
                                    <td>
                                    <div class="xtraimages">
                                        <asp:Image ID="XtraImage" ImageUrl='<%#Eval("ImageUrl") %>' runat="server" />
                                    </div>
                                    </td>
                                </ItemTemplate>
                            </asp:Repeater>
                            <td valign=bottom>
                                <asp:Label ID="UserName" Visible="false" runat="server" Text='<%# Eval("UserName") %>' />
                                <asp:Label ID="ZipTo" Visible="false" runat="server" Text='<%# Eval("Zip") %>' />
                                <asp:Label ID="FirstName" Visible="true" runat="server" Text='<%# Eval("FirstName") %>' />'s
                                <br />
                                <h3><asp:Label ID="VeInfo" runat="server" Text='<%# Eval("VehicleMake") + " " + Eval("VehicleModel") %>' /></h3>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("VehicleYear") %>' />
                                <br />
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Zip") %>' />
                                &nbsp;(Distance: <asp:Label Font-Bold="true" ID="DistanceLbl" runat="server" Text="" /> <b>Miles</b>)
                                <div class="extrainforating">
                                    <h3>Rating:</h3>
                                    <asp:Label ID="RatingLabel" runat="server" Text="" />
                                </div>
                            </td>
                        </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
</table>
</div>
<asp:SqlDataSource ConnectionString='<%$ ConnectionStrings : SwapConn %>' ID="SearchDataSource1" runat="server" />
<asp:SqlDataSource ConnectionString='<%$ ConnectionStrings : SwapConn %>' ID="SqlData2" runat="server"
SelectCommand="Select v.Id, v.VehicleId from VeImage v Inner Join UserVehicle uv on v.VehicleId = uv.Id Where uv.UserName = @UN and IsMain = 'true'">
    <SelectParameters>
        <asp:ProfileParameter PropertyName="UserName" Name="UN" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
<script type="text/javascript" src="../Scripts/jquery-ui.min.js"></script>
<script type="text/javascript" src="../Scripts/SendSwapRequestScript.js"></script>

<script type="text/javascript">
    //$('#VehicleMake').attr("id", "car-makes");
    //$('#VehicleModel').attr("id", "car-models");
    //$('#VehicleYearFrom, #VehicleYearTo').attr("id", "car-years");
    $('.loadingimg').hide();

    SendSwapRequest();

    $('.expandoptions').click(function () {
        $('.expandoptions').hide();
        $('.collapseoptions').show();
        $('.collapseoptions').css({
            'display': 'inline-block'
        });
        $('.hidemobile').show();
    });
    $('.collapseoptions').click(function () {
        $('.collapseoptions').hide();
        $('.expandoptions').show();
        $('.hidemobile').hide();
    });
    var check = $('.searchmainresults').val();
    var checkScreen = screen.width;
    if (checkScreen < 768 && checkScreen > 414) {
        if (check !== undefined) {
            $('html, body').animate({ scrollTop: 700 }, 600);
        }
    }

    $(document).ready(function () {

        if ($('.js-minyear').val() > $('.js-maxyear').val()) {
            alert("Minimun year must be less than the maximum year");
        }
    });
</script>
</asp:Content>

