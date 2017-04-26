<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="EditClient.aspx.cs" Inherits="EditClient" %>

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
    <asp:SqlDataSource ID="DDRaceSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Race] FROM [DD_Race]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDResidentialStatusSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Residential_Status] FROM [DD_Residential_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDPreferredLanguageSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Preferred_Language] FROM [DD_Preferred_Language]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDReligionSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Religion] FROM [DD_Religion]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDSexSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Sex] FROM [DD_Sex]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDServiceSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Service] FROM [DD_Service]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ClientSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [First_Name], [Last_Name], [Status], [DOB], [Age], [Address], [City], [State], [Zip], [Phone], [Email], [Sex], [Race], [Religion], [Residential_Status], [Preferred_Language], [SSN], [Staff_Ratio], [DSPD], [SSI], [SSA], [Modes_Communication], [Diagnosis], [PhotoID], [DateCreated], [DateModified], [ModifiedBy], [ClientID] FROM [Client] WHERE ([ClientID] = @ClientID)" UpdateCommand="UPDATE [Client] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Status] = @Status, [DOB] = @DOB, [Age] = @Age, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip, [Phone] = @Phone, [Email] = @Email, [Sex] = @Sex, [Race] = @Race, [Religion] = @Religion, [Residential_Status] = @Residential_Status, [Preferred_Language] = @Preferred_Language, [SSN] = @SSN, [Staff_Ratio] = @Staff_Ratio, [DSPD] = @DSPD, [SSI] = @SSI, [SSA] = @SSA, [Modes_Communication] = @Modes_Communication, [Diagnosis] = @Diagnosis, [PhotoID] = @PhotoID, [DateCreated] = @DateCreated, [DateModified] = GETDATE(), [ModifiedBy] = @ModifiedBy WHERE [ClientID] = @ClientID">
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
            <asp:Parameter Name="Religion" Type="String" />
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
            <asp:SessionParameter Name="ModifiedBy" Type="String" SessionField="CurrentUser" />
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
    
    <asp:SqlDataSource ID="HealthProfileSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Health_Profile] WHERE [Health_Profile_ID] = @Health_Profile_ID" InsertCommand="INSERT INTO [Health_Profile] ([Height], [Weight], [Hair], [Eyes], [Diagnosis], [Limitations], [Allergies], [Preferred_Hospital], [Hospital_Phone], [ClientID], [Address], [City], [State], [Zip]) VALUES (@Height, @Weight, @Hair, @Eyes, @Diagnosis, @Limitations, @Allergies, @Preferred_Hospital, @Hospital_Phone, @ClientID, @Address, @City, @State, @Zip)" SelectCommand="SELECT Health_Profile.Health_Profile_ID, Health_Profile.Height, Health_Profile.Weight, Health_Profile.Hair, Health_Profile.Eyes, Health_Profile.Diagnosis, Health_Profile.Limitations, Health_Profile.Allergies, Health_Profile.Preferred_Hospital, Health_Profile.Hospital_Phone, Health_Profile.ClientID, Health_Profile.Address, Health_Profile.City, Health_Profile.State, Health_Profile.Zip, Client.First_Name, Client.Last_Name, Client.DOB, Client.Sex FROM Health_Profile INNER JOIN Client ON Client.ClientID = Health_Profile.ClientID WHERE (Health_Profile.ClientID = @ClientID)" UpdateCommand="UPDATE Health_Profile SET Height = @Height, Weight = @Weight, Hair = @Hair, Eyes = @Eyes, Diagnosis = @Diagnosis, Limitations = @Limitations, Allergies = @Allergies, Preferred_Hospital = @Preferred_Hospital, Hospital_Phone = @Hospital_Phone, ClientID = @ClientID, Address = @Address, City = @City, State = @State, Zip = @Zip WHERE (Health_Profile_ID = @Health_Profile_ID)">
        <DeleteParameters>
            <asp:Parameter Name="Health_Profile_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Hair" Type="String" />
            <asp:Parameter Name="Eyes" Type="String" />
            <asp:Parameter Name="Diagnosis" Type="String" />
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
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Hair" Type="String" />
            <asp:Parameter Name="Eyes" Type="String" />
            <asp:Parameter Name="Diagnosis" Type="String" />
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
        .center{
        display: flex;
        justify-content: center;
        align-items: center;
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
                                            <asp:TextBox ID="RaceLabel" runat="server" ReadOnly="true" Text='<%# Bind("Race") %>' /></td>
                                     <td>Residential Status:<br />
                                            <asp:TextBox ID="Residential_StatusLabel" runat="server" ReadOnly="true" Text='<%# Bind("Residential_Status") %>' /></td>
                                     <td>Preferred Language:<br />
                                            <asp:TextBox ID="Preferred_LanguageLabel" runat="server" ReadOnly="true" Text='<%# Bind("Preferred_Language") %>' /></td>
                                     <td>Religious Affiliation:<br />
                                            <asp:TextBox ID="Religious_AffiliationLabel" runat="server" ReadOnly="true" Text='<%# Bind("Religion") %>' /></td>
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
                                        <td>Modes of Communication:<br />
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
                                            <asp:TextBox ID="DateCreatedLabel" runat="server" ReadOnly="true" Text='<%# Bind("DateCreated","{0:MM/dd/yyyy}") %>' /></td>
                                        <td>Date Modified:<br />
                                            <asp:TextBox ID="txtDateModified" runat="server" ReadOnly="true" Text='<%# Bind("DateModified","{0:MM/dd/yyyy}") %>' /></td>
                                        <td>Last Modified By:<br />
                                            <asp:TextBox ID="txtLastModifiedBy" runat="server" ReadOnly="true" Text='<%# Bind("ModifiedBy") %>' /></td>
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
                                           <asp:DropDownList ID="DropDownListSex" runat="server" DataSourceID="DDSexSqlDataSource" DataValueField="Sex" SelectedValue='<%# Bind("Sex") %>'></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                <td>Race:<br />
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DDRaceSqlDataSource" DataValueField="Race" SelectedValue='<%# Bind("Race") %>'></asp:DropDownList></td>
                                <td>Residential Status:<br />
                                     <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DDResidentialStatusSqlDataSource" DataValueField="Residential_Status" SelectedValue='<%# Bind("Residential_Status") %>'></asp:DropDownList></td>
                                <td>Preferred Language:<br />
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="DDPreferredLanguageSqlDataSource" DataValueField="Preferred_Language" SelectedValue='<%# Bind("Preferred_Language") %>'></asp:DropDownList></td>
                                <td>Religious Affiliation:<br />
                                     <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="DDReligionSqlDataSource" DataValueField="Religion" SelectedValue='<%# Bind("Religion") %>'></asp:DropDownList></td>
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
                                        <td>Modes of Communication:<br />
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
                        <asp:FileUpload ID="imageUpload" runat="server" /><br />
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
                                            <asp:TextBox ID="txtbState" runat="server" ReadOnly="true" Text='<%# Eval("State") %>' />
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
                <h3 class="text-center">Emergency Information</h3>
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <asp:FormView ID="EvacFormView" runat="server" DataSourceID="EvacSqlDataSource" DataKeyNames="EmergencyID" OnDataBound="EvacFormView_DataBound">
                        <EditItemTemplate>
                            <Label>Emergency Evacuation Needs:</Label><br />
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
                                         <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("Evac_State_1") %>'></asp:DropDownList>
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
                                         <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("Evac_State_2") %>'></asp:DropDownList>
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
                            <Label>Emergency Evacuation Needs:</Label><br />
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
                                         <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("Evac_State_1") %>'></asp:DropDownList>
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
                                         <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("Evac_State_2") %>'></asp:DropDownList>
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
                            <Label>Emergency Evacuation Needs:</Label><br />
                            <asp:TextBox ID="TextBox69" runat="server" ReadOnly="true" Text='<%# Eval("Emergency_Evac") %>' TextMode="MultiLine" Width="100%" />
                            <table style="width:100%">
                               <tr>
                                   <td>Evacuation Address 1:<br />
                                        <asp:TextBox ID="TextBox70" runat="server" ReadOnly="true" Text='<%# Eval("Evac_Address_1") %>' />
                                   </td>
                                   <td>Evacuation City 1:<br />
                                        <asp:TextBox ID="TextBox71" runat="server" ReadOnly="true" Text='<%# Eval("Evac_City_1") %>' />
                                   </td>
                                   <td>Evacuation State 1:<br />
                                         <asp:Textbox ID="DropDownList9" runat="server" ReadOnly="true" Text='<%# Eval("Evac_State_1") %>'></asp:Textbox>
                                   </td>
                                   <td>Evacuation Zip 1:<br />
                                        <asp:TextBox ID="TextBox73" runat="server" ReadOnly="true" Text='<%# Eval("Evac_Zip_1") %>' />
                                   </td>
                               </tr>
                                <tr>
                                   <td>Evacuation Addres 2:<br />
                                        <asp:TextBox ID="TextBox74" runat="server" ReadOnly="true" Text='<%# Eval("Evac_Address_2") %>' />
                                   </td>
                                   <td>Evacuation City 2:<br />
                                        <asp:TextBox ID="TextBox75" runat="server" ReadOnly="true" Text='<%# Eval("Evac_City_2") %>' />
                                   </td>
                                   <td>Evacuation State 2:<br />
                                        <asp:TextBox ID="DropDownList10" runat="server" ReadOnly="true" Text='<%# Eval("Evac_State_2") %>'></asp:TextBox>
                                   </td>
                                   <td>Evacuation Zip 2:<br />
                                        <asp:TextBox ID="TextBox77" runat="server" ReadOnly="true" Text='<%# Eval("Evac_Zip_2") %>' />
                                   </td>
                               </tr>
                            </table>
                            <asp:LinkButton ID="btnEvacEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:FormView>
                </div>
                <hr />
                <%--CETC Information--%>
                <h3 class="text-center">CETC Information</h3>
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
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
                                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="DDServiceSqlDataSource" DataValueField="Service" SelectedValue='<%# Bind("Service") %>'></asp:DropDownList>
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
                                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="DDServiceSqlDataSource" DataValueField="Service" SelectedValue='<%# Bind("Service") %>'></asp:DropDownList>
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
                            <asp:LinkButton ID="btnCETCEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                            <asp:LinkButton ID="btnCETCDelete" runat="server" CssClass="btn btn-primary" CommandName="Delete"><span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Delete</asp:LinkButton>
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
                        <asp:HiddenField runat="server" Value='<%# Eval("NonMedProviderID") %>' />
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
                                 <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList>
                                </td>
                                <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="btnNonMedUpdate" runat="server" CssClass="btn btn-primary" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Update</asp:LinkButton>
                        <asp:LinkButton ID="btnNonMedCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <asp:HiddenField runat="server" Value='<%# Eval("NonMedProviderID") %>' />
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
                                 <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList>
                                </td>
                                <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="btnNonMedInsert" runat="server" CssClass="btn btn-primary" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                        <asp:LinkButton ID="btnNonMedCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:HiddenField runat="server" Value='<%# Eval("NonMedProviderID") %>' />
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
                        <asp:LinkButton ID="btnNonMedEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                        <asp:LinkButton ID="btnNonMedDelete" runat="server" CssClass="btn btn-primary" CommandName="Delete"><span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Delete</asp:LinkButton>
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
            </div>
            </div>
        <div id="HealthProfile" class="tab-pane fade">
        <%--Client Health--%>
        <h3 class="text-center">Health Profile Information</h3>
        <hr>
        <%--//Page Header--%>
                <div class="centerForm">
                    <%--Health Information --%>
                   <h3 class="text-center">Health Information</h3>
                    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                        <asp:FormView ID="HelthProfileFormView" DataSourceID="HealthProfileSqlDataSource" runat="server" DataKeyNames="Health_Profile_ID" OnDataBound="HealthProfileFormView_DataBound">
                            <EditItemTemplate>
                                <asp:HiddenField runat="server" Value='<%# Eval("Health_Profile_ID") %>' />
                                <table style="width: 100%">
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
                                            <asp:TextBox ID="TextBox41" runat="server" Text='<%# Bind("Diagnosis") %>' TextMode="MultiLine" />
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
                                             <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList>
                                        </td>
                                        <td>Zip:<br />
                                            <asp:TextBox ID="TextBox49" runat="server" Text='<%# Bind("Zip") %>' />
                                        </td>
                                    </tr>
                                </table>
                                 <asp:LinkButton ID="btnHealthUpdate" runat="server" CssClass="btn btn-primary" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Update</asp:LinkButton>
                                 <asp:LinkButton ID="btnHealthCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:HiddenField runat="server" Value='<%# Eval("Health_Profile_ID") %>' />
                                <table style="width: 100%">
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
                                            <asp:TextBox ID="TextBox41" runat="server" Text='<%# Bind("Diagnosis") %>' TextMode="MultiLine" />
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
                                             <asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList></td>
                                        </td>
                                        <td>Zip:<br />
                                            <asp:TextBox ID="TextBox49" runat="server" Text='<%# Bind("Zip") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <asp:LinkButton ID="btnHealthInfoInsertButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                                <asp:LinkButton ID="btnHealthInfoInsertCancelButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:HiddenField runat="server" Value='<%# Eval("Health_Profile_ID") %>' />
                                <table style="width: 100%">
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
                                            <asp:TextBox ID="TextBox37" runat="server" ReadOnly="true" Text='<%# Eval("Height") %>' />
                                        </td>
                                        <td>Weight:<br />
                                            <asp:TextBox ID="TextBox38" runat="server" ReadOnly="true" Text='<%# Eval("Weight") %>' />
                                        </td>
                                        <td>Hair:<br />
                                            <asp:TextBox ID="TextBox39" runat="server" ReadOnly="true" Text='<%# Eval("Hair") %>' />
                                        </td>
                                        <td>Eyes:<br />
                                            <asp:TextBox ID="TextBox40" runat="server" ReadOnly="true" Text='<%# Eval("Eyes") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Diagnosis/Medical Condition:<br />
                                            <asp:TextBox ID="TextBox41" runat="server" ReadOnly="true" Text='<%# Eval("Diagnosis") %>' TextMode="MultiLine" />
                                        </td>
                                        <td>Medical Limitations/Adapitve Devices:<br />
                                            <asp:TextBox ID="TextBox42" runat="server" ReadOnly="true" Text='<%# Eval("Limitations") %>' TextMode="MultiLine" />
                                        </td>
                                        <td>Allergies:<br />
                                            <asp:TextBox ID="TextBox43" runat="server" ReadOnly="true" Text='<%# Eval("Allergies") %>' TextMode="MultiLine" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Preferred Hospital:<br />
                                            <asp:TextBox ID="TextBox44" runat="server" ReadOnly="true" Text='<%# Eval("Preferred_Hospital") %>' />
                                        </td>
                                        <td>Hospital Phone:<br />
                                            <asp:TextBox ID="TextBox45" runat="server" ReadOnly="true" Text='<%# Eval("Hospital_Phone") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="TextBox46" runat="server" ReadOnly="true" Text='<%# Eval("Address") %>' />
                                        </td>
                                        <td>City:<br />
                                            <asp:TextBox ID="TextBox47" runat="server" ReadOnly="true" Text='<%# Eval("City") %>' />
                                        </td>
                                        <td>State:<br />
                                            <asp:TextBox ID="TextBox48" runat="server" ReadOnly="true" Text='<%# Eval("State") %>' />
                                        </td>
                                        <td>Zip:<br />
                                            <asp:TextBox ID="TextBox49" runat="server" ReadOnly="true" Text='<%# Eval("Zip") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <asp:LinkButton ID="btnHeathEdit" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                                <asp:LinkButton ID="btnHealthDelete" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Delete"><span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Delete</asp:LinkButton>
                                <%--<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="New" Text="New" /> because this doesnt do anything useful--%>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                    <%--Medical Provider Section--%>
                    <h3 class="text-center">Medical Provider</h3>
                    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                        <asp:ListView ID="MedProviderListView" runat="server" DataKeyNames="ProviderID" DataSourceID="MedProvidersSqlDataSource" InsertItemPosition="LastItem">
                            <EditItemTemplate>
                                <asp:HiddenField ID="ProviderID" runat="server" Value='<%# Eval("ProviderID") %>' />
                                <table style="width: 100%">
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
                                             <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList></td>
                                        </td>
                                        <td>Zip:<br />
                                            <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:LinkButton ID="btnProviderUpdate" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Update</asp:LinkButton>
                                <asp:LinkButton ID="btnProviderCancel" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <asp:HiddenField ID="ProviderID" runat="server" Value='<%# Eval("ProviderID") %>' />
                                <table style="width: 100%">
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
                                            <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList></td>
                                        </td>
                                        <td>Zip:<br />
                                            <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:LinkButton ID="btnProviderInsert" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                                <asp:LinkButton ID="btnProviderCancel" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:HiddenField ID="ProviderID" runat="server" Value='<%# Eval("ProviderID") %>' />
                                <table style="width: 100%">
                                    <tr>
                                        <td>Specialty:<br />
                                            <asp:TextBox ID="SpecialtyTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Specialty") %>' />
                                        </td>
                                        <td>First Name:<br />
                                            <asp:TextBox ID="FirstNameTextBox" runat="server" ReadOnly="true" Text='<%# Eval("FirstName") %>' />
                                        </td>
                                        <td>Last Name:<br />
                                            <asp:TextBox ID="LastNameTextBox" runat="server" ReadOnly="true" Text='<%# Eval("LastName") %>' />
                                        </td>
                                        <td>Email:<br />
                                            <asp:TextBox ID="EmailTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Email") %>' />
                                        </td>
                                        <td>Phone:<br />
                                            <asp:TextBox ID="PhoneTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Phone") %>' />
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
                                        <td>Zip:<br />
                                            <asp:TextBox ID="ZipTextBox" runat="server" ReadOnly="true" Text='<%# Eval("Zip") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:LinkButton ID="btnProviderEdit" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                                <asp:LinkButton ID="btnProviderDelete" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Delete"><span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Delete</asp:LinkButton>
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
                                <table style="width: 100%">
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
                                        <td>
                                            <asp:CheckBox ID="Non_PerscriptionCheckBox" runat="server" Text="Non_Perscription" Checked='<%# Bind("Non_Perscription") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:LinkButton ID="btnMedUpdate" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Update</asp:LinkButton>
                                <asp:LinkButton ID="btnMedCancel" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <asp:HiddenField ID="MedicationID" runat="server" Value='<%# Eval("MedicationID") %>' />
                                <table style="width: 100%">
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
                                        <td>
                                            <asp:CheckBox ID="Non_PerscriptionCheckBox" runat="server" Text="Non_Perscription" Checked='<%# Bind("Non_Perscription") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:LinkButton ID="btnMedInsert" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                                <asp:LinkButton ID="btnMedCancel" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:HiddenField ID="MedicationID" runat="server" Value='<%# Eval("MedicationID") %>' />
                                <table style="width: 100%">
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
                                        <td>
                                            <asp:CheckBox ID="Non_PerscriptionCheckBox" runat="server" ReadOnly="true" Text="Non_Perscription" Checked='<%# Bind("Non_Perscription") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:LinkButton ID="btnMedEdit" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                                <asp:LinkButton ID="btnMedDelete" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Delete"><span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Delete</asp:LinkButton>
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
                    <%--Insurance Information --%>
                    <h3 class="text-center">Insurance</h3>
                    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                        <asp:FormView ID="InsuranceFormView" runat="server" DataKeyNames="InsuranceID" DataSourceID="InsurenceSqlDataSource" OnDataBound="InsuranceFormView_DataBound">
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
                                        <td>Life Support:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox115" runat="server" Text='<%# Bind("Life_Support") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <asp:LinkButton ID="btnInsuranceUpdate" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Update</asp:LinkButton>
                                <asp:LinkButton ID="btnInsuranceCancel" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                                        <td>Life Support:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox120" runat="server" Text='<%# Bind("Life_Support") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <asp:LinkButton ID="btnInsuranceInsert" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                                <asp:LinkButton ID="btnInsuranceCancel" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Cancel</asp:LinkButton>
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
                                        <td>Life Support:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox125" runat="server" ReadOnly="true" Text='<%# Bind("Life_Support") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <asp:LinkButton ID="btnInsuranceEdit" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                                <asp:LinkButton ID="btnInsuranceDelete" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Delete"><span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Delete</asp:LinkButton>
                                <%--&nbsp;<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="New" Text="New" /> because this doesnt do anything useful--%>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </div>
            <br />
            <br />
            </div>
    </div>
</asp:Content>
