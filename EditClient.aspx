﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="EditClient.aspx.cs" Inherits="EditClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <%--CSS for Tables--%>
    <style>
        th, td {
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 5px;
            padding-bottom: 5px;
        }
    </style>
    <asp:SqlDataSource ID="DDStatusSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [StatusID], [Status] FROM [DD_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDStatesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [State] FROM [DD_State]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDRelationshipsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Relationship] FROM [DD_Relationship]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ClientSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [First_Name], [Last_Name], [Status], [DOB], [Age], [Address], [City], [State], [Zip], [Phone], [Email], [Sex], [Race], [Religious_Affiliation], [Residential_Status], [Preferred_Language], [SSN], [Staff_Ratio], [DSPD], [SSI], [SSA], [Modes_Communication], [Diagnosis], [PhotoID], [DateCreated], [DateModified], [ModifiedBy], [ClientID] FROM [Client] WHERE ([ClientID] = @ClientID)" UpdateCommand="UPDATE [Client] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Status] = @Status, [DOB] = @DOB, [Age] = @Age, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip, [Phone] = @Phone, [Email] = @Email, [Sex] = @Sex, [Race] = @Race, [Religious_Affiliation] = @Religious_Affiliation, [Residential_Status] = @Residential_Status, [Preferred_Language] = @Preferred_Language, [SSN] = @SSN, [Staff_Ratio] = @Staff_Ratio, [DSPD] = @DSPD, [SSI] = @SSI, [SSA] = @SSA, [Modes_Communication] = @Modes_Communication, [Diagnosis] = @Diagnosis, [PhotoID] = @PhotoID, [DateCreated] = @DateCreated, [DateModified] = @DateModified, [ModifiedBy] = @ModifiedBy WHERE [ClientID] = @ClientID">
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Int32" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter Name="Race" Type="String" />
            <asp:Parameter Name="Religious_Affiliation" Type="String" />
            <asp:Parameter Name="Residential_Status" Type="String" />
            <asp:Parameter Name="Preferred_Language" Type="String" />
            <asp:Parameter Name="SSN" Type="Int32" />
            <asp:Parameter Name="Staff_Ratio" Type="String" />
            <asp:Parameter Name="DSPD" Type="Int32" />
            <asp:Parameter Name="SSI" Type="Int32" />
            <asp:Parameter Name="SSA" Type="Int32" />
            <asp:Parameter Name="Modes_Communication" Type="String" />
            <asp:Parameter Name="Diagnosis" Type="String" />
            <asp:Parameter Name="PhotoID" Type="String" />
            <asp:Parameter Name="DateCreated" Type="DateTime" />
            <asp:Parameter Name="DateModified" Type="DateTime" />
            <asp:Parameter Name="ModifiedBy" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ContactSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [ContactID], [FirstName], [LastName], [ClientID], [Relationship], [Emergency_Contact], [Email], [HomePhone], [MobilePhone], [WorkPhone], [Guardian], [Address], [City], [State], [Zip] FROM [Contact] WHERE ([ClientID] = @ClientID)" InsertCommand="INSERT INTO [Contact] ([FirstName], [LastName], [ClientID], [Relationship], [Emergency_Contact], [Email], [HomePhone], [MobilePhone], [WorkPhone], [Guardian], [Address], [City], [State], [Zip]) VALUES (@FirstName, @LastName, @ClientID, @Relationship, @Emergency_Contact, @Email, @HomePhone, @MobilePhone, @WorkPhone, @Guardian, @Address, @City, @State, @Zip)" UpdateCommand="UPDATE [Contact] SET [FirstName] = @FirstName, [LastName] = @LastName, [ClientID] = @ClientID, [Relationship] = @Relationship, [Emergency_Contact] = @Emergency_Contact, [Email] = @Email, [HomePhone] = @HomePhone, [MobilePhone] = @MobilePhone, [WorkPhone] = @WorkPhone, [Guardian] = @Guardian, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [ContactID] = @ContactID" DeleteCommand="DELETE FROM [Contact] WHERE [ContactID] = @ContactID">
        <DeleteParameters>
            <asp:Parameter Name="ContactID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Relationship" Type="String" />
            <asp:Parameter Name="Emergency_Contact" Type="Boolean" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="HomePhone" Type="String" />
            <asp:Parameter Name="MobilePhone" Type="String" />
            <asp:Parameter Name="WorkPhone" Type="String" />
            <asp:Parameter Name="Guardian" Type="Boolean" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Relationship" Type="String" />
            <asp:Parameter Name="Emergency_Contact" Type="Boolean" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="HomePhone" Type="String" />
            <asp:Parameter Name="MobilePhone" Type="String" />
            <asp:Parameter Name="WorkPhone" Type="String" />
            <asp:Parameter Name="Guardian" Type="Boolean" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Int32" />
            <asp:Parameter Name="ContactID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceCETCInfo" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [CECTID], [Service], [Coordinator], [DeptHead] FROM [CETC_INFO] WHERE ([ClientID] = @ClientID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="EvacSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" InsertCommand="INSERT INTO [Emergency_Evac] ([ClientID], [Emergency_Evac], [Evac_Address_1], [Evac_City_1], [Evac_State_1], [Evac_Zip_1], [Evac_City_2], [Evac_Address_2], [Evac_State_2], [Evac_Zip_2]) VALUES (@ClientID, @Emergency_Evac, @Evac_Address_1, @Evac_City_1, @Evac_State_1, @Evac_Zip_1, @Evac_City_2, @Evac_Address_2, @Evac_State_2, @Evac_Zip_2)" SelectCommand="SELECT [EmergencyID], [ClientID], [Emergency_Evac], [Evac_Address_1], [Evac_City_1], [Evac_State_1], [Evac_Zip_1], [Evac_City_2], [Evac_Address_2], [Evac_State_2], [Evac_Zip_2] FROM [Emergency_Evac] WHERE ([ClientID] = @ClientID)" UpdateCommand="UPDATE [Emergency_Evac] SET [ClientID] = @ClientID, [Emergency_Evac] = @Emergency_Evac, [Evac_Address_1] = @Evac_Address_1, [Evac_City_1] = @Evac_City_1, [Evac_State_1] = @Evac_State_1, [Evac_Zip_1] = @Evac_Zip_1, [Evac_City_2] = @Evac_City_2, [Evac_Address_2] = @Evac_Address_2, [Evac_State_2] = @Evac_State_2, [Evac_Zip_2] = @Evac_Zip_2 WHERE [EmergencyID] = @EmergencyID">
        <InsertParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Emergency_Evac" Type="String" />
            <asp:Parameter Name="Evac_Address_1" Type="String" />
            <asp:Parameter Name="Evac_City_1" Type="String" />
            <asp:Parameter Name="Evac_State_1" Type="String" />
            <asp:Parameter Name="Evac_Zip_1" Type="Int32" />
            <asp:Parameter Name="Evac_City_2" Type="String" />
            <asp:Parameter Name="Evac_Address_2" Type="String" />
            <asp:Parameter Name="Evac_State_2" Type="String" />
            <asp:Parameter Name="Evac_Zip_2" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Emergency_Evac" Type="String" />
            <asp:Parameter Name="Evac_Address_1" Type="String" />
            <asp:Parameter Name="Evac_City_1" Type="String" />
            <asp:Parameter Name="Evac_State_1" Type="String" />
            <asp:Parameter Name="Evac_Zip_1" Type="Int32" />
            <asp:Parameter Name="Evac_City_2" Type="String" />
            <asp:Parameter Name="Evac_Address_2" Type="String" />
            <asp:Parameter Name="Evac_State_2" Type="String" />
            <asp:Parameter Name="Evac_Zip_2" Type="Int32" />
            <asp:Parameter Name="EmergencyID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <%--Page Navigation--%>
    <style>
        .nav-tabs > li {
            float: none;
            display: inline-block;
            zoom: 1;
        }

        .nav-tabs {
            text-align: center;
        }
    </style>
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#FaceSheet">Face Sheet</a></li>
        <li><a data-toggle="tab" href="#HealthProfile">Health Profile</a></li>
    </ul>
    <%--//Validation Report--%>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <%--Face Sheet Panel--%>
    <div class="tab-content">
        <div id="FaceSheet" class="tab-pane fade in active">
        <h3 class="text-center">Face Sheet</h3>
            <hr />
            <%--//Data Entry Form--%>
            <div class="centerForm">
                <div class="row">
                    <div class="col-sm-9">
                        <asp:FormView runat="server" DataSourceID="ClientSqlDataSource" ID="ClientFormView" DataKeyNames="ClientID">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>Status:<br />
                                            <asp:TextBox ID="StatusLabel" runat="server" ReadOnly="true" Text='<%# Eval("Status") %>' /></td>
                                        <td>Date Created:<br />
                                            <asp:TextBox ID="DateCreatedLabel" runat="server" ReadOnly="true" Text='<%# Eval("DateCreated", "{0:MM/dd/yyyy}") %>' /></td>
                                        <td>Date Modified:<br />
                                            <asp:TextBox ID="DateModifiedLabel" runat="server" ReadOnly="true" Text='<%# Eval("DateModified", "{0:MM/dd/yyyy}") %>' /></td>
                                        <td>Last Modified By:<br />
                                            <asp:TextBox ID="LastModifiedByLabel" runat="server" ReadOnly="true" Text='<%# Eval("ModifiedBy") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>First Name:<br />
                                            <asp:TextBox ID="First_NameLabel" runat="server" ReadOnly="true" Text='<%# Eval("First_Name") %>' /></td>
                                        <td>Last Name:<br />
                                            <asp:TextBox ID="Last_NameLabel" runat="server" ReadOnly="true" Text='<%# Eval("Last_Name") %>' /></td>
                                        <td>Date of Birth:<br />
                                            <asp:TextBox ID="DOBLabel" runat="server" ReadOnly="true" Text='<%# Eval("DOB", "{0:MM/dd/yyyy}") %>' /></td>
                                        <td>Age:<br />
                                            <asp:TextBox ID="AgeLabel" runat="server" ReadOnly="true" Text='<%# Eval("Age") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="AddressLabel" runat="server" ReadOnly="true" Text='<%# Eval("Address") %>' /></td>
                                        <td>City:<br />
                                            <asp:TextBox ID="CityLabel" runat="server" ReadOnly="true" Text='<%# Eval("City") %>' /></td>
                                        <td>State:<br />
                                            <asp:TextBox ID="StateLabel" runat="server" ReadOnly="true" Text='<%# Eval("State") %>' />
                                        </td>
                                        <td>Zip Code:<br />
                                            <asp:TextBox ID="Zip_CodeLabel" runat="server" ReadOnly="true" Text='<%# Eval("Zip") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>Email:<br />
                                            <asp:TextBox ID="EmailLabel" runat="server" ReadOnly="true" Text='<%# Eval("Email") %>' /></td>
                                        <td>Phone:<br />
                                            <asp:TextBox ID="PhoneLabel" runat="server" ReadOnly="true" Text='<%# Eval("Phone") %>' /></td>
                                        <td>SSN:<br />
                                            <asp:TextBox ID="SSNLabel" runat="server" ReadOnly="true" Text='<%# Eval("SSN") %>' /></td>
                                        <td>Sex:<br />
                                            <asp:TextBox ID="SexLabel" runat="server" ReadOnly="true" Text='<%# Eval("Sex") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>Race:<br />
                                            <asp:TextBox ID="RaceLabel" runat="server" ReadOnly="true" Text='<%# Eval("Race") %>' /></td>
                                        <td>Residential Status:<br />
                                            <asp:TextBox ID="Residential_StatusLabel" runat="server" ReadOnly="true" Text='<%# Eval("Residential_Status") %>' /></td>
                                        <td>Preferred Language:<br />
                                            <asp:TextBox ID="Preferred_LanguageLabel" runat="server" ReadOnly="true" Text='<%# Eval("Preferred_Language") %>' /></td>
                                        <td>Religious Affiliation:<br />
                                            <asp:TextBox ID="Religious_AffiliationLabel" runat="server" ReadOnly="true" Text='<%# Eval("Religious_Affiliation") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>Staffing Ratio:<br />
                                            <asp:TextBox ID="Staffing_RatioLabel" runat="server" ReadOnly="true" Text='<%# Eval("Staff_Ratio") %>' /></td>
                                        <td>DSPD:<br />
                                            <asp:TextBox ID="DSPDLabel" runat="server" ReadOnly="true" Text='<%# Eval("DSPD") %>' /></td>
                                        <td>SSI:<br />
                                            <asp:TextBox ID="SSILabel" runat="server" ReadOnly="true" Text='<%# Eval("SSI") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>SSA:<br />
                                            <asp:TextBox ID="SSALabel" runat="server" ReadOnly="true" Text='<%# Eval("SSA") %>' /></td>
                                        <td>Modes_Communication:<br />
                                            <asp:TextBox ID="Modes_CommunicationLabel" ReadOnly="true" runat="server" Text='<%# Eval("Modes_Communication") %>' /></td>
                                        <td>Diagnosis:<br />
                                            <asp:TextBox ID="DiagnosisLabel" ReadOnly="true" runat="server" Text='<%# Eval("Diagnosis") %>' /></td>
                                    </tr>
                                </table>
                                <br />
                                <asp:LinkButton ID="btnClientEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                                <br />
                                <br />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <table>
                                    <tr>
                                        <td>Status:<br />
                                            <asp:DropDownList ID="ddStatus" Runat="server" SelectedValue='<%# Bind("Status") %>'>
                                                <asp:ListItem>Active</asp:ListItem>
                                                <asp:ListItem>In-Active</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>Date Created:<br />
                                            <asp:TextBox ID="DateCreatedLabel" runat="server" ReadOnly="true" Text='<%# Eval("DateCreated","{0:MM/dd/yyyy}") %>' /></td>
                                        <td>Date Modified:<br />
                                            <asp:TextBox ID="txtDateModified" runat="server" ReadOnly="true"/></td>
                                        <td>Last Modified By:<br />
                                            <asp:TextBox ID="txtLastModifiedBy" runat="server" ReadOnly="true" Text='<%# Eval("ModifiedBy") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>First Name:<br />
                                            <asp:TextBox ID="First_NameLabel" runat="server" Text='<%# Bind("First_Name") %>' /></td>
                                        <td>Last Name:<br />
                                            <asp:TextBox ID="Last_NameLabel" runat="server" Text='<%# Bind("Last_Name") %>' /></td>
                                        <td>Date of Birth:<br />
                                            <asp:TextBox ID="DOBLabel" runat="server" Text='<%# Bind("DOB", "{0:yyyy-MM-dd}") %>' TextMode="Date" /></td>
                                        <td>Age:<br />
                                            <asp:TextBox ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' TextMode="Number" /></td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' /></td>
                                        <td>City:<br />
                                            <asp:TextBox ID="CityLabel" runat="server" Text='<%# Bind("City") %>' /></td>
                                        <td>State:<br />
                                            <asp:DropDownList ID="ddState" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList></td>
                                        <td>Zip Code:<br />
                                            <asp:TextBox ID="Zip_CodeLabel" runat="server" Text='<%# Bind("Zip") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>Email:<br />
                                            <asp:TextBox ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" /></td>
                                        <td>Phone:<br />
                                            <asp:TextBox ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' TextMode="Phone" /></td>
                                        <td>SSN:<br />
                                            <asp:TextBox ID="SSNLabel" runat="server" Text='<%# Bind("SSN") %>' /></td>
                                        <td>Sex:<br />
                                            <asp:TextBox ID="SexLabel" runat="server" Text='<%# Bind("Sex") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>Race:<br />
                                            <asp:TextBox ID="RaceLabel" runat="server" Text='<%# Bind("Race") %>' /></td>
                                        <td>Residential Status:<br />
                                            <asp:TextBox ID="Residential_StatusLabel" runat="server" Text='<%# Bind("Residential_Status") %>' /></td>
                                        <td>Preferred Language:<br />
                                            <asp:TextBox ID="Preferred_LanguageLabel" runat="server" Text='<%# Bind("Preferred_Language") %>' /></td>
                                        <td>Religious Affiliation:<br />
                                            <asp:TextBox ID="Religious_AffiliationLabel" runat="server" Text='<%# Bind("Religious_Affiliation") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>Staffing Ratio:<br />
                                            <asp:TextBox ID="Staffing_RatioLabel" runat="server" Text='<%# Bind("Staff_Ratio") %>' /></td>
                                        <td>DSPD:<br />
                                            <asp:TextBox ID="DSPDLabel" runat="server" Text='<%# Bind("DSPD") %>' /></td>
                                        <td>SSI:<br />
                                            <asp:TextBox ID="SSILabel" runat="server" Text='<%# Bind("SSI") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td>SSA:<br />
                                            <asp:TextBox ID="SSALabel" runat="server" Text='<%# Bind("SSA") %>' /></td>
                                        <td>Modes_Communication:<br />
                                            <asp:TextBox ID="Modes_CommunicationLabel" runat="server" Text='<%# Bind("Modes_Communication") %>' /></td>
                                        <td>Diagnosis:<br />
                                            <asp:TextBox ID="DiagnosisLabel" runat="server" Text='<%# Bind("Diagnosis") %>' /></td>
                                    </tr>
                                </table>
                                <br />
                                <asp:LinkButton ID="btnClientSave" runat="server" CssClass="btn btn-primary" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                                <asp:LinkButton ID="btnClientCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                                <br />
                                <br />
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                        </asp:FormView>
                    </div>
                    <div class="col-sm-3">
                        <asp:Image ID="imgProfile" runat="server" BorderStyle="Solid" BorderWidth="1" Height="200px" ImageAlign="Middle" Width="200px" /><br />
                        <br />
                        <asp:Label ID="lblFileUpload" runat="server" Text="Upload Image "></asp:Label>
                        <asp:FileUpload ID="imageUpload" runat="server" />
                        <asp:LinkButton ID="btnUpload" runat="server" CssClass="btn btn-primary" OnClick="btnUpload_Click"> <span aria-hidden="true" class="glyphicon glyphicon-upload"></span>Upload Picture</asp:LinkButton>
                        <br />
                        <asp:Label ID="lblUploadStatus" runat="server" Visible="False" ForeColor="Red" Text="Upload status: " />
                    </div>
                </div>
                <%--Contact Info Section--%>
                <hr>
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <h3 class="text-center">Family/Guardian/Residential Contact Information</h3>
                    <asp:ListView ID="ContactListView" runat="server" DataKeyNames="ContactID" DataSourceID="ContactSqlDataSource" InsertItemPosition="LastItem" OnDataBound="ContactListView_DataBound">
                        <EditItemTemplate>
                            <asp:HiddenField ID="ClientID" runat="server" Value='<%# Bind("ClientID") %>' />
                            <table style="width:100%">
                                    <tr>
                                        <td>First Name:<br />
                                            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                                        </td>
                                        <td>Last Name:<br />
                                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                                        </td>
                                        <td>Relationship:<br />
                                            <asp:DropDownList ID="ddRelationship" runat="server" DataSourceID="DDRelationshipsSqlDataSource" DataValueField="Relationship" SelectedValue='<%# Bind("Relationship") %>' />
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="Emergency_ContactCheckBox" runat="server" Text="Emergency Contact" Checked='<%# Bind("Emergency_Contact") %>' /><br />
                                            <asp:CheckBox ID="GuardianCheckBox" runat="server" Text="Guardian" Checked='<%# Bind("Guardian") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Email:<br />
                                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                        </td>
                                        <td>Home Phone:<br />
                                            <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>' />
                                        </td>
                                        <td>Work Phone:<br />
                                            <asp:TextBox ID="WorkPhoneTextBox" runat="server" Text='<%# Bind("WorkPhone") %>' />
                                        </td>
                                        <td>Mobile Phone:<br />
                                            <asp:TextBox ID="MobilePhoneTextBox" runat="server" Text='<%# Bind("MobilePhone") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                        </td>
                                        <td>City:<br />
                                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                                        </td>
                                        <td>State:<br />
                                            <asp:DropDownList ID="ddState" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>' />
                                        </td>
                                        <td>Zip_Code:<br />
                                            <asp:TextBox ID="Zip_CodeTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                        </td>
                                    </tr>
                                </table>
                            <br />
                                <asp:LinkButton ID="btnContactSave" runat="server" CssClass="btn btn-primary" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                                <asp:LinkButton ID="btnContactCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                                <br />
                                <br />
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <span>No data was returned.</span>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <asp:HiddenField ID="ClientID" runat="server" Value='<%# Bind("ClientID") %>' />
                            <table style="width:100%">
                                    <tr>
                                        <td>First Name:<br />
                                            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                                        </td>
                                        <td>Last Name:<br />
                                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                                        </td>
                                        <td>Relationship:<br />
                                            <asp:TextBox ID="RelationshipTextBox" runat="server" Text='<%# Bind("Relationship") %>' />
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="Emergency_ContactCheckBox" runat="server" Text="Emergency Contact" Checked='<%# Bind("Emergency_Contact") %>' /><br />
                                            <asp:CheckBox ID="GuardianCheckBox" runat="server" Text="Guardian" Checked='<%# Bind("Guardian") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Email:<br />
                                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                        </td>
                                        <td>Home Phone:<br />
                                            <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>' />
                                        </td>
                                        <td>Work Phone:<br />
                                            <asp:TextBox ID="WorkPhoneTextBox" runat="server" Text='<%# Bind("WorkPhone") %>' />
                                        </td>
                                        <td>Mobile Phone:<br />
                                            <asp:TextBox ID="MobilePhoneTextBox" runat="server" Text='<%# Bind("MobilePhone") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                        </td>
                                        <td>City:<br />
                                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                                        </td>
                                        <td>State:<br />
                                            <asp:DropDownList ID="ddState" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList>
                                        </td>
                                        <td>Zip_Code:<br />
                                            <asp:TextBox ID="Zip_CodeTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                        </td>
                                    </tr>
                                </table>
                            <br />
                                <asp:LinkButton ID="btnContactInsert" runat="server" CssClass="btn btn-primary" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                                <asp:LinkButton ID="btnContactCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                                <br />
                                <br />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table style="width:100%">
                                    <tr>
                                        <td>First Name:<br />
                                            <asp:TextBox ID="FirstNameTextBox" runat="server" ReadOnly="true" Text='<%# Eval("FirstName") %>' />
                                        </td>
                                        <td>Last Name:<br />
                                            <asp:TextBox ID="LastNameTextBox" runat="server" ReadOnly="true" Text='<%# Eval("LastName") %>' />
                                        </td>
                                        <td>Relationship:<br />
                                            <asp:TextBox ID="RelationshipTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Relationship") %>' />
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="Emergency_ContactCheckBox" runat="server" Text="Emergency Contact" Checked='<%# Eval("Emergency_Contact") %>' Enabled="False" /><br />
                                            <asp:CheckBox ID="GuardianCheckBox" runat="server" Text="Guardian" Checked='<%# Eval("Guardian") %>' Enabled="False" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Email:<br />
                                            <asp:TextBox ID="EmailTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Email") %>' />
                                        </td>
                                        <td>Home Phone:<br />
                                            <asp:TextBox ID="HomePhoneTextBox" runat="server" ReadOnly="true" Text='<%# Eval("HomePhone") %>' />
                                        </td>
                                        <td>Work Phone:<br />
                                            <asp:TextBox ID="WorkPhoneTextBox" runat="server" ReadOnly="true" Text='<%# Eval("WorkPhone") %>' />
                                        </td>
                                        <td>Mobile Phone:<br />
                                            <asp:TextBox ID="MobilePhoneTextBox" runat="server" ReadOnly="true" Text='<%# Eval("MobilePhone") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="AddressTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Address") %>' />
                                        </td>
                                        <td>City:<br />
                                            <asp:TextBox ID="CityTextBox" runat="server" ReadOnly="true" Text='<%# Eval("City") %>' />
                                        </td>
                                        <td>State:<br />
                                            <asp:TextBox ID="StateTextBox" runat="server" ReadOnly="true" Text='<%# Eval("State") %>' />
                                        </td>
                                        <td>Zip_Code:<br />
                                            <asp:TextBox ID="Zip_CodeTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Zip") %>' />
                                        </td>
                                    </tr>
                                </table>
                            <br />
                            <asp:LinkButton ID="btnContactEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server" style="">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
                    <br />
                </div>
                <hr>
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <h3 class="text-center">Emergency Information</h3>
                    <asp:FormView ID="EvacFormView" runat="server" DataSourceID="EvacSqlDataSource" DataKeyNames="EmergencyID" OnDataBound="EvacFormView_DataBound">
                        <EditItemTemplate>
                            Emergency_Evac:
                            <asp:TextBox ID="Emergency_EvacTextBox" runat="server" Text='<%# Bind("Emergency_Evac") %>' />
                            <br />
                            Evac_Address_1:
                            <asp:TextBox ID="Evac_Address_1TextBox" runat="server" Text='<%# Bind("Evac_Address_1") %>' />
                            <br />
                            Evac_City_1:
                            <asp:TextBox ID="Evac_City_1TextBox" runat="server" Text='<%# Bind("Evac_City_1") %>' />
                            <br />
                            Evac_State_1:
                            <asp:TextBox ID="Evac_State_1TextBox" runat="server" Text='<%# Bind("Evac_State_1") %>' />
                            <br />
                            Evac_Zip_1:
                            <asp:TextBox ID="Evac_Zip_1TextBox" runat="server" Text='<%# Bind("Evac_Zip_1") %>' />
                            <br />
                            Evac_City_2:
                            <asp:TextBox ID="Evac_City_2TextBox" runat="server" Text='<%# Bind("Evac_City_2") %>' />
                            <br />
                            Evac_Address_2:
                            <asp:TextBox ID="Evac_Address_2TextBox" runat="server" Text='<%# Bind("Evac_Address_2") %>' />
                            <br />
                            Evac_State_2:
                            <asp:TextBox ID="Evac_State_2TextBox" runat="server" Text='<%# Bind("Evac_State_2") %>' />
                            <br />
                            Evac_Zip_2:
                            <asp:TextBox ID="Evac_Zip_2TextBox" runat="server" Text='<%# Bind("Evac_Zip_2") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Emergency_Evac:
                            <asp:TextBox ID="Emergency_EvacTextBox" runat="server" Text='<%# Bind("Emergency_Evac") %>' />
                            <br />
                            Evac_Address_1:
                            <asp:TextBox ID="Evac_Address_1TextBox" runat="server" Text='<%# Bind("Evac_Address_1") %>' />
                            <br />
                            Evac_City_1:
                            <asp:TextBox ID="Evac_City_1TextBox" runat="server" Text='<%# Bind("Evac_City_1") %>' />
                            <br />
                            Evac_State_1:
                            <asp:TextBox ID="Evac_State_1TextBox" runat="server" Text='<%# Bind("Evac_State_1") %>' />
                            <br />
                            Evac_Zip_1:
                            <asp:TextBox ID="Evac_Zip_1TextBox" runat="server" Text='<%# Bind("Evac_Zip_1") %>' />
                            <br />
                            Evac_City_2:
                            <asp:TextBox ID="Evac_City_2TextBox" runat="server" Text='<%# Bind("Evac_City_2") %>' />
                            <br />
                            Evac_Address_2:
                            <asp:TextBox ID="Evac_Address_2TextBox" runat="server" Text='<%# Bind("Evac_Address_2") %>' />
                            <br />
                            Evac_State_2:
                            <asp:TextBox ID="Evac_State_2TextBox" runat="server" Text='<%# Bind("Evac_State_2") %>' />
                            <br />
                            Evac_Zip_2:
                            <asp:TextBox ID="Evac_Zip_2TextBox" runat="server" Text='<%# Bind("Evac_Zip_2") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            EmergencyID:
                            <asp:TextBox ID="EmergencyIDLabel" runat="server" Text='<%# Eval("EmergencyID") %>' />
                            <br />
                            ClientID:
                            <asp:Label ID="ClientIDLabel" runat="server" Text='<%# Bind("ClientID") %>' />
                            <br />
                            Emergency_Evac:
                            <asp:Label ID="Emergency_EvacLabel" runat="server" Text='<%# Bind("Emergency_Evac") %>' />
                            <br />
                            Evac_Address_1:
                            <asp:Label ID="Evac_Address_1Label" runat="server" Text='<%# Bind("Evac_Address_1") %>' />
                            <br />
                            Evac_City_1:
                            <asp:Label ID="Evac_City_1Label" runat="server" Text='<%# Bind("Evac_City_1") %>' />
                            <br />
                            Evac_State_1:
                            <asp:Label ID="Evac_State_1Label" runat="server" Text='<%# Bind("Evac_State_1") %>' />
                            <br />
                            Evac_Zip_1:
                            <asp:Label ID="Evac_Zip_1Label" runat="server" Text='<%# Bind("Evac_Zip_1") %>' />
                            <br />
                            Evac_City_2:
                            <asp:Label ID="Evac_City_2Label" runat="server" Text='<%# Bind("Evac_City_2") %>' />
                            <br />
                            Evac_Address_2:
                            <asp:Label ID="Evac_Address_2Label" runat="server" Text='<%# Bind("Evac_Address_2") %>' />
                            <br />
                            Evac_State_2:
                            <asp:Label ID="Evac_State_2Label" runat="server" Text='<%# Bind("Evac_State_2") %>' />
                            <br />
                            Evac_Zip_2:
                            <asp:Label ID="Evac_Zip_2Label" runat="server" Text='<%# Bind("Evac_Zip_2") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    <%--<asp:Label ID="lblEmergyEvacNeeds" runat="server" Text="Emergency Evacuation Needs "></asp:Label><br />
                    <asp:TextBox ID="txtEmergyEvacNeeds" runat="server" Columns="30" TextMode="multiline" Width="94%"></asp:TextBox>

                    <asp:Table ID="Table4" runat="server" HorizontalAlign="Center" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblEmergyEvacNeedsAddress1" runat="server" Text="1st Evacuation Address "></asp:Label><br />
                                <asp:TextBox ID="txtEmergyEvacNeedsAddress1" runat="server" Columns="30"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblEmergyEvacNeedsCity1" runat="server" Text="1st Evacuation City "></asp:Label><br />
                                <asp:TextBox ID="txtEmergyEvacNeedsCity1" runat="server" Columns="30"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblEmergyEvacNeedsState1" runat="server" Text="1st Evacuation State "></asp:Label><br />
                                <asp:DropDownList ID="DropDownListEvacState1" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblEmergyEvacNeedsZip1" runat="server" Text="1st Evacuation Zip "></asp:Label><br />
                                <asp:TextBox ID="txtEmergyEvacNeedsZip1" runat="server" Columns="30"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblEmergyEvacNeedsAddress2" runat="server" Text="2nd Evacuation Address "></asp:Label><br />
                                <asp:TextBox ID="txtEmergyEvacNeedsAddress2" runat="server" Columns="30"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblEmergyEvacNeedsCity2" runat="server" Text="2nd Evacuation City "></asp:Label><br />
                                <asp:TextBox ID="txtEmergyEvacNeedsCity2" runat="server" Columns="30"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblEmergyEvacNeedsState2" runat="server" Text="2nd Evacuation State "></asp:Label><br />
                                <asp:DropDownList ID="DropDownListEvacState2" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblEmergyEvacNeedsZip2" runat="server" Text="2nd Evacuation Zip "></asp:Label><br />
                                <asp:TextBox ID="txtEmergyEvacNeedsZip2" runat="server" Columns="30"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>--%>
                </div>
                <hr />
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <h3 class="text-center">CETC Information</h3>
                    <div class="row">
                        <div class="col-sm-4">
                            <asp:Label ID="lblCETCDirector" runat="server"></asp:Label><br />
                            <asp:Label ID="lblCETCAddress" runat="server"></asp:Label><br />
                            <asp:Label ID="lblCETCPhone" runat="server"></asp:Label><br />
                            <asp:Label ID="lblCETCFax" runat="server"></asp:Label>
                            <hr />
                        </div>
                    </div>
                    <asp:Table ID="Table9" runat="server" HorizontalAlign="Center" Width="100%">
                        <asp:TableRow>
                          <%--<asp:TableCell>
                                <asp:Label ID="lblSvc1" runat="server" Text="Service "></asp:Label><br />
                                <asp:DropDownList ID="ddSvc1" runat="server" DataSourceID="SqlDataSourceService" DataTextField="Service"></asp:DropDownList>
                            </asp:TableCell>--%>
                            <asp:TableCell>
                                <asp:Label ID="lblCoor1" runat="server" Text="Coordinator "></asp:Label><br />
                                <asp:TextBox ID="txtCoor1" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblDeptHead1" runat="server" Text="Department Head "></asp:Label><br />
                                <asp:TextBox ID="txtDeptHead1" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="tblSvc2" runat="server" Visible="false">
                            <asp:TableCell>
                                <asp:Label ID="Label2" runat="server" Text="Service "></asp:Label><br />
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label3" runat="server" Text="Coordinator "></asp:Label><br />
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label12" runat="server" Text="Department Head "></asp:Label><br />
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="false" ID="tblSvc3" runat="server">
                            <asp:TableCell>
                                <asp:Label ID="Label13" runat="server" Text="Service "></asp:Label><br />
                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label14" runat="server" Text="Coordinator "></asp:Label><br />
                                <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label43" runat="server" Text="Department Head "></asp:Label><br />
                                <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="false" ID="tblSvc4" runat="server">
                            <asp:TableCell>
                                <asp:Label ID="Label44" runat="server" Text="Service "></asp:Label><br />
                                <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label45" runat="server" Text="Coordinator "></asp:Label><br />
                                <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label46" runat="server" Text="Department Head "></asp:Label><br />
                                <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="false" ID="tblSvc5" runat="server">
                            <asp:TableCell>
                                <asp:Label ID="Label47" runat="server" Text="Service "></asp:Label><br />
                                <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label48" runat="server" Text="Coordinator "></asp:Label><br />
                                <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label49" runat="server" Text="Department Head "></asp:Label><br />
                                <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="false" ID="tblSvc6" runat="server">
                            <asp:TableCell>
                                <asp:Label ID="Label50" runat="server" Text="Service "></asp:Label><br />
                                <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label51" runat="server" Text="Coordinator "></asp:Label><br />
                                <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label52" runat="server" Text="Department Head "></asp:Label><br />
                                <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Visible="false" ID="tblSvc7" runat="server">
                            <asp:TableCell>
                                <asp:Label ID="Label53" runat="server" Text="Service "></asp:Label><br />
                                <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label54" runat="server" Text="Coordinator "></asp:Label><br />
                                <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label55" runat="server" Text="Department Head "></asp:Label><br />
                                <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <br />
                    <asp:LinkButton ID="btnAddService" runat="server" CssClass="btn btn-primary"  CommandName="AddService"> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Service</asp:LinkButton>
                    <asp:Label ID="lblMaxService" runat="server" Visible="False" Style="color: red; font-weight: bold;"></asp:Label>
                </div>
                <hr />
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <h3 class="text-center">Providers</h3>
                    <asp:Table ID="Provider1" runat="server" HorizontalAlign="Center" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblProviderName" runat="server" Text="Provider "></asp:Label><br />
                                <asp:TextBox ID="txtProviderName" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblProviderFirstName" runat="server" Text="First Name "></asp:Label><br />
                                <asp:TextBox ID="txtProviderFirstName" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblProviderLastName" runat="server" Text="Last Name "></asp:Label><br />
                                <asp:TextBox ID="txtProviderLastName" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblProviderEMail" runat="server" Text="E-Mail Address "></asp:Label><br />
                                <asp:TextBox ID="txtProviderEMail" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblProviderPhone" runat="server" Text="Phone "></asp:Label><br />
                                <asp:TextBox ID="txtProviderPhone" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblProviderAddress" runat="server" Text="Address "></asp:Label><br />
                                <asp:TextBox ID="txtProviderAddress" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblProviderCity" runat="server" Text="City "></asp:Label><br />
                                <asp:TextBox ID="txtProviderCity" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblProviderState" runat="server" Text="State "></asp:Label><br />
                                <asp:DropDownList ID="ddProvState1" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblProviderZip" runat="server" Text="Zip "></asp:Label><br />
                                <asp:TextBox ID="txtProviderZip" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <hr id="Provider2hr" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                    <asp:Table ID="Provider2" runat="server" HorizontalAlign="Center" Width="100%" Visible="False">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label4" runat="server" Text="Provider "></asp:Label><br />
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label5" runat="server" Text="First Name "></asp:Label><br />
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label6" runat="server" Text="Last Name "></asp:Label><br />
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label7" runat="server" Text="E-Mail Address "></asp:Label><br />
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label8" runat="server" Text="Phone "></asp:Label><br />
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label9" runat="server" Text="Address "></asp:Label><br />
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label10" runat="server" Text="City "></asp:Label><br />
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label11" runat="server" Text="State "></asp:Label><br />
                                <asp:DropDownList ID="ddProvState2" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label15" runat="server" Text="Zip "></asp:Label><br />
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <hr id="Provider3hr" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                    <asp:Table ID="Provider3" runat="server" HorizontalAlign="Center" Width="100%" Visible="False">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label16" runat="server" Text="Provider "></asp:Label><br />
                                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label17" runat="server" Text="First Name "></asp:Label><br />
                                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label18" runat="server" Text="Last Name "></asp:Label><br />
                                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label19" runat="server" Text="E-Mail Address "></asp:Label><br />
                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label20" runat="server" Text="Phone "></asp:Label><br />
                                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label21" runat="server" Text="Address "></asp:Label><br />
                                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label22" runat="server" Text="City "></asp:Label><br />
                                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label23" runat="server" Text="State "></asp:Label><br />
                                <asp:DropDownList ID="ddProvState3" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label24" runat="server" Text="Zip "></asp:Label><br />
                                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <hr id="Provider4hr" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                    <asp:Table ID="Provider4" runat="server" HorizontalAlign="Center" Width="100%" Visible="False">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label25" runat="server" Text="Provider "></asp:Label><br />
                                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label26" runat="server" Text="First Name "></asp:Label><br />
                                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label27" runat="server" Text="Last Name "></asp:Label><br />
                                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label28" runat="server" Text="E-Mail Address "></asp:Label><br />
                                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label29" runat="server" Text="Phone "></asp:Label><br />
                                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label30" runat="server" Text="Address "></asp:Label><br />
                                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label31" runat="server" Text="City "></asp:Label><br />
                                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label32" runat="server" Text="State "></asp:Label><br />
                                <asp:DropDownList ID="ddProvState4" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label33" runat="server" Text="Zip "></asp:Label><br />
                                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <hr id="Provider5hr" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                    <asp:Table ID="Provider5" runat="server" HorizontalAlign="Center" Width="100%" Visible="False">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label34" runat="server" Text="Provider "></asp:Label><br />
                                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label35" runat="server" Text="First Name "></asp:Label><br />
                                <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label36" runat="server" Text="Last Name "></asp:Label><br />
                                <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label37" runat="server" Text="E-Mail Address "></asp:Label><br />
                                <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label38" runat="server" Text="Phone "></asp:Label><br />
                                <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label39" runat="server" Text="Address "></asp:Label><br />
                                <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label40" runat="server" Text="City "></asp:Label><br />
                                <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label41" runat="server" Text="State "></asp:Label><br />
                                <asp:DropDownList ID="ddProvState5" runat="server"></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label42" runat="server" Text="Zip "></asp:Label><br />
                                <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
                <div>
                    <br />
                    <asp:LinkButton ID="btnAddProvider" runat="server" CssClass="btn btn-primary"  CommandName="AddProvider"> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Provider</asp:LinkButton>
                    <asp:Label ID="lblMaxProviders" runat="server" Visible="False" Style="color: red; font-weight: bold;"></asp:Label>
                </div>
                <br />
                <br />
                <div style="text-align: center;">
                    <div style="width: 350px; margin-left: auto; margin-right: auto;">
                        <asp:LinkButton ID="SubmitBtn" runat="server" CssClass="btn btn-primary"> <span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Submit</asp:LinkButton>
                        <asp:LinkButton ID="ResetBtn" runat="server" CssClass="btn btn-primary"> <span aria-hidden="true" class="glyphicon glyphicon-refresh"></span> Reset</asp:LinkButton>
                    </div>
                    <div>
                        <asp:Label ID="lblResults" runat="server" Visible="false"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <%--Client Health--%>
    <div id="HealthProfile" class="tab-pane fade">
        <%--//Page Header--%>
        <h3 class="text-center">Health Profile Information</h3>
        <hr>
        <%--//Data Entry Form--%>
        <div class="centerForm">
            <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                <asp:Table ID="Table5" runat="server" HorizontalAlign="Center" Width="100%">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblHeight" runat="server" Text="Height "></asp:Label><br />
                            <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblWeight" runat="server" Text="Weight "></asp:Label><br />
                            <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblHair" runat="server" Text="Hair "></asp:Label><br />
                            <asp:TextBox ID="txtHair" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblEyeColor" runat="server" Text="Eyes "></asp:Label><br />
                            <asp:TextBox ID="txtEyeColor" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblDiagnosisMed" runat="server" Text="Diagnosis/Medical Condition "></asp:Label><br />
                            <asp:TextBox ID="txtDiagnosisMed" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedicalLim" runat="server" Text="Medical Limitations/Adaptive Devices "></asp:Label><br />
                            <asp:TextBox ID="txtMedicalLim" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblAllergies" runat="server" Text="Allergies "></asp:Label><br />
                            <asp:TextBox ID="txtAllergies" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblPreferredHospital" runat="server" Text="Preferred Hospital "></asp:Label><br />
                            <asp:TextBox ID="txtPreferredHospital" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPreferredHospitalPhone" runat="server" Text="Phone "></asp:Label><br />
                            <asp:TextBox ID="txtPreferredHospitalPhone" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblPreferredHospitalAddress" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtPreferredHospitalAddress" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPreferredHospitalCity" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtPreferredHospitalCity" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPreferredHospitalState" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddStatePreferedHospital" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPreferredHospitalZip" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtPreferredHospitalZip" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>

            <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                <h3 class="text-center">Medical Provider</h3>
                <asp:Table ID="tbDoctor1" runat="server" HorizontalAlign="Center" Width="100%">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty1" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSpecialty1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFName1" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFName1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLName1" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLName1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress1" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity1" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState1" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState1" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip1" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail1" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone1" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <hr id="hrDoctor2" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                <asp:Table ID="tbDoctor2" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty2" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSpecialty2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFname2" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFname2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLname2" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLname2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress2" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity2" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState2" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState2" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip2" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail2" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone2" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <hr id="hrDoctor3" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                <asp:Table ID="tbDoctor3" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty3" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSpecialty3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFname3" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFname3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLname3" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLname3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress3" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity3" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState3" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState3" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip3" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail3" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone3" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <hr id="hrDoctor4" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                <asp:Table ID="tbDoctor4" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty4" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSpecialty4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFname4" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFname4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLname4" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLname4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress4" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity4" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState4" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState4" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip4" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail4" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone4" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <hr id="hrDoctor5" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                <asp:Table ID="tbDoctor5" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty5" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSpecialty5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFname5" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFname5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLname5" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLname5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress5" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity5" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState5" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState5" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip5" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail5" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone5" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <hr id="hrDoctor6" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                <asp:Table ID="tbDoctor6" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty6" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSpecialty6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFname6" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFname6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLname6" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLname6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress6" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity6" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState6" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState6" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip6" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail6" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone6" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <hr id="hrDoctor7" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                <asp:Table ID="tbDoctor7" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty7" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSpecialty7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFname7" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFname7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLname7" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLname7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress7" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity7" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState7" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState7" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip7" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail7" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone7" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <hr id="hrDoctor8" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                <asp:Table ID="tbDoctor8" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty8" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSpecialty8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFname8" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFname8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLname8" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLname8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress8" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity8" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState8" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState8" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip8" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail8" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone8" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone8lbl" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <hr id="hrDoctor9" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                <asp:Table ID="tbDoctor9" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty9" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSecialty9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFname9" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFname9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLname9" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLname9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress9" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity9" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState9" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState9" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip9" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail9" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone9" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <hr id="hrDoctor10" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
                <asp:Table ID="tbDoctor10" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPSpecialty10" runat="server" Text="Specialty "></asp:Label><br />
                            <asp:TextBox ID="txtMPSpecialty10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPFname10" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMPFname10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPLname10" runat="server" Text="LastName "></asp:Label><br />
                            <asp:TextBox ID="txtMPLname10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPAddress10" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPAddress10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPCity10" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtMPCity10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPState10" runat="server" Text="State "></asp:Label><br />
                            <asp:DropDownList ID="ddMPState10" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPZip10" runat="server" Text="Zip Code "></asp:Label><br />
                            <asp:TextBox ID="txtMPZip10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMPEmail10" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtMPEmail10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMPPhone10" runat="server" Text="Phone Number "></asp:Label><br />
                            <asp:TextBox ID="txtMPPhone10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <div>
                    <br />
                    <asp:LinkButton ID="btnAddDoc" runat="server" CssClass="btn btn-primary"  CommandName="AddDoc"> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Medical Provider</asp:LinkButton>
                    <asp:Label ID="lblMaxDoc" runat="server" Visible="False" Style="color: red; font-weight: bold;"></asp:Label>
                </div>
            </div>
            <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                <h3 class="text-center">Medications</h3>
                <asp:Table ID="Table7" runat="server" HorizontalAlign="Center" Width="100%">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMedication1" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage1" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose1" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPMedFirstName1" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtPMedFirstName1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPMedLastName1" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtPMedLastName1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript1" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med2">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication2" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage2" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose2" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName2" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName2" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript2" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med3">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication3" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage3" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose3" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName3" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName3" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript3" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med4">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication4" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage4" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose4" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName4" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName4" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript4" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med5">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication5" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage5" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose5" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName5" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName5" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript5" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med6">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication6" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage6" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose6" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName6" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName6" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript6" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med7">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication7" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage7" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose7" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName7" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName7" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript7" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med8">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication8" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage8" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose8" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName8" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName8" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript8" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med9">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication9" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage9" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose9" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName9" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName9" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName9" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript9" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med10">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication10" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage10" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose10" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName10" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName10" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript10" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med11">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication11" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication11" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage11" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage11" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose11" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose11" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName11" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName11" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName11" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName11" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript11" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med12">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication12" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication12" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage12" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage12" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose12" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose12" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName12" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName12" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName12" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName12" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript12" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med13">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication13" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication13" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage13" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage13" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose13" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose13" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName13" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName13" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName13" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName13" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript13" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med14">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication14" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication14" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage14" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage14" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose14" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose14" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName14" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName14" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName14" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName14" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript14" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Visible="False" ID="med15">
                        <asp:TableCell>
                            <asp:Label ID="lblMedication15" runat="server" Text="Medication "></asp:Label><br />
                            <asp:TextBox ID="txtMedication15" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDosage15" runat="server" Text="Dosage "></asp:Label><br />
                            <asp:TextBox ID="txtDosage15" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPurpose15" runat="server" Text="Purpose "></asp:Label><br />
                            <asp:TextBox ID="txtPurpose15" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedFirstName15" runat="server" Text="Physician First Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedFirstName15" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblMedLastName15" runat="server" Text="Physician Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtMedLastName15" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <br />
                            <asp:CheckBox ID="ckboxNonPerscript15" runat="server" Text="Non-Prescription" TextAlign="Right" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <div>
                    <br />
                    <asp:LinkButton ID="btnAddMed" runat="server" CssClass="btn btn-primary"  CommandName="AddMed"> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Medication</asp:LinkButton>
                    <asp:Label ID="lblMedAddError" runat="server" Visible="False" Style="color: red; font-weight: bold;"></asp:Label>
                </div>


                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <h3 class="text-center">Medical Information</h3>
                    <asp:Table ID="Table8" runat="server" HorizontalAlign="Center" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblMedicaidNum" runat="server" Text="Medicaid Number "></asp:Label><br />
                                <asp:TextBox ID="txtMedicaidNum" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblMedicareNum" runat="server" Text="Medicare Number "></asp:Label><br />
                                <asp:TextBox ID="txtMedicareNum" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblOtherInsurance" runat="server" Text="Other Insurance Coverage "></asp:Label><br />
                                <asp:TextBox ID="txtOtherInsurance" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblPolicyNumber" runat="server" Text="Policy Number "></asp:Label><br />
                                <asp:TextBox ID="txtPolicyNumber" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblLifeSupport" runat="server" Text="Life Support Request "></asp:Label><br />
                                <asp:TextBox ID="txtLifeSupport" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </div>
            <br />
            <br />
            <div style="text-align: center;">
                <div style="width: 350px; margin-left: auto; margin-right: auto;">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary"> <span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Submit</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-primary"> <span aria-hidden="true" class="glyphicon glyphicon-refresh"></span> Reset</asp:LinkButton>
                </div>
                <div>
                    <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
    </div>
  </div>
</asp:Content>
