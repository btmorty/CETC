<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Provider.aspx.cs" Inherits="SelectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <style>
        th, td {
            padding-left: 10px;
        padding-right: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        }
    </style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT Client.First_Name, Client.Last_Name, Client.Status, Medical_Provider.Specialty, Medical_Provider.FirstName AS Expr3, Medical_Provider.LastName AS Expr4, Medical_Provider.Email AS Expr5, Medical_Provider.Phone, Client.ClientID, Medical_Provider.ProviderID, Medical_Provider.ClientID AS Expr1, Medical_Provider.AddressID FROM Client INNER JOIN Medical_Provider ON Client.ClientID = Medical_Provider.ClientID WHERE (Client.Last_Name LIKE @Last_Name + '%')">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="Last_Name" SessionField="Selection" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT Client.Last_Name, Client.First_Name, Client.Status, Medical_Provider.Specialty, Medical_Provider.LastName, ProviderNonMed.Provider FROM Client INNER JOIN Medical_Provider ON Client.ClientID = Medical_Provider.ClientID INNER JOIN ProviderNonMed ON Client.ClientID = ProviderNonMed.ClientID"></asp:SqlDataSource>
    <%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">Reports </h2>
                    <h3 class="text-center">Provider</h3>
                </div>
                <hr>
            </div>
        </div>
    </div>
    <%--//Client Selection--%>
    <div class="text-center">
          
        <asp:Label ID="lblSelectProvider" runat="server" Text="Please select a Provider:"></asp:Label><br />
          
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Last_Name" DataValueField="ProviderID" Height="16px" Width="151px">
        </asp:DropDownList>
        
    </div>
    <br />
    <br />
    <%--//List View Output--%>
        <asp:GridView ID="ClientGridView" AutoGenerateColumns="False" EmptyDataText="No data available." AllowPaging="True" HorizontalAlign="Center" runat="server" AllowSorting="True" OnRowCommand="ClientGridView_RowCommand" CellSpacing="5" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="ClientGridView_SelectedIndexChanged">

            <Columns>
                <asp:BoundField DataField="Specialty" HeaderText="Specialty" SortExpression="Specialty" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Provider" HeaderText="Provider" SortExpression="Provider" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>

<HeaderStyle HorizontalAlign="Center" Wrap="False"></HeaderStyle>
            <RowStyle CssClass="tablePadding" HorizontalAlign="Center" Wrap="False" />
        </asp:GridView>
</asp:Content>

