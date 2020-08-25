<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserX.master" AutoEventWireup="true" CodeFile="RequestRating.aspx.cs" Inherits="MyProfile_RequestRating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <br />
<center>
<h3>Who did you swap with?</h3>
    <asp:ListView OnItemDataBound="ListView1_ItemDataBound" DataSourceID="SwapListDataSource" ID="ListView1" runat="server">
        <EmptyDataTemplate>
                        <h2>
                            You don't have any users in your swap list. Search for users in 
                            your area to begin trading and building your Swap List!
                        </h2>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                    <div class="swapraterequest">
                        <table>
                        <tr>
                           <td id='<%# Eval("UserOther") %>'><asp:Label CssClass="js-get" ID="SwapUserLabel" runat="server" Text='<%# Eval("UserOther") %>' />
                        </tr>
                        <tr>    
                           <td id='<%# Eval("UserOther") %>'><asp:Label ID="LastName" runat="server" Text="" />, <asp:Label ID="FirstName" runat="server" Text="" />
                        </tr>
                        <tr>
                           <td id='<%# Eval("UserOther") %>'><asp:Label ID="City" runat="server" Text="" />, <asp:Label ID="State" runat="server" Text="" />
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>        
                            <td><label class="regsmbut js-click" js-id='<%# Eval("UserOther") %>' id="RequestRating">Request Rating</label>                          
                        </tr>
                        </table>
                    </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table id="ListTbl" clientidmode="Static" cellspacing="0" cellpadding="10" border="0" runat="server">
                        <tr id="Tr1" runat="server">
                            <td id="Td2" runat="server">
                                <div id="itemPlaceholder" runat="server">
                                
                                </div>
                            </td>
                        </tr>
                        </table>
                    </LayoutTemplate>
    </asp:ListView>
    <asp:Button ID="SendRequestBut" ClientIDMode="Static" runat="server" 
        CssClass="none" Text="Send Rating Request" onclick="SendRequestBut_Click" />
    <asp:TextBox CssClass="none" ClientIDMode="Static" Text="" ID="UserNameValue" runat="server" />
    <br /><br />
    <asp:TextBox required MaxLength="10" ID="DateSwapped" placeholder="Date of actual swap." CssClass="none" ClientIDMode="Static" runat="server" />
</center>
    <asp:EntityDataSource ID="SwapListDataSource" runat="server" 
            ConnectionString="name=SwapEntities" DefaultContainerName="SwapEntities" 
            EnableFlattening="False" EntitySetName="SwapLists"
            Where="it.UserMain = @UN" OrderBy="it.UserOther">
    <WhereParameters>
        <asp:ProfileParameter Name="UN" PropertyName="UserName" Type="String" />
    </WhereParameters>
</asp:EntityDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpFooter" Runat="Server">
    <script type="text/javascript" src="../Scripts/jquery-ui.min.js"></script>
<script type="text/javascript">

    $('.js-click').click(function () {

        $('.swapraterequest').slideUp(900);
        var un = $(this).attr('js-id');
        var $table = $(this).closest('table');
        var $tds = $table.find('td#' + un);
        var ap;

        $('#SendRequestBut').attr('class', 'reglgbut');
        $('h3').text("When did you swap?");
        $('#MidContainer').append("</br>");
        $.each($tds, function () {
            ap = "<center><div class=mimicinputlabel>" + $(this).text() + "</div></br>";
            $('#MidContainer').append(ap);
        });

        $('#UserNameValue').attr('value', un);
        $('#DateSwapped').attr("class", "");
        $('#DateSwapped').datepicker();
    });
</script>    
</asp:Content>

