<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClientsByState.aspx.cs" Inherits="SelectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <style>
        th, td {
            padding-left: 10px;
        padding-right: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        }
    </style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT Client.First_Name, Client.Last_Name, Client.Status, Address.State FROM Client INNER JOIN Address ON Client.AddressID = Address.AddressID
WHERE @AddressID = AddressID">
        <SelectParameters>
            <asp:SessionParameter Name="AddressID" SessionField="AddressID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">Reports </h2>
                    <h3 class="text-center">Client By State </h3>
                </div>
                <hr>
            </div>
        </div>
    </div>
    <%--//Client Selection--%>
    <div class="text-center">
        
        <asp:Label ID="lblSelectState" runat="server" Text="Please select a State:"></asp:Label>
        
        <asp:DropDownList ID="ddState1" runat="server" OnSelectedIndexChanged="ddState1_SelectedIndexChanged"></asp:DropDownList>
    </div>
    <br />
    <br />
    <%--//List View Output--%>
        <asp:GridView ID="ClientGridView" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" EmptyDataText="No data available." AllowPaging="True" HorizontalAlign="Center" runat="server" DataKeyNames="ClientID" AllowSorting="True" OnRowCommand="ClientGridView_RowCommand" CellSpacing="5" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False">
            <Columns>
                <asp:BoundField DataField="ClientID" HeaderText="ClientID" InsertVisible="False" ReadOnly="True" SortExpression="ClientID" Visible="False" />
                <asp:BoundField DataField="AddressID" HeaderText="AddressID" SortExpression="AddressID" Visible="False" />
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>

<HeaderStyle HorizontalAlign="Center" Wrap="False"></HeaderStyle>
            <RowStyle CssClass="tablePadding" HorizontalAlign="Center" Wrap="False" />
        </asp:GridView>
</asp:Content>

