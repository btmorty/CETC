<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="SelectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <style>
        th, td {
            padding-left: 10px;
        padding-right: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        }
    </style>
<%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">Reports </h2>
                    <h3 class="text-center">Service</h3>
                </div>
                <hr>
            </div>
        </div>
    </div>
<%--//Client Selection--%>
    <div class="text-center">
          
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT CETC_INFO.Service, CETC_INFO.ClientID FROM CETC_INFO INNER JOIN Client ON CETC_INFO.ClientID = Client.ClientID">
    </asp:SqlDataSource>
          
        <asp:Label ID="lblSelectService" runat="server" Text="Please select a Service:"></asp:Label><br />
          
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Service" DataValueField="ClientID" Height="16px" Width="151px">
        </asp:DropDownList>
        
        <br />
        
    </div>
    <br />
    <br />
<%--//List View Output--%>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT CETC_INFO.Service, Client.* FROM Client INNER JOIN CETC_INFO ON Client.ClientID = CETC_INFO.ClientID"></asp:SqlDataSource>
        <asp:GridView ID="ClientGridView" AutoGenerateColumns="False" EmptyDataText="No data available." AllowPaging="True" HorizontalAlign="Center" runat="server" AllowSorting="True" OnRowCommand="ClientGridView_RowCommand" CellSpacing="5" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False" DataSourceID="SqlDataSource2" DataKeyNames="ClientID">

            <Columns>
                <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Race" HeaderText="Race" SortExpression="Race" />
                <asp:BoundField DataField="Religious_Affiliation" HeaderText="Religious_Affiliation" SortExpression="Religious_Affiliation" />
                <asp:BoundField DataField="Residential_Status" HeaderText="Residential_Status" SortExpression="Residential_Status" />
                <asp:BoundField DataField="Preferred_Language" HeaderText="Preferred_Language" SortExpression="Preferred_Language" />
                <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                <asp:BoundField DataField="Staff_Ratio" HeaderText="Staff_Ratio" SortExpression="Staff_Ratio" />
                <asp:BoundField DataField="DSPD" HeaderText="DSPD" SortExpression="DSPD" />
                <asp:BoundField DataField="SSI" HeaderText="SSI" SortExpression="SSI" />
                <asp:BoundField DataField="SSA" HeaderText="SSA" SortExpression="SSA" />
                <asp:BoundField DataField="Modes_Communication" HeaderText="Modes_Communication" SortExpression="Modes_Communication" />
                <asp:BoundField DataField="Diagnosis" HeaderText="Diagnosis" SortExpression="Diagnosis" />
                <asp:BoundField DataField="PhotoID" HeaderText="PhotoID" SortExpression="PhotoID" />
                <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
                <asp:BoundField DataField="DateModified" HeaderText="DateModified" SortExpression="DateModified" />
                <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" />
            </Columns>

<HeaderStyle HorizontalAlign="Center" Wrap="False"></HeaderStyle>
            <RowStyle CssClass="tablePadding" HorizontalAlign="Center" Wrap="False" />
        </asp:GridView>
</asp:Content>

