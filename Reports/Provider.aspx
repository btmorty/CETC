﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Provider.aspx.cs" Inherits="SelectClient" %>

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
                    <h3 class="text-center">Provider</h3>
                </div>
                <hr>
            </div>
        </div>
    </div>
    <%--//Client Selection--%>
    <div class="text-center">
          
        <asp:Label ID="lblSelectProvider" runat="server" Text="Please select a Provider:"></asp:Label><br />
          
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT DISTINCT [Provider] FROM [ProviderNonMed]">
    </asp:SqlDataSource>
          
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Provider" DataValueField="Provider" Height="16px" Width="151px" AutoPostBack="True" AppendDataBoundItems="True">
        <asp:ListItem>--</asp:ListItem>
        </asp:DropDownList>
        
        <br />
        
    </div>
    <br />
    <br />
    <%--//Grid View Output--%>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT Client.ClientID, Client.First_Name, Client.Last_Name, Client.Status, Client.DOB, Client.Age, Client.Address, Client.City, Client.State, Client.Zip, Client.Phone, Client.Email, Client.Sex, Client.Race, Client.Religion, Client.Residential_Status, Client.Preferred_Language, Client.SSN, Client.Staff_Ratio, Client.DSPD, Client.SSI, Client.SSA, Client.Modes_Communication, Client.Diagnosis, Client.DateCreated, Client.DateModified, Client.ModifiedBy, ProviderNonMed.Provider FROM Client INNER JOIN ProviderNonMed ON Client.ClientID = ProviderNonMed.ClientID WHERE (ProviderNonMed.Provider = @Provider)">
         <SelectParameters>
             <asp:ControlParameter ControlID="DropDownList1" Name="Provider" PropertyName="SelectedValue" />
         </SelectParameters>
    </asp:SqlDataSource>
        <asp:GridView ID="ClientGridView" AutoGenerateColumns="False" EmptyDataText="Please select a Provider." AllowPaging="True" HorizontalAlign="Center" runat="server" AllowSorting="True" OnRowCommand="ClientGridView_RowCommand" CellSpacing="5" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="ClientGridView_SelectedIndexChanged" DataKeyNames="ClientID">

            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-primary btn-xs" CausesValidation="false" CommandName="Select" Text="Select" NavigateURL="" CommandArgument='<%# Eval("ClientID") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Provider" HeaderText="Provider" SortExpression="Provider" />
                <asp:BoundField DataField="ClientID" HeaderText="Client ID" InsertVisible="False" ReadOnly="True" SortExpression="ClientID" Visible="False" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />               
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
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
                <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                <asp:BoundField DataField="Residential_Status" HeaderText="Residential Status" SortExpression="Residential_Status" />
                <asp:BoundField DataField="Preferred_Language" HeaderText="Preferred Language" SortExpression="Preferred_Language" />
                <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                <asp:BoundField DataField="Staff_Ratio" HeaderText="Staff Ratio" SortExpression="Staff_Ratio" />
                <asp:BoundField DataField="DSPD" HeaderText="DSPD" SortExpression="DSPD" />
                <asp:BoundField DataField="SSI" HeaderText="SSI" SortExpression="SSI" />
                <asp:BoundField DataField="SSA" HeaderText="SSA" SortExpression="SSA" />
                <asp:BoundField DataField="Modes_Communication" HeaderText="Modes of Communication" SortExpression="Modes_Communication" />
                <asp:BoundField DataField="Diagnosis" HeaderText="Diagnosis" SortExpression="Diagnosis" />
                <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
                <asp:BoundField DataField="DateModified" HeaderText="Date Modified" SortExpression="DateModified" />
                <asp:BoundField DataField="ModifiedBy" HeaderText="Modified By" SortExpression="ModifiedBy" />
            </Columns>

<HeaderStyle HorizontalAlign="Center" Wrap="False"></HeaderStyle>
            <RowStyle CssClass="tablePadding" HorizontalAlign="Center" Wrap="False" />
        </asp:GridView>
</asp:Content>

