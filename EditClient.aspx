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

    <asp:SqlDataSource ID="CetcInfoSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [CECTID], [Service], [Coordinator], [DeptHead], [ClientID] FROM [CETC_INFO] WHERE ([ClientID] = @ClientID)" DeleteCommand="DELETE FROM [CETC_INFO] WHERE [CECTID] = @CECTID" InsertCommand="INSERT INTO [CETC_INFO] ([Service], [Coordinator], [DeptHead], [ClientID]) VALUES (@Service, @Coordinator, @DeptHead, @ClientID)" UpdateCommand="UPDATE [CETC_INFO] SET [Service] = @Service, [Coordinator] = @Coordinator, [DeptHead] = @DeptHead, [ClientID] = @ClientID WHERE [CECTID] = @CECTID">
        <DeleteParameters>
            <asp:Parameter Name="CECTID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Service" Type="String" />
            <asp:Parameter Name="Coordinator" Type="String" />
            <asp:Parameter Name="DeptHead" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Service" Type="String" />
            <asp:Parameter Name="Coordinator" Type="String" />
            <asp:Parameter Name="DeptHead" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="CECTID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="ProviderNonMedSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [NonMedProviderID], [Provider], [FirstName], [LastName], [ClientID], [Email], [Phone], [Address], [City], [State], [Zip] FROM [ProviderNonMed] WHERE ([ClientID] = @ClientID)" DeleteCommand="DELETE FROM [ProviderNonMed] WHERE [NonMedProviderID] = @NonMedProviderID" InsertCommand="INSERT INTO [ProviderNonMed] ([Provider], [FirstName], [LastName], [ClientID], [Email], [Phone], [Address], [City], [State], [Zip]) VALUES (@Provider, @FirstName, @LastName, @ClientID, @Email, @Phone, @Address, @City, @State, @Zip)" UpdateCommand="UPDATE [ProviderNonMed] SET [Provider] = @Provider, [FirstName] = @FirstName, [LastName] = @LastName, [ClientID] = @ClientID, [Email] = @Email, [Phone] = @Phone, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [NonMedProviderID] = @NonMedProviderID">
        <DeleteParameters>
            <asp:Parameter Name="NonMedProviderID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Provider" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Provider" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Int32" />
            <asp:Parameter Name="NonMedProviderID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="HealthProfileSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Health_Profile] WHERE [Health_Profile_ID] = @Health_Profile_ID" InsertCommand="INSERT INTO [Health_Profile] ([DOB], [Height], [Weight], [Hair], [Eyes], [Diagnosed_Condition], [Limitations], [Allergies], [Preferred_Hospital], [Hospital_Phone], [ClientID], [Address], [City], [State], [Zip]) VALUES (@DOB, @Height, @Weight, @Hair, @Eyes, @Diagnosed_Condition, @Limitations, @Allergies, @Preferred_Hospital, @Hospital_Phone, @ClientID, @Address, @City, @State, @Zip)" SelectCommand="SELECT Health_Profile.Health_Profile_ID, Health_Profile.Height, Health_Profile.Weight, Health_Profile.Hair, Health_Profile.Eyes, Health_Profile.Diagnosed_Condition, Health_Profile.Limitations, Health_Profile.Allergies, Health_Profile.Preferred_Hospital, Health_Profile.Hospital_Phone, Health_Profile.ClientID, Health_Profile.Address, Health_Profile.City, Health_Profile.State, Health_Profile.Zip, Client.First_Name, Client.Last_Name, Client.DOB, Client.Sex FROM Health_Profile INNER JOIN Client ON Client.ClientID = Health_Profile.ClientID WHERE (Health_Profile.ClientID = @ClientID)" UpdateCommand="UPDATE [Health_Profile] SET [DOB] = @DOB, [Height] = @Height, [Weight] = @Weight, [Hair] = @Hair, [Eyes] = @Eyes, [Diagnosed_Condition] = @Diagnosed_Condition, [Limitations] = @Limitations, [Allergies] = @Allergies, [Preferred_Hospital] = @Preferred_Hospital, [Hospital_Phone] = @Hospital_Phone, [ClientID] = @ClientID, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [Health_Profile_ID] = @Health_Profile_ID">
        <DeleteParameters>
            <asp:Parameter Name="Health_Profile_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Hair" Type="String" />
            <asp:Parameter Name="Eyes" Type="String" />
            <asp:Parameter Name="Diagnosed_Condition" Type="String" />
            <asp:Parameter Name="Limitations" Type="String" />
            <asp:Parameter Name="Allergies" Type="String" />
            <asp:Parameter Name="Preferred_Hospital" Type="String" />
            <asp:Parameter Name="Hospital_Phone" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Hair" Type="String" />
            <asp:Parameter Name="Eyes" Type="String" />
            <asp:Parameter Name="Diagnosed_Condition" Type="String" />
            <asp:Parameter Name="Limitations" Type="String" />
            <asp:Parameter Name="Allergies" Type="String" />
            <asp:Parameter Name="Preferred_Hospital" Type="String" />
            <asp:Parameter Name="Hospital_Phone" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Int32" />
            <asp:Parameter Name="Health_Profile_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="MedProvidersSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Medical_Provider] WHERE [ProviderID] = @ProviderID" InsertCommand="INSERT INTO [Medical_Provider] ([Specialty], [ClientID], [FirstName], [LastName], [Email], [Address], [Phone], [City], [State], [Zip]) VALUES (@Specialty, @ClientID, @FirstName, @LastName, @Email, @Address, @Phone, @City, @State, @Zip)" SelectCommand="SELECT [ProviderID], [Specialty], [ClientID], [FirstName], [LastName], [Email], [Address], [Phone], [City], [State], [Zip] FROM [Medical_Provider] WHERE ([ClientID] = @ClientID)" UpdateCommand="UPDATE [Medical_Provider] SET [Specialty] = @Specialty, [ClientID] = @ClientID, [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Address] = @Address, [Phone] = @Phone, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [ProviderID] = @ProviderID">
        <DeleteParameters>
            <asp:Parameter Name="ProviderID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Specialty" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Specialty" Type="String" />
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Int32" />
            <asp:Parameter Name="ProviderID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="MedSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Medication] WHERE [MedicationID] = @MedicationID" InsertCommand="INSERT INTO [Medication] ([ClientID], [Medication_Name], [Dosage], [Purpose], [Physician], [Non_Perscription]) VALUES (@ClientID, @Medication_Name, @Dosage, @Purpose, @Physician, @Non_Perscription)" SelectCommand="SELECT [MedicationID], [ClientID], [Medication_Name], [Dosage], [Purpose], [Physician], [Non_Perscription] FROM [Medication] WHERE ([ClientID] = @ClientID)" UpdateCommand="UPDATE [Medication] SET [ClientID] = @ClientID, [Medication_Name] = @Medication_Name, [Dosage] = @Dosage, [Purpose] = @Purpose, [Physician] = @Physician, [Non_Perscription] = @Non_Perscription WHERE [MedicationID] = @MedicationID">
        <DeleteParameters>
            <asp:Parameter Name="MedicationID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Medication_Name" Type="String" />
            <asp:Parameter Name="Dosage" Type="String" />
            <asp:Parameter Name="Purpose" Type="String" />
            <asp:Parameter Name="Physician" Type="String" />
            <asp:Parameter Name="Non_Perscription" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Medication_Name" Type="String" />
            <asp:Parameter Name="Dosage" Type="String" />
            <asp:Parameter Name="Purpose" Type="String" />
            <asp:Parameter Name="Physician" Type="String" />
            <asp:Parameter Name="Non_Perscription" Type="String" />
            <asp:Parameter Name="MedicationID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:sqldatasource ID="InsurenceSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Insurance] WHERE [InsuranceID] = @InsuranceID" InsertCommand="INSERT INTO [Insurance] ([ClientID], [Medicaid_Number], [Medicare_Number], [Insurance_Name], [Policy_Number], [Life_Support]) VALUES (@ClientID, @Medicaid_Number, @Medicare_Number, @Insurance_Name, @Policy_Number, @Life_Support)" SelectCommand="SELECT [InsuranceID], [ClientID], [Medicaid_Number], [Medicare_Number], [Insurance_Name], [Policy_Number], [Life_Support] FROM [Insurance] WHERE ([ClientID] = @ClientID)" UpdateCommand="UPDATE [Insurance] SET [ClientID] = @ClientID, [Medicaid_Number] = @Medicaid_Number, [Medicare_Number] = @Medicare_Number, [Insurance_Name] = @Insurance_Name, [Policy_Number] = @Policy_Number, [Life_Support] = @Life_Support WHERE [InsuranceID] = @InsuranceID">
        <DeleteParameters>
            <asp:Parameter Name="InsuranceID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Medicaid_Number" Type="String" />
            <asp:Parameter Name="Medicare_Number" Type="String" />
            <asp:Parameter Name="Insurance_Name" Type="String" />
            <asp:Parameter Name="Policy_Number" Type="String" />
            <asp:Parameter Name="Life_Support" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:QueryStringParameter Name="ClientID" QueryStringField="ClientID" Type="Int32" />
            <asp:Parameter Name="Medicaid_Number" Type="String" />
            <asp:Parameter Name="Medicare_Number" Type="String" />
            <asp:Parameter Name="Insurance_Name" Type="String" />
            <asp:Parameter Name="Policy_Number" Type="String" />
            <asp:Parameter Name="Life_Support" Type="String" />
            <asp:Parameter Name="InsuranceID" Type="Int32" />
        </UpdateParameters>
    </asp:sqldatasource>

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
    <%--<div class="tab-content">
        <div id="FaceSheet" class="tab-pane fade in active">--%>
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
                    <h3 class="text-center">Family/Guardian/Residential Contact Information</h3>
                    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <asp:ListView ID="ContactListView" runat="server" DataKeyNames="ContactID" DataSourceID="ContactSqlDataSource" InsertItemPosition="LastItem">
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
                                        <td>Zip Code:<br />
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
                                        <td>Zip Code:<br />
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
                                        <td>Zip Code:<br />
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
                  </div>
                <hr>
                <%--Emergency Information--%>
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <h3 class="text-center">Emergency Information</h3>
                    <asp:FormView ID="EvacFormView" runat="server" DataSourceID="EvacSqlDataSource" DataKeyNames="EmergencyID" OnDataBound="EvacFormView_DataBound">
                        <EditItemTemplate>
                            Emergency Evacuation Needs:<br />
                              <asp:TextBox ID="TextBox51" runat="server" Text='<%# Bind("Emergency_Evac") %>' TextMode="MultiLine" Width="100%" />
                            <table style="width:100%">
                               <tr>
                                   <td>Evacuation Address 1:<br />
                                        <asp:TextBox ID="TextBox52" runat="server" Text='<%# Bind("Evac_Address_1") %>' />
                                   </td>
                                   <td>Evacuation City 1:<br />
                                        <asp:TextBox ID="TextBox53" runat="server" Text='<%# Bind("Evac_City_1") %>' />
                                   </td>
                                   <td>Evacuation State 1:<br />
                                        <asp:TextBox ID="TextBox54" runat="server" Text='<%# Bind("Evac_State_1") %>' />
                                   </td>
                                   <td>Evacuation Zip 1:<br />
                                        <asp:TextBox ID="TextBox55" runat="server" Text='<%# Bind("Evac_Zip_1") %>' />
                                   </td>
                               </tr>
                                <tr>
                                   <td>Evacuation Address 2:<br />
                                        <asp:TextBox ID="TextBox56" runat="server" Text='<%# Bind("Evac_Address_2") %>' />
                                   </td>
                                   <td>Evacuation City 2:<br />
                                        <asp:TextBox ID="TextBox57" runat="server" Text='<%# Bind("Evac_City_2") %>' />
                                   </td>
                                   <td>Evacuation State 2:<br />
                                        <asp:TextBox ID="TextBox58" runat="server" Text='<%# Bind("Evac_State_2") %>' />
                                   </td>
                                   <td>Evacuation Zip 2:<br />
                                        <asp:TextBox ID="TextBox59" runat="server" Text='<%# Bind("Evac_Zip_2") %>' />
                                   </td>
                               </tr>
                            </table>
                            <asp:LinkButton ID="btnEvacSave" runat="server" CssClass="btn btn-primary" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                            <asp:LinkButton ID="btnEvacCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Emergency Evacuation Needs:<br />
                                       <asp:TextBox ID="TextBox60" runat="server" Text='<%# Bind("Emergency_Evac") %>' TextMode="MultiLine" Width="100%" />
                            <table style="width:100%">
                               <tr>
                                   <td>Evacuation Address 1:<br />
                                        <asp:TextBox ID="TextBox61" runat="server" Text='<%# Bind("Evac_Address_1") %>' />
                                   </td>
                                   <td>Evacuation City 1:<br />
                                        <asp:TextBox ID="TextBox62" runat="server" Text='<%# Bind("Evac_City_1") %>' />
                                   </td>
                                   <td>Evacuation State 1:<br />
                                        <asp:TextBox ID="TextBox63" runat="server" Text='<%# Bind("Evac_State_1") %>' />
                                   </td>
                                   <td>Evacuation Zip 1:<br />
                                        <asp:TextBox ID="TextBox64" runat="server" Text='<%# Bind("Evac_Zip_1") %>' />
                                   </td>
                               </tr>
                                <tr>
                                   <td>Evacuation Address 2:<br />
                                        <asp:TextBox ID="TextBox65" runat="server" Text='<%# Bind("Evac_Address_2") %>' />
                                   </td>
                                   <td>Evacuation City 2:<br />
                                        <asp:TextBox ID="TextBox66" runat="server" Text='<%# Bind("Evac_City_2") %>' />
                                   </td>
                                   <td>Evacuation State 2:<br />
                                        <asp:TextBox ID="TextBox67" runat="server" Text='<%# Bind("Evac_State_2") %>' />
                                   </td>
                                   <td>Evacuation Zip 2:<br />
                                        <asp:TextBox ID="TextBox68" runat="server" Text='<%# Bind("Evac_Zip_2") %>' />
                                   </td>
                               </tr>
                            </table>
                            <asp:LinkButton ID="btnEvacInsert" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            <asp:LinkButton ID="btnEvacCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Emergency Evacuation Needs:<br />
                            <asp:TextBox ID="TextBox69" runat="server" ReadOnly="true" Text='<%# Bind("Emergency_Evac") %>' TextMode="MultiLine" Width="100%" />
                            <table style="width:100%">
                               <tr>
                                   <td>Evacuation Address 1:<br />
                                        <asp:TextBox ID="TextBox70" runat="server" ReadOnly="true" Text='<%# Bind("Evac_Address_1") %>' />
                                   </td>
                                   <td>Evacuation City 1:<br />
                                        <asp:TextBox ID="TextBox71" runat="server" ReadOnly="true" Text='<%# Bind("Evac_City_1") %>' />
                                   </td>
                                   <td>Evacuation State 1:<br />
                                        <asp:TextBox ID="TextBox72" runat="server" ReadOnly="true" Text='<%# Bind("Evac_State_1") %>' />
                                   </td>
                                   <td>Evacuation Zip 1:<br />
                                        <asp:TextBox ID="TextBox73" runat="server" ReadOnly="true" Text='<%# Bind("Evac_Zip_1") %>' />
                                   </td>
                               </tr>
                                <tr>
                                   <td>Evacuation Addres 2:<br />
                                        <asp:TextBox ID="TextBox74" runat="server" ReadOnly="true" Text='<%# Bind("Evac_Address_2") %>' />
                                   </td>
                                   <td>Evacuation City 2:<br />
                                        <asp:TextBox ID="TextBox75" runat="server" ReadOnly="true" Text='<%# Bind("Evac_City_2") %>' />
                                   </td>
                                   <td>Evacuation State 2:<br />
                                        <asp:TextBox ID="TextBox76" runat="server" ReadOnly="true" Text='<%# Bind("Evac_State_2") %>' />
                                   </td>
                                   <td>Evacuation Zip 2:<br />
                                        <asp:TextBox ID="TextBox77" runat="server" ReadOnly="true" Text='<%# Bind("Evac_Zip_2") %>' />
                                   </td>
                               </tr>
                            </table>
                            <asp:LinkButton ID="btnEvacEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                            <asp:LinkButton ID="btnEvacNew" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    </div>
                <hr />
                <%--CETC Information--%>
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
                    <%--Services Information--%>
                    <asp:ListView ID="ServiceListView" runat="server" DataSourceID="CetcInfoSqlDataSource" DataKeyNames="CECTID" InsertItemPosition="LastItem">
                        <EditItemTemplate>
                            <asp:HiddenField ID="CECTIDLabel1" runat="server" Value='<%# Eval("CECTID") %>' />
                            <table style="width:100%">
                                <tr>
                                    <td>Service:<br />
                                    <asp:TextBox ID="ServiceTextBox" runat="server" Text='<%# Bind("Service") %>' />
                                    </td>
                                    <td>Coordinator:<br />
                                    <asp:TextBox ID="CoordinatorTextBox" runat="server" Text='<%# Bind("Coordinator") %>' />
                                    </td>
                                    <td>DeptHead:<br />
                                    <asp:TextBox ID="DeptHeadTextBox" runat="server" Text='<%# Bind("DeptHead") %>' />
                                    </td>
                                </tr>
                                </table>
                            <br />
                            <asp:LinkButton ID="btnServiceSave" runat="server" CssClass="btn btn-primary" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                            <asp:LinkButton ID="btnServiceCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <span>No data was returned.</span>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <asp:HiddenField ID="CECTIDLabel1" runat="server" Value='<%# Eval("CECTID") %>' />
                            <table style="width:100%">
                                <tr>
                                    <td>Service:<br />
                                    <asp:TextBox ID="ServiceTextBox" runat="server" Text='<%# Bind("Service") %>' />
                                    </td>
                                    <td>Coordinator:<br />
                                    <asp:TextBox ID="CoordinatorTextBox" runat="server" Text='<%# Bind("Coordinator") %>' />
                                    </td>
                                    <td>DeptHead:<br />
                                    <asp:TextBox ID="DeptHeadTextBox" runat="server" Text='<%# Bind("DeptHead") %>' />
                                    </td>
                                </tr>
                                </table>
                            <br />
                            <asp:LinkButton ID="btnServiceInsert" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            <asp:LinkButton ID="btnServiceCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:HiddenField ID="CECTIDLabel1" runat="server" Value='<%# Eval("CECTID") %>' />
                            <table style="width:100%">
                                <tr>
                                    <td>Service:<br />
                                    <asp:TextBox ID="ServiceTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Service") %>' />
                                    </td>
                                    <td>Coordinator:<br />
                                    <asp:TextBox ID="CoordinatorTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("Coordinator") %>' />
                                    </td>
                                    <td>DeptHead:<br />
                                    <asp:TextBox ID="DeptHeadTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("DeptHead") %>' />
                                    </td>
                                </tr>
                                </table>
                            <br />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server" style="">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
                    </div>
                <hr />
                <%--Provider Information--%>
                <h3 class="text-center">Providers</h3>
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                <asp:ListView ID="NonMedProviderListView" runat="server" DataKeyNames="NonMedProviderID" DataSourceID="ProviderNonMedSqlDataSource" InsertItemPosition="LastItem">
                    <EditItemTemplate>
                        <asp:HiddenField runat="server" Value='<%# Eval("ProviderNonMedID") %>' />
                        <table>
                            <tr>
                                <td>Provider:<br />
                                <asp:TextBox ID="ProviderNameTextBox" runat="server" Text='<%# Bind("Provider") %>' />
                                </td>
                                <td>First Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                                </td>
                                <td>Last Name:<br />
                                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                                </td>
                                <td>Email:<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>Phone:<br />
                                <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
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
                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                                </td>
                                <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <asp:HiddenField runat="server" Value='<%# Eval("ProviderNonMedID") %>' />
                        <table>
                            <tr>
                                <td>Provider:<br />
                                <asp:TextBox ID="ProviderNameTextBox" runat="server" Text='<%# Bind("Provider") %>' />
                                </td>
                                <td>First Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                                </td>
                                <td>Last Name:<br />
                                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                                </td>
                                <td>Email:<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>Phone:<br />
                                <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
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
                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                                </td>
                                <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:HiddenField runat="server" Value='<%# Eval("ProviderNonMedID") %>' />
                        <table>
                            <tr>
                                <td>Provider:<br />
                                <asp:TextBox ID="ProviderNameTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Provider") %>' />
                                </td>
                                <td>First Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("FirstName") %>' />
                                </td>
                                <td>Last Name:<br />
                                <asp:TextBox ID="LastNameTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("LastName") %>' />
                                </td>
                                <td>Email:<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("Email") %>' />
                                </td>
                                <td>Phone:<br />
                                <asp:TextBox ID="HomePhoneTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("Phone") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Address:<br />
                                <asp:TextBox ID="AddressTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("Address") %>' />
                                </td>
                                <td>City:<br />
                                <asp:TextBox ID="CityTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("City") %>' />
                                </td>
                                <td>State:<br />
                                <asp:TextBox ID="StateTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("State") %>' />
                                </td>
                                <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("Zip") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <ItemSeparatorTemplate>
                        <hr style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;"/>
                    </ItemSeparatorTemplate>
                    </asp:ListView>
            </div>
<%--  End Face Sheet Div      </div>--%>
<%--    <div id="HealthProfile" class="tab-pane fade">--%>
        <%--Client Health--%>
        <h3 class="text-center">Health Profile Information</h3>
        <hr>
        <%--//Page Header--%>
        <div class="centerForm">
            <asp:FormView ID="HelthProfileFormView" DataSourceId="HealthProfileSqlDataSource" runat="server" DataKeyNames="Health_Profile_ID">
                <EditItemTemplate>
                    <asp:HiddenField runat="server" Value='<%# Eval("Health_Profile_ID") %>' />
                    <table style="width:100%">
                        <tr>
                            <td>First Name:<br />
                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%# Bind("First_Name") %>' />
                            </td>
                            <td>Last Name:<br />
                                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%# Bind("Last_Name") %>' />
                            </td>
                            <td>Sex:<br />
                                <asp:TextBox ID="TextBox12" runat="server" ReadOnly="true" Text='<%# Bind("Sex") %>' />
                            </td>
                            <td>DOB:<br />
                                <asp:TextBox ID="TextBox11" runat="server" ReadOnly="true" Text='<%# Bind("DOB") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Height:<br />
                                <asp:TextBox ID="TextBox37" runat="server" Text='<%# Bind("Height") %>' />
                            </td>
                            <td>Weight:<br />
                                <asp:TextBox ID="TextBox38" runat="server" Text='<%# Bind("Weight") %>' />
                            </td>
                            <td>Hair:<br />
                                <asp:TextBox ID="TextBox39" runat="server" Text='<%# Bind("Hair") %>' />
                            </td>
                            <td>Eyes:<br />
                                <asp:TextBox ID="TextBox40" runat="server" Text='<%# Bind("Eyes") %>' />
                            </td>
                        </tr>
                     <tr>
                            <td>Diagnosis/Medical Condition:<br />
                                <asp:TextBox ID="TextBox41" runat="server" Text='<%# Bind("Diagnosed_Condition") %>' TextMode="MultiLine" />
                            </td>
                            <td>Medical Limitations/Adapitve Devices:<br />
                                <asp:TextBox ID="TextBox42" runat="server" Text='<%# Bind("Limitations") %>' TextMode="MultiLine" />
                            </td>
                            <td>Allergies:<br />
                                <asp:TextBox ID="TextBox43" runat="server" Text='<%# Bind("Allergies") %>' TextMode="MultiLine" />
                            </td>
                        </tr>
                        <tr>
                            <td>Preferred Hospital:<br />
                                <asp:TextBox ID="TextBox44" runat="server" Text='<%# Bind("Preferred_Hospital") %>' />
                            </td>
                            <td>Hospital Phone:<br />
                                <asp:TextBox ID="TextBox45" runat="server" Text='<%# Bind("Hospital_Phone") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Address:<br />
                                <asp:TextBox ID="TextBox46" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>City:<br />
                                <asp:TextBox ID="TextBox47" runat="server" Text='<%# Bind("City") %>' />
                            </td>
                            <td>State:<br />
                                <asp:TextBox ID="TextBox48" runat="server" Text='<%# Bind("State") %>' />
                            </td>
                            <td>Zip:<br />
                                <asp:TextBox ID="TextBox49" runat="server" Text='<%# Bind("Zip") %>' />
                            </td>
                        </tr>
                    </table>
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:HiddenField runat="server" Value='<%# Eval("Health_Profile_ID") %>' />
                    <table style="width:100%">
                        <tr>
                            <td>First Name:<br />
                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%# Bind("First_Name") %>' />
                            </td>
                            <td>Last Name:<br />
                                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%# Bind("Last_Name") %>' />
                            </td>
                            <td>Sex:<br />
                                <asp:TextBox ID="TextBox12" runat="server" ReadOnly="true" Text='<%# Bind("Sex") %>' />
                            </td>
                            <td>DOB:<br />
                                <asp:TextBox ID="TextBox11" runat="server" ReadOnly="true" Text='<%# Bind("DOB") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Height:<br />
                                <asp:TextBox ID="TextBox37" runat="server" Text='<%# Bind("Height") %>' />
                            </td>
                            <td>Weight:<br />
                                <asp:TextBox ID="TextBox38" runat="server" Text='<%# Bind("Weight") %>' />
                            </td>
                            <td>Hair:<br />
                                <asp:TextBox ID="TextBox39" runat="server" Text='<%# Bind("Hair") %>' />
                            </td>
                            <td>Eyes:<br />
                                <asp:TextBox ID="TextBox40" runat="server" Text='<%# Bind("Eyes") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Diagnosis/Medical Condition:<br />
                                <asp:TextBox ID="TextBox41" runat="server" Text='<%# Bind("Diagnosed_Condition") %>' TextMode="MultiLine" />
                            </td>
                        </tr>
                        <tr>
                            <td>Medical Limitations/Adapitve Devices:<br />
                                <asp:TextBox ID="TextBox42" runat="server" Text='<%# Bind("Limitations") %>' TextMode="MultiLine" />
                            </td>
                            <td>Allergies:<br />
                                <asp:TextBox ID="TextBox43" runat="server" Text='<%# Bind("Allergies") %>' TextMode="MultiLine" />
                            </td>
                            <td>Preferred Hospital:<br />
                                <asp:TextBox ID="TextBox44" runat="server" Text='<%# Bind("Preferred_Hospital") %>' />
                            </td>
                            <td>Hospital Phone:<br />
                                <asp:TextBox ID="TextBox45" runat="server" Text='<%# Bind("Hospital_Phone") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Address:<br />
                                <asp:TextBox ID="TextBox46" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>City:<br />
                                <asp:TextBox ID="TextBox47" runat="server" Text='<%# Bind("City") %>' />
                            </td>
                            <td>State:<br />
                                <asp:TextBox ID="TextBox48" runat="server" Text='<%# Bind("State") %>' />
                            </td>
                            <td>Zip:<br />
                                <asp:TextBox ID="TextBox49" runat="server" Text='<%# Bind("Zip") %>' />
                            </td>
                        </tr>
                    </table>
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:HiddenField runat="server" Value='<%# Eval("Health_Profile_ID") %>' />
                    <table style="width:100%">
                        <tr>
                            <td>First Name:<br />
                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%# Eval("First_Name") %>' />
                            </td>
                            <td>Last Name:<br />
                                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%# Eval("Last_Name") %>' />
                            </td>
                            <td>Sex:<br />
                                <asp:TextBox ID="TextBox12" runat="server" ReadOnly="true" Text='<%# Eval("Sex") %>' />
                            </td>
                            <td>DOB:<br />
                                <asp:TextBox ID="TextBox11" runat="server" ReadOnly="true" Text='<%# Eval("DOB") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Height:<br />
                                <asp:TextBox ID="TextBox37" runat="server" ReadOnly="true"  Text='<%# Eval("Height") %>' />
                            </td>
                            <td>Weight:<br />
                                <asp:TextBox ID="TextBox38" runat="server" ReadOnly="true"  Text='<%# Eval("Weight") %>' />
                            </td>
                            <td>Hair:<br />
                                <asp:TextBox ID="TextBox39" runat="server" ReadOnly="true"  Text='<%# Eval("Hair") %>' />
                            </td>
                            <td>Eyes:<br />
                                <asp:TextBox ID="TextBox40" runat="server" ReadOnly="true"  Text='<%# Eval("Eyes") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Diagnosis/Medical Condition:<br />
                                <asp:TextBox ID="TextBox41" runat="server" ReadOnly="true"   Text='<%# Eval("Diagnosed_Condition") %>' TextMode="MultiLine" />
                            </td>
                            <td>Medical Limitations/Adapitve Devices:<br />
                                <asp:TextBox ID="TextBox42" runat="server" ReadOnly="true"   Text='<%# Eval("Limitations") %>' TextMode="MultiLine" />
                            </td>
                            <td>Allergies:<br />
                                <asp:TextBox ID="TextBox43" runat="server" ReadOnly="true"   Text='<%# Eval("Allergies") %>' TextMode="MultiLine" />
                            </td>
                        </tr>
                        <tr>
                            <td>Preferred Hospital:<br />
                                <asp:TextBox ID="TextBox44" runat="server" ReadOnly="true"  Text='<%# Eval("Preferred_Hospital") %>' />
                            </td>
                            <td>Hospital Phone:<br />
                                <asp:TextBox ID="TextBox45" runat="server" ReadOnly="true"  Text='<%# Eval("Hospital_Phone") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Address:<br />
                                <asp:TextBox ID="TextBox46" runat="server" ReadOnly="true"  Text='<%# Eval("Address") %>' />
                            </td>
                            <td>City:<br />
                                <asp:TextBox ID="TextBox47" runat="server" ReadOnly="true"  Text='<%# Eval("City") %>' />
                            </td>
                            <td>State:<br />
                                <asp:TextBox ID="TextBox48" runat="server" ReadOnly="true"  Text='<%# Eval("State") %>' />
                            </td>
                            <td>Zip:<br />
                                <asp:TextBox ID="TextBox49" runat="server" ReadOnly="true"  Text='<%# Eval("Zip") %>' />
                            </td>
                        </tr>
                    </table>
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <%--Medical Provider Section--%>
            <h3 class="text-center">Medical Provider</h3>
            <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
            <asp:ListView ID="MedProviderListView" runat="server" DataKeyNames="ProviderID" DataSourceID="MedProvidersSqlDataSource" InsertItemPosition="LastItem">
                <EditItemTemplate>
                    <asp:HiddenField ID="ProviderID" runat="server" Value='<%# Eval("ProviderID") %>' />
                    <table style="width:100%">
                        <tr>
                            <td>Specialty:<br />
                                <asp:TextBox ID="SpecialtyTextBox" runat="server" Text='<%# Bind("Specialty") %>' />
                            </td>
                            <td>First Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                            </td>
                            <td>Last Name:<br />
                                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                            </td>
                            <td>Email:<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                            <td>Phone:<br />
                                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
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
                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                            </td>
                            <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <asp:HiddenField ID="ProviderID" runat="server" Value='<%# Eval("ProviderID") %>' />
                    <table style="width:100%">
                        <tr>
                            <td>Specialty:<br />
                                <asp:TextBox ID="SpecialtyTextBox" runat="server" Text='<%# Bind("Specialty") %>' />
                            </td>
                            <td>First Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                            </td>
                            <td>Last Name:<br />
                                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                            </td>
                            <td>Email:<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                            <td>Phone:<br />
                                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
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
                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                            </td>
                            <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:HiddenField ID="ProviderID" runat="server" Value='<%# Eval("ProviderID") %>' />
                    <table style="width:100%">
                        <tr>
                            <td>Specialty:<br />
                                <asp:TextBox ID="SpecialtyTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Specialty") %>' />
                            </td>
                            <td>First Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("FirstName") %>' />
                            </td>
                            <td>Last Name:<br />
                                <asp:TextBox ID="LastNameTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("LastName") %>' />
                            </td>
                            <td>Email:<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("Email") %>' />
                            </td>
                            <td>Phone:<br />
                                <asp:TextBox ID="PhoneTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("Phone") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Address:<br />
                                <asp:TextBox ID="AddressTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("Address") %>' />
                            </td>
                            <td>City:<br />
                                <asp:TextBox ID="CityTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("City") %>' />
                            </td>
                            <td>State:<br />
                                <asp:TextBox ID="StateTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("State") %>' />
                            </td>
                            <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" ReadOnly="true"  Text='<%# Eval("Zip") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>
                </asp:ListView>
            </div>
            <hr />
            <%--Medications Section--%>
            <h3 class="text-center">Medications</h3>
            <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                <asp:ListView ID="MedListView" runat="server" DataKeyNames="MedicationID" DataSourceID="MedSqlDataSource" InsertItemPosition="LastItem">
                    <EditItemTemplate>
                        <asp:HiddenField ID="MedicationID" runat="server" Value='<%# Eval("MedicationID") %>' />
                        <table style="width:100%">
                            <tr>
                                <td>Medication Name:<br />
                                    <asp:TextBox ID="Medication_NameTextBox" runat="server" Text='<%# Bind("Medication_Name") %>' />
                                </td>
                                <td>Dosage:<br />
                                    <asp:TextBox ID="DosageTextBox" runat="server" Text='<%# Bind("Dosage") %>' />
                                </td>
                                <td>Purpose:<br />
                                    <asp:TextBox ID="PurposeTextBox" runat="server" Text='<%# Bind("Purpose") %>' />
                                </td>
                                <td>Physician:<br />
                                    <asp:TextBox ID="PhysicianTextBox" runat="server" Text='<%# Bind("Physician") %>' />
                                </td>
                                <td>Non-Perscription:<br />
                                    <asp:TextBox ID="Non_PerscriptionTextBox" runat="server" Text='<%# Bind("Non_Perscription") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <asp:HiddenField ID="MedicationID" runat="server" Value='<%# Eval("MedicationID") %>' />
                        <table style="width:100%">
                            <tr>
                                <td>Medication Name:<br />
                                    <asp:TextBox ID="Medication_NameTextBox" runat="server" Text='<%# Bind("Medication_Name") %>' />
                                </td>
                                <td>Dosage:<br />
                                    <asp:TextBox ID="DosageTextBox" runat="server" Text='<%# Bind("Dosage") %>' />
                                </td>
                                <td>Purpose:<br />
                                    <asp:TextBox ID="PurposeTextBox" runat="server" Text='<%# Bind("Purpose") %>' />
                                </td>
                                <td>Physician:<br />
                                    <asp:TextBox ID="PhysicianTextBox" runat="server" Text='<%# Bind("Physician") %>' />
                                </td>
                                <td>Non-Perscription:<br />
                                    <asp:TextBox ID="Non_PerscriptionTextBox" runat="server" Text='<%# Bind("Non_Perscription") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:HiddenField ID="MedicationID" runat="server" Value='<%# Eval("MedicationID") %>' />
                        <table style="width:100%">
                            <tr>
                                <td>Medication Name:<br />
                                    <asp:TextBox ID="Medication_NameTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Medication_Name") %>' />
                                </td>
                                <td>Dosage:<br />
                                    <asp:TextBox ID="DosageTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Dosage") %>' />
                                </td>
                                <td>Purpose:<br />
                                    <asp:TextBox ID="PurposeTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Purpose") %>' />
                                </td>
                                <td>Physician:<br />
                                    <asp:TextBox ID="PhysicianTextBox" runat="server" Text='<%# Bind("Physician") %>' />
                                </td>
                                <td>Non-Perscription:<br />
                                    <asp:TextBox ID="Non_PerscriptionTextBox" runat="server" Text='<%# Bind("Non_Perscription") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                </asp:ListView>


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
                <asp:formview runat="server" DataKeyNames="InsuranceID" DataSourceID="InsurenceSqlDataSource">
                    <EditItemTemplate>
                        <table>
                            <tr>
                                <td>Medicaid Number:<br />
                                    <asp:TextBox ID="TextBox111" runat="server" Text='<%# Bind("Medicaid_Number") %>' />
                                </td>
                                <td>Medicare Number:<br />
                                    <asp:TextBox ID="TextBox112" runat="server" Text='<%# Bind("Medicare_Number") %>' />
                                </td>
                                <td>Insurance Name:<br />
                                    <asp:TextBox ID="TextBox113" runat="server" Text='<%# Bind("Insurance_Name") %>' />
                                </td>
                                <td>Policy Number:<br />
                                    <asp:TextBox ID="TextBox114" runat="server" Text='<%# Bind("Policy_Number") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Life Support:
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox115" runat="server" Text='<%# Bind("Life_Support") %>' />
                                </td>
                            </tr>            
                        </table>
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <table>
                            <tr>
                                <td>Medicaid Number:<br />
                                    <asp:TextBox ID="TextBox116" runat="server" Text='<%# Bind("Medicaid_Number") %>' />
                                </td>
                                <td>Medicare Number:<br />
                                    <asp:TextBox ID="TextBox117" runat="server" Text='<%# Bind("Medicare_Number") %>' />
                                </td>
                                <td>Insurance Name:<br />
                                    <asp:TextBox ID="TextBox118" runat="server" Text='<%# Bind("Insurance_Name") %>' />
                                </td>
                                <td>Policy Number:<br />
                                    <asp:TextBox ID="TextBox119" runat="server" Text='<%# Bind("Policy_Number") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Life Support:
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox120" runat="server" Text='<%# Bind("Life_Support") %>' />
                                </td>
                            </tr>            
                        </table>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>Medicaid Number:<br />
                                    <asp:TextBox ID="TextBox121" runat="server" ReadOnly="true" Text='<%# Bind("Medicaid_Number") %>' />
                                </td>
                                <td>Medicare Number:<br />
                                    <asp:TextBox ID="TextBox122" runat="server" ReadOnly="true" Text='<%# Bind("Medicare_Number") %>' />
                                </td>
                                <td>Insurance Name:<br />
                                    <asp:TextBox ID="TextBox123" runat="server" ReadOnly="true" Text='<%# Bind("Insurance_Name") %>' />
                                </td>
                                <td>Policy Number:<br />
                                    <asp:TextBox ID="TextBox124" runat="server" ReadOnly="true" Text='<%# Bind("Policy_Number") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Life Support:
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox125" runat="server" ReadOnly="true" Text='<%# Bind("Life_Support") %>' />
                                </td>
                            </tr>            
                        </table>
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:formview>

                <%--<div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
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
                </div>--%>
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
<%--  Ending Health Div  </div>
 Ending Javascript div </div>--%>
</asp:Content>
