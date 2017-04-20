<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReportsProvider.aspx.cs" Inherits="SelectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <style>
        th, td {
            padding-left: 10px;
        padding-right: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        }
    </style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [ClientID], [First_Name], [Last_Name], [Status] FROM [Client] WHERE ([Last_Name] LIKE @Last_Name + '%')">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="%" Name="Last_Name" SessionField="Selection" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">Reports Provider</h2>
                </div>
                <hr>
            </div>
        </div>
    </div>
    <%--//Client Selection--%>
    <div class="text-center">
        
    </div>
    <br />
    <br />
    <%--//List View Output--%>
        <asp:GridView ID="ClientGridView" AutoGenerateColumns="False" EmptyDataText="No data available." AllowPaging="True" HorizontalAlign="Center" runat="server" AllowSorting="True" OnRowCommand="ClientGridView_RowCommand" CellSpacing="5" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False">

<HeaderStyle HorizontalAlign="Center" Wrap="False"></HeaderStyle>
            <RowStyle CssClass="tablePadding" HorizontalAlign="Center" Wrap="False" />
        </asp:GridView>
</asp:Content>

