<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="MyProfile_EditProfile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="http://www.carqueryapi.com/js/carquery.0.3.4.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <center>
<table><tr><td>
<div class="editprocol1">
<table id="LayoutTable" class="layouttbl">
    <tr>
        <td>
            <table id="Col1">
                <tr>
                    <td colspan="2" align="center">
                        <h1><asp:Label ID="UserName" runat="server" /></h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="First Name:" />
                    </td>
                    <td>
                        <asp:TextBox ClientIDMode="Static" MaxLength="15" placeholder="First name." ID="FirstName" runat="server" />
                        <asp:Label runat="server" ClientIDMode="Static" ID="FirstNameValid" CssClass="none" Text="A <b>first name</b> or <b>alias</b> is required." />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Last Name:" />
                    </td>
                    <td>
                        <asp:TextBox ClientIDMode="Static" MaxLength="15" placeholder="Last name." ID="LastName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Email:" />
                    </td>
                    <td>
                        <asp:TextBox ClientIDMode="Static" MaxLength="40" placeholder="Email." ID="Email" runat="server" />
                        <asp:Label CssClass="none" ClientIDMode="Static" ID="EmailValidBox" runat="server" Text="Correct email format: <b>myEmail@provider.com</b>" />
                        <asp:RegularExpressionValidator ControlToValidate="Email" ValidationExpression='\w+([-+.&apos;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*' Display="None" ID="RegEx" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="ZipLabel" runat="server" Text="Zip:" />
                    </td>
                    <td>
                        <asp:TextBox ClientIDMode="Static" MaxLength="5" placeholder="Zip Code." ID="Zip" runat="server" />
                        <asp:Label CssClass="none" ClientIDMode="Static" ID="ZipValidBox" runat="server" Text="Please enter your <b>zip code</b>." />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="City:" />
                    </td>
                    <td>
                        <asp:TextBox ClientIDMode="Static" MaxLength="30" placeholder="City" ID="City" runat="server" />
                        <asp:Label CssClass="none" ClientIDMode="Static" ID="CityValidBox" runat="server" Text="Please enter your <b>city</b>." />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="State:" />
                    </td>
                    <td>
                        <asp:DropDownList ID="State" ClientIDMode="Static" runat="server">
                <asp:ListItem>AL</asp:ListItem><asp:ListItem>AK</asp:ListItem><asp:ListItem>AZ</asp:ListItem>
                <asp:ListItem>AR</asp:ListItem><asp:ListItem>CA</asp:ListItem><asp:ListItem>CO</asp:ListItem>
                <asp:ListItem>CT</asp:ListItem><asp:ListItem>DE</asp:ListItem><asp:ListItem>DC</asp:ListItem>
                <asp:ListItem>FL</asp:ListItem><asp:ListItem>GA</asp:ListItem><asp:ListItem>HI</asp:ListItem>
                <asp:ListItem>ID</asp:ListItem><asp:ListItem>IL</asp:ListItem><asp:ListItem>IN</asp:ListItem>
                <asp:ListItem>IA</asp:ListItem><asp:ListItem>KS</asp:ListItem><asp:ListItem>KY</asp:ListItem>
                <asp:ListItem>LA</asp:ListItem><asp:ListItem>ME</asp:ListItem><asp:ListItem>MD</asp:ListItem>
                <asp:ListItem>MA</asp:ListItem><asp:ListItem>MI</asp:ListItem><asp:ListItem>MN</asp:ListItem>
                <asp:ListItem>MS</asp:ListItem><asp:ListItem>MO</asp:ListItem><asp:ListItem>MT</asp:ListItem>
                <asp:ListItem>NE</asp:ListItem><asp:ListItem>NV</asp:ListItem><asp:ListItem>NH</asp:ListItem>
                <asp:ListItem>NJ</asp:ListItem><asp:ListItem>NM</asp:ListItem><asp:ListItem>NY</asp:ListItem>
                <asp:ListItem>NC</asp:ListItem><asp:ListItem>ND</asp:ListItem><asp:ListItem>OH</asp:ListItem>
                <asp:ListItem>OK</asp:ListItem><asp:ListItem>OR</asp:ListItem><asp:ListItem>PA</asp:ListItem>
                <asp:ListItem>RI</asp:ListItem><asp:ListItem>SC</asp:ListItem><asp:ListItem>SD</asp:ListItem>
                <asp:ListItem>TN</asp:ListItem><asp:ListItem>TX</asp:ListItem><asp:ListItem>UT</asp:ListItem>
                <asp:ListItem>VT</asp:ListItem><asp:ListItem>VA</asp:ListItem><asp:ListItem>WA</asp:ListItem>
                <asp:ListItem>WV</asp:ListItem><asp:ListItem>WI</asp:ListItem><asp:ListItem>WY</asp:ListItem>
                </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="ValidatePhone" CssClass="phnotice" runat="server" Text="Phone # will only be given<br />to users you are swapping with." />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Phone:" />
                    </td>
                    <td>
                        <h3>(</h3> <asp:TextBox ClientIDMode="Static" MaxLength="3" ID="AreaCode" runat="server" /> <h3>)</h3> 
                        <asp:TextBox ClientIDMode="Static" MaxLength="3" ID="Num1" runat="server" /> -
                        <asp:TextBox ClientIDMode="Static" MaxLength="4" ID="Num2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="PersImage" ClientIDMode="Static" Visible="false" runat="server" /> 
                        <asp:Label ID="ImgNoticeLabel" CssClass="phnotice" runat="server" Text="We recommend uploading a<br>personal image of yourself<br>in order help recognize each<br> other when swapping." />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="SelfImgLabel" runat="server" Text="Self Img:" />
                    </td>
                    <td>
                        <asp:FileUpload ID="PersImgUpload" runat="server" /> 
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button CausesValidation="false" ClientIDMode="Static" ID="SaveProBut" CssClass="reglgbut" runat="server" 
                            Text="Update Profile" onclick="SaveProBut_Click" />
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <table id="Col2">
                
            </table>
        </td>
    </tr>
</table>
</div>

<div class="editprocol2">
    <div class="currentcars">
    <h1>myRides</h1>
        <asp:GridView ShowHeader="false" GridLines="None" 
             AutoGenerateColumns="false" DataSourceID="CarsDataSource" 
             ID="CarsGridView" runat="server" DataKeyNames="Id" 
             onrowdeleted="CarsGridView_RowDeleted" 
             onrowcommand="CarsGridView_RowCommand" 
             onrowdatabound="CarsGridView_RowDataBound">
        <EmptyDataTemplate>
            <div class="nocars">You haven't added any rides yet.<br /> Upload one now to get started!</div>
        </EmptyDataTemplate>
        <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <div class="imgview">
                    <asp:Label ID="VehicleId" Visible="false" runat="server" Text='<%# Eval("Id") %>' />
                    <asp:Image ID="MainVeImg" ClientIDMode="Static" ImageUrl='' runat="server" />
                    <asp:Label ID="HoverLabel" CssClass="ismainimg editimg" ClientIDMode="Static" runat="server" Text="Hover to edit" />
                    <asp:Label ID="HoverLabelMobile" CssClass="ismainimg editimg" ClientIDMode="Static" runat="server" Text="Click to edit" />
                    <div class="mask mask1"></div>
                    <div class="mask mask2"></div>
                    <div class="content" ID="CarInfo">
                        <label class="loginbut" id="EditRideBut" data-modal-id='<%#Eval("Id") %>'>Edit</label>&nbsp;&nbsp;
                        <asp:HyperLink CssClass="loginbut" ID="EditRideLink" NavigateUrl='<%# "~/MyProfile/M-EditVehicle.aspx?veid=" + Eval("Id") %>' ClientIDMode="Static" runat="server">Edit</asp:HyperLink>
                        <asp:Button CssClass="loginbut js-deleteride" ID="DeleteRideBut" CommandArgument='<%# Eval("Id") %>' CommandName="DeleteVehicle" CausesValidation="false" runat="server" Text="Delete" />
                        <hr />
                        <div>
                            <asp:Label ID="CarYear" runat="server" Text='<%# Eval("VehicleYear") %>' />
                            <asp:Label ID="CarMake" runat="server" Text='<%# Eval("VehicleMake") %>' />
                            <asp:Label ID="CarModel" runat="server" Text='<%# Eval("VehicleModel") %>' />
                        </div>
                    </div>
                </div>
                <div class="modalbox editcarmodal" id='<%#Eval("Id") %>'>
                <label class="js-close close">x</label>
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="ModalMainImg" ImageUrl='' runat="server" />
                                <asp:Label ID="MainVeLabel" CssClass="ismainimg" Text="Main Vehicle Image" ClientIDMode="Static" runat="server" />
                            </td>
                        </tr>
                    </table>
                    <table class="edittbl">
                        <tr>
                            <td colspan="2">
                                <b>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("VehicleYear") %>' />,
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("VehicleMake") %>' />
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("VehicleModel") %>' />
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Miles:
                            </td>
                            <td>
                                <asp:TextBox ID="EditMiles" runat="server" Text='<%#Eval("VehicleMiles") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Desc:
                            </td>
                            <td>
                                <asp:TextBox Text='<%#Eval("VehicleDescription") %>' ClientIDMode="Static" placeholder="Enter a short description of your vehicle." ID="EditDesc" MaxLength="300" runat="server" TextMode="MultiLine" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                               Add Img:
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button CausesValidation="false" CommandName="EditCar" CssClass="reglgbut" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' ID="EditCarBut" runat="server" Text="Save Changes" />
                                <asp:Label Visible="false" ID="CarId" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                        </tr>
                    </table>
                    <h3>Other Images</h3><br />
                    <asp:ListView ID="VeEditListView" runat="server"
                    onitemcommand="VeEditListView_ItemCommand" onitemdatabound="VeEditListView_ItemDataBound">
                    <EmptyDataTemplate>
                        <h3>No other images, add above.</h3>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <div class="editimgcontainer">
                        <asp:Label ID="ImgId" runat="server" Text='<%# Eval("Id") %>' Visible="false" />
                            <asp:Image ID="VeImg" ClientIDMode="Static" ImageUrl='' runat="server" /><br />
                            <asp:Button ID="BtnSetAsMain" CausesValidation="false" CommandName="SetAsMain" CommandArgument='<%# Eval("VehicleId") + "," + Eval("Id") %>' CssClass="regsmbut" runat="server" Text="Set as Main Image" />
                            <asp:Button ID="BtnDeleteImg" CausesValidation="false" CommandName="DeleteImg" CommandArgument='<%# Eval("VehicleId") + "," + Eval("Id") %>' CssClass="regsmbut btndeleteimg" runat="server" Text="Delete" />
                            <br /><br />
                        </div>
                    </ItemTemplate>
                    </asp:ListView>
                </div>
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="CarsDataSource" runat="server" 
            ConnectionString="name=SwapEntities" DefaultContainerName="SwapEntities" 
            EnableFlattening="False" EntitySetName="UserVehicles" EnableDelete="True"
            Where="it.UserName = @UN" OrderBy="it.VehicleMake">
        <WhereParameters>
            <asp:ProfileParameter Name="UN" PropertyName="UserName" Type="String" />
        </WhereParameters>
        </asp:EntityDataSource>
    </div>
    <div class="newcar">
    <h1>Enter a New Ride</h1>
     <div class="carvaluebox">
     <h3>Vehicle Value Range</h3>
         <asp:RadioButtonList ClientIDMode="Static" RepeatDirection="Vertical" ID="ValueRange" runat="server">
            <asp:ListItem Value="1">$1,000 - $10,000</asp:ListItem>
            <asp:ListItem Value="2">$10,001 - $25,000</asp:ListItem>
            <asp:ListItem Value="3">$25,001 - $50,000</asp:ListItem>
            <asp:ListItem Value="4">$50,001 - $100,000</asp:ListItem>
            <asp:ListItem Value="5">$100,001 +</asp:ListItem>
         </asp:RadioButtonList>
         <asp:RequiredFieldValidator Text="<b>Vehicle Value Range</b> is required." 
         ControlToValidate="ValueRange" CssClass="validboxvizrad" ID="RequiredFieldValidator3" runat="server" />
     </div>
        <table>
            <tr>
                <td>
                    <asp:Label CssClass="validbox" ClientIDMode="Static" ID="MakeValidBox" runat="server" Text="Enter your vehicle <b>type, make, model and year</b>." />
                    <asp:DropDownList ID="VehicleType" ClientIDMode="Static" runat="server">
                        <asp:ListItem>Type</asp:ListItem>
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
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="VehicleYear" ClientIDMode="Static" runat="server">
                        <asp:ListItem>Year</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ClientIDMode="Static" ID="InjectYear" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="VehicleMake" ClientIDMode="Static" runat="server">
                        <asp:ListItem>Make</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ClientIDMode="Static" ID="InjectMake" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="VehicleModel" ClientIDMode="Static" runat="server">
                        <asp:ListItem>Model</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ClientIDMode="Static" ID="InjectModel" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="VehicleMiles" ClientIDMode="Static" MaxLength="7" placeholder="Vehicle mileage." runat="server" />
                    <asp:Label CssClass="none" ClientIDMode="Static" ID="MilesValidBox" runat="server" Text="Enter your vehicle <b>mileage</b>." />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ClientIDMode="Static" placeholder="Enter a short description of your vehicle." ID="VehicleDesc" MaxLength="300" runat="server" TextMode="MultiLine" />
                    <asp:Label CssClass="none" ClientIDMode="Static" ID="DescValidBox" runat="server" Text="Enter a short <b>vehicle description</b>." />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator CssClass="validboxviz" ControlToValidate="FileUpload1" Text="A <b>photo</b> of your vehicle is required." ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" />
                    <asp:CustomValidator CssClass="validboxviz" ID="ImgValid" runat="server" ErrorMessage="<b>Photo</b> must have <b>.jpg</b> or <b>.jpeg</b> extension." />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <select id="car-model-trims" style="display: none;"></select>
                    <asp:Button ClientIDMode="Static" CssClass="reglgbut" ID="SaveNewCar" runat="server" 
                        Text="Save New Car" onclick="SaveNewCar_Click" />
                </td>
            </tr>
        </table>
    </div>
</div>
</td></tr></table>
</center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
    <script type="text/javascript" src="../Scripts/JS-PageEffects.js"></script>
    <script type="text/javascript">
        $('#VehicleMake').attr("id", "car-makes");
        $('#VehicleModel').attr("id", "car-models");
        $('#VehicleYear').attr("id", "car-years");
        CreateModalBox();
    </script>
    <script type="text/javascript" src="../Scripts/FormValidate-Functions.js"></script>
    <script src="../Scripts/Confirm-Alerts.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $('.js-deleteride').click(function (e) {
                ConfirmBox(e, "Are you sure you'd like to completely remove this vehicle from your profile?");
            });
            $('#Email').keyup(checkValidEmail);

            var carquery = new CarQuery();
            carquery.init();
            carquery.initYearMakeModelTrim('car-years', 'car-makes', 'car-models', 'car-model-trims');

            $('#SaveNewCar').click(function () {

                $('#InjectYear').val($('#car-years').val());
                $('#InjectMake').val($('#car-makes').val());
                $('#InjectModel').val($('#car-models').val());
            });

        });
    </script>
</asp:Content>

