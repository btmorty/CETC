<%@ Page Title="Clients By State Report" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="ClientsByState.aspx.cs" Inherits="ClientsByState" %>

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
    <h3 class="text-center">Clients By State Report</h3>
    <hr />
    <%--//Client Selection--%>
    <div class="text-center">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT DISTINCT DD_State.State, Client.State AS State FROM DD_State INNER JOIN Client ON DD_State.State = Client.State"></asp:SqlDataSource>

        <asp:Label ID="lblSelectState" runat="server" Text="Please select a State:"></asp:Label>

        <asp:DropDownList ID="ddState1" runat="server" DataSourceID="SqlDataSource1" DataTextField="State" DataValueField="State1" OnDataBinding="Page_Load" AutoPostBack="True" AppendDataBoundItems="True">
            <asp:ListItem>--</asp:ListItem>
        </asp:DropDownList>
    </div>
    <br />
    <br />
    <%--//GridView Output--%>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [ClientID], [First_Name], [Last_Name], [Status], [DOB], [Age], [Address], [City], [State], [Zip], [Phone], [Email], [Sex], [Race], [Religion], [Residential_Status], [Preferred_Language], [SSN], [Staff_Ratio], [DSPD], [SSI], [SSA], [Modes_Communication], [Diagnosis], [DateCreated], [DateModified], [ModifiedBy] FROM [Client] WHERE ([State] = @State)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddState1" Name="State" PropertyName="SelectedValue" Type="String" DefaultValue="--" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto">
        <asp:GridView ID="ClientGridView" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" EmptyDataText="Please select a state." AllowPaging="True" HorizontalAlign="Center" runat="server" DataKeyNames="ClientID" AllowSorting="True" CellSpacing="5" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False" OnRowCommand="ClientGridView_RowCommand">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-primary btn-xs" CausesValidation="false" CommandName="Select" Text="Select" NavigateURL="" CommandArgument='<%# Eval("ClientID") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ClientID" HeaderText="Client ID" InsertVisible="False" ReadOnly="True" SortExpression="ClientID" Visible="False">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Race" HeaderText="Race" SortExpression="Race" />
                <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                <asp:BoundField DataField="Residential_Status" HeaderText="Residential Status" SortExpression="Residential_Status" />
                <asp:BoundField DataField="Preferred_Language" HeaderText="Preferred Language" SortExpression="Preferred_Language" />
                <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                <asp:BoundField DataField="Staff_Ratio" HeaderText="Staff Ratio" SortExpression="Staff_Ratio" />
                <asp:BoundField DataField="DSPD" HeaderText="DSPD" SortExpression="DSPD" />
                <asp:BoundField DataField="SSI" HeaderText="SSI" SortExpression="SSI" />
                <asp:BoundField DataField="SSA" HeaderText="SSA" SortExpression="SSA" />
                <asp:BoundField DataField="Modes_Communication" HeaderText="Modes Communication" SortExpression="Modes_Communication" />
                <asp:BoundField DataField="Diagnosis" HeaderText="Diagnosis" SortExpression="Diagnosis" />
                <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
                <asp:BoundField DataField="DateModified" HeaderText="DateModified" SortExpression="DateModified" />
                <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" />
            </Columns>
            <HeaderStyle HorizontalAlign="Center" Wrap="False"></HeaderStyle>
            <RowStyle CssClass="tablePadding" HorizontalAlign="Center" Wrap="False" />
        </asp:GridView>
    </asp:Panel>
    <br />
    <div class="text-center"> 
    <asp:LinkButton ID="btnExport" runat="server" CssClass="btn btn-primary" OnClick ="ExportToExcel"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span> Export To Excel</asp:LinkButton>
    </div>
</asp:Content>

