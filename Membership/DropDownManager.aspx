<%@ Page Title="Edit Tables" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DropDownManager.aspx.cs" Inherits="SelectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <style>
        th, td {
            padding-left: 10px;
        padding-right: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        }
        .auto-style1 {
            width: 574px;
            height: 52px;
        }
    .auto-style2 {
        position: relative;
        min-height: 1px;
        float: left;
        width: 100%;
        left: 0px;
        top: -22px;
        padding-left: 15px;
        padding-right: 15px;
    }
    </style>
    <%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="auto-style2">
                <div class="jumbotron">
                    <h2 class="text-center">Drop Down List Manager</h2>
                    <h3 class="text-center">&nbsp;</h3>
                </div>
                <hr>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="sdsRace" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Race] FROM [DD_Race]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsRace0" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT DISTINCT * FROM [DD_Race] WHERE ([Race] = @Race)" InsertCommand="INSERT INTO [DD_Race]
VALUES (@Race)" UpdateCommand="UPDATE [DD_Race] SET [Race] = @Race
WHERE [Race] = @Race">
        <InsertParameters>
            <asp:Parameter Name="Race" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlRace" Name="Race" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Race" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsResStatus" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Residential_Status] FROM [DD_Residential_Status]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sdsPrefLang" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Preferred_Language] FROM [DD_Preferred_Language]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sdsReligion" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Religion] FROM [DD_Religion]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sdsService" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Service] FROM [DD_Service]">
            </asp:SqlDataSource>
            
<%--//Dropdown Selection--%>
    <div class="text-left">       
        <table>
        <tr>
            <td class="auto-style1">
            <asp:Label ID="lblRace" runat="server" Text="Race: "></asp:Label><br />
            <asp:DropDownList ID="ddlRace" runat="server" DataSourceID="sdsRace" DataTextField="Race" DataValueField="Race" Height="16px" Width="150px" AutoPostBack="True">
            </asp:DropDownList>
            </td>            
        
            <td class="auto-style1">
            <asp:Label ID="lblResStatus" runat="server" Text="Residential Status: "></asp:Label><br />
            <asp:DropDownList ID="ddlResStatus" runat="server" DataSourceID="sdsResStatus" DataTextField="Residential_Status" DataValueField="Residential_Status" Height="16px" Width="150px" AppendDataBoundItems="False">
            
            </asp:DropDownList>
            </td>
        
            <td class="auto-style1">
            <asp:Label ID="lblPrefLanguage" runat="server" Text="Preferred Language: "></asp:Label><br />
            <asp:DropDownList ID="ddPrefLanguage" runat="server" DataSourceID="sdsPrefLang" DataTextField="Preferred_Language" DataValueField="Preferred_Language" Height="16px" Width="150px" AppendDataBoundItems="False">
            
            </asp:DropDownList>
            </td>
       
            <td class="auto-style1">
            <asp:Label ID="lblReligion" runat="server" Text="Religion: "></asp:Label><br />
            <asp:DropDownList ID="ddlReligion" runat="server" DataSourceID="sdsReligion" DataTextField="Religion" DataValueField="Religion" Height="16px" Width="150px">
            
            </asp:DropDownList>
            </td>

            <td class="auto-style1">
            <asp:Label ID="lblService" runat="server" Text="CETC Service: "></asp:Label><br />
            <asp:DropDownList ID="ddlServices" runat="server" DataSourceID="sdsService" DataTextField="Service" DataValueField="Service" Height="16px" Width="150px" AppendDataBoundItems="False">
            
            </asp:DropDownList>
            </td>
       </tr>    

        <tr>
            <td>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="sdsRace0" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Race" HeaderText="Race" SortExpression="Race" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            </td>
            <td>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="sdsResStatus" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Residential_Status" HeaderText="Residential Status" SortExpression="Residential_Status" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            </td>
            <td>
            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="sdsPrefLang" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Preferred_Language" HeaderText="Preferred Language" SortExpression="Preferred_Language" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
                </td>
            <td>
            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="sdsReligion" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            </td>
            <td>
            <asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Service" DataSourceID="sdsService" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Service" HeaderText="Service" ReadOnly="True" SortExpression="Service" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>

             </td>
            </tr>
        </table>
     </div>
</asp:Content>
