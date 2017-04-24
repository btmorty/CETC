<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Coordinator.aspx.cs" Inherits="SelectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <style>
        th, td {
            padding-left: 10px;
        padding-right: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        }
    </style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT CETC_INFO.Coordinator FROM CETC_INFO INNER JOIN Client ON CETC_INFO.ClientID = Client.ClientID">
    </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT Client.First_Name, Client.Last_Name, Client.Status, CETC_INFO.Coordinator FROM Client INNER JOIN CETC_INFO ON Client.ClientID = CETC_INFO.ClientID"></asp:SqlDataSource>
<%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">Reports </h2>
                    <h3 class="text-center">Coordinator</h3>
                </div>
                <hr>
            </div>
        </div>
    </div>
<%--//Client Selection--%>
    <div class="text-center">
          
        <asp:Label ID="lblSelectCoordinator" runat="server" Text="Please select a Coordinator:"></asp:Label><br />
          
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Coordinator" DataValueField="CECTID" Height="16px" Width="151px">
        </asp:DropDownList>
        
    </div>
    <br />
    <br />
<%--//List View Output--%>
        <asp:GridView ID="ClientGridView" AutoGenerateColumns="False" EmptyDataText="No data available." AllowPaging="True" HorizontalAlign="Center" runat="server" AllowSorting="True" OnRowCommand="ClientGridView_RowCommand" CellSpacing="5" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False" DataSourceID="SqlDataSource2">

            <Columns>
                <asp:BoundField DataField="Coordinator" HeaderText="Coordinator" SortExpression="Coordinator" />
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>

<HeaderStyle HorizontalAlign="Center" Wrap="False"></HeaderStyle>
            <RowStyle CssClass="tablePadding" HorizontalAlign="Center" Wrap="False" />
        </asp:GridView>
</asp:Content>

