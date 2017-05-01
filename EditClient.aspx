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
        tr {
            width: 100%;
        }
    </style>
    <asp:SqlDataSource ID="CETC_REF" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Director], [Address], [Phone], [Fax] FROM [REF_CETC]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDStatusSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [StatusID], [Status] FROM [DD_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDStatesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [State] FROM [DD_State]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDRelationshipsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Relationship] FROM [DD_Relationship]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDRaceSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Race] FROM [DD_Race]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDResidentialStatusSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Residential_Status] FROM [DD_Residential_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDPreferredLanguageSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Preferred_Language] FROM [DD_Preferred_Language]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDReligionSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Religion] FROM [DD_Religion]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDSexSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Sex] FROM [DD_Sex]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDServiceSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Service] FROM [DD_Service]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ClientSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [ClientID], [First_Name], [Last_Name], [Status], [DOB], [Age], [Address], [City], [State], [Zip], [Phone], [Email], [Sex], [Religion], [Race], [Residential_Status], [SSN], [Preferred_Language], [Staff_Ratio], [DSPD], [SSI], [SSA], [Modes_Communication], [Diagnosis], [PhotoID], [DateCreated], [DateModified], [ModifiedBy] FROM [Client] WHERE ([ClientID] = @ClientID)" UpdateCommand="UPDATE [Client] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Status] = @Status, [DOB] = @DOB, [Age] = @Age, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip, [Phone] = @Phone, [Email] = @Email, [Sex] = @Sex, [Religion] = @Religion, [Race] = @Race, [Residential_Status] = @Residential_Status, [SSN] = @SSN, [Preferred_Language] = @Preferred_Language, [Staff_Ratio] = @Staff_Ratio, [DSPD] = @DSPD, [SSI] = @SSI, [SSA] = @SSA, [Modes_Communication] = @Modes_Communication, [Diagnosis] = @Diagnosis, [PhotoID] = @PhotoID, [DateCreated] = @DateCreated, [DateModified] = @DateModified, [ModifiedBy] = @ModifiedBy WHERE [ClientID] = @ClientID">
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
            <asp:Parameter Name="Religion" Type="String" />
            <asp:Parameter Name="Race" Type="String" />
            <asp:Parameter Name="Residential_Status" Type="String" />
            <asp:Parameter Name="SSN" Type="String" />
            <asp:Parameter Name="Preferred_Language" Type="String" />
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
            <asp:Parameter Name="ClientID" Type="Int32" />
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

    <script>
        $(function () {
            //for bootstrap 3 use 'shown.bs.tab' instead of 'shown' in the next line
            $('a[data-toggle="tab"]').on('click', function (e) {
                //save the latest tab; use cookies if you like 'em better:
                localStorage.setItem('lastTab', $(e.target).attr('href'));
            });

            //go to the latest tab, if it exists:
            var lastTab = localStorage.getItem('lastTab');

            if (lastTab) {
                $('a[href="' + lastTab + '"]').click();
            }
        });
    </script>


    <ul class="nav nav-tabs">
        <li><a data-toggle="tab" href="#FaceSheet">Face Sheet</a></li>
        <li><a data-toggle="tab" href="#HealthProfile">Health Profile</a></li>
    </ul>
    <%--//Validation Report--%>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="Group1"/>
    <asp:Label ID="errorStatus" runat="server" ForeColor="Red" Visible="false" />
    <%--Face Sheet Panel--%>
    <div class="tab-content">
        <div id="FaceSheet" class="tab-pane fade">
        <h3 class="text-center">Face Sheet</h3>
            <hr />
            <%--//Data Entry Form--%>
            <div class="centerForm">
                <div class="row">
                    <div class="col-sm-9">
                        <asp:FormView runat="server" DataSourceID="ClientSqlDataSource" ID="ClientFormView" DataKeyNames="ClientID" OnItemCommand="FormView_ItemCommand" OnItemUpdated="ClientFormView_ItemUpdated" >
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>Status:<br />
                                            <asp:TextBox ID="StatusLabel" runat="server" ReadOnly="true" Text='<%# Eval("Status") %>' /></td>
                                        <td>Date Created:<br />
                                            <asp:TextBox ID="DateCreatedLabel" runat="server" ReadOnly="true" Text='<%# Eval("DateCreated", "{0:MM/dd/yyyy}") %>' BackColor="Silver" /></td>
                                        <td>Date Modified:<br />
                                            <asp:TextBox ID="DateModifiedLabel" runat="server" ReadOnly="true" Text='<%# Eval("DateModified", "{0:MM/dd/yyyy}") %>' BackColor="Silver" /></td>
                                        <td>Last Modified By:<br />
                                            <asp:TextBox ID="LastModifiedByLabel" runat="server" ReadOnly="true" Text='<%# Eval("ModifiedBy") %>' BackColor="Silver" /></td>
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
                                            <asp:TextBox ID="DateCreatedLabel" runat="server" ReadOnly="true" Text='<%# Bind("DateCreated","{0:MM/dd/yyyy}") %>' BackColor="Silver" /></td>
                                        <td>Date Modified:<br />
                                            <asp:TextBox ID="txtDateModified" runat="server" ReadOnly="true" Text='<%# Bind("DateModified","{0:MM/dd/yyyy}") %>' BackColor="Silver" /></td>
                                        <td>Last Modified By:<br />
                                            <asp:TextBox ID="txtLastModifiedBy" runat="server" ReadOnly="true" Text='<%# Bind("ModifiedBy") %>' BackColor="Silver" /></td>
                                    </tr>
                                    <tr>
                                        <td>First Name:<br />
                                            <asp:TextBox ID="First_NameLabel" runat="server" Text='<%# Bind("First_Name") %>' /></td>
                                            <!-- Validator(s) for First_NameLabel here-->
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a first name" ControlToValidate="First_NameLabel" Display="Dynamic" Text="*" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="First name can only contain letters" ControlToValidate="First_NameLabel" Display="Dynamic" Text="*" ForeColor="Red" ValidationGroup="Group1" Operator="DataTypeCheck"></asp:CompareValidator>
                                        <td>Last Name:<br />
                                            <asp:TextBox ID="Last_NameLabel" runat="server" Text='<%# Bind("Last_Name") %>' /></td>
                                            <!-- Validator(s) for Last_NameLabel here-->
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a last name" ControlToValidate="Last_NameLabel" Display="Dynamic" Text="*" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Last name can only contain letters" ControlToValidate="Last_NameLabel" Display="Dynamic" Text="*" ForeColor="Red" ValidationGroup="Group1" Operator="DataTypeCheck" Type="String" ></asp:CompareValidator>
                                        <td>Date of Birth:<br />
                                            <asp:TextBox ID="DOBLabel" runat="server" Text='<%# Bind("DOB", "{0:MM/dd/yyyy}") %>' TextMode="Date" />
                                            <!-- Validator(s) for DOBLabel here-->
                                            <asp:RangeValidator ID="RangeValidator2" runat="server" Text="*" ErrorMessage="Select a date between 1/1/1900 and today" ControlToValidate="DOBLabel" Display="Dynamic" MinimumValue="01/01/1900" MaximumValue="<%# DateTime.Today.ToShortDateString() %>" Type="Date" ForeColor="Red" ValidationGroup="Group1"></asp:RangeValidator>
                                        </td>
                                        <td>Age:<br />
                                            <asp:TextBox ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' MaxLength="3" />
                                            <!-- Validator(s) for AgeLabel here-->
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeLabel" ErrorMessage="Please enter a valid age" MinimumValue="1" MaximumValue="100" ForeColor="Red" Display="Dynamic" Type="Integer" Text="*" ValidationGroup="Group1"></asp:RangeValidator>
                                            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="AgeLabel" ErrorMessage="Please enter a whole number greater than 0" Type="Integer" ValueToCompare="0" Operator="GreaterThan" ForeColor="Red" Display="Dynamic" Text="*" ValidationGroup="Group1"></asp:CompareValidator>                                   
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                                            <!-- Validator(s) for CityLabel here-->
                                            <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="City can only contain letters" ControlToValidate="AddressLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group1"></asp:CompareValidator>
                                        </td>
                                        <td>City:<br />
                                            <asp:TextBox ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                                            <!-- Validator(s) for CityLabel here-->
                                            <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="City can only contain letters" ControlToValidate="CityLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group1"></asp:CompareValidator>
                                        </td>
                                        <td>State:<br />
                                            <asp:DropDownList ID="ddState" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList></td>
                                        <td>Zip Code:<br />
                                            <asp:TextBox ID="Zip_CodeLabel" runat="server" Text='<%# Bind("Zip") %>' MaxLength="5" />
                                            <!-- Validator(s) for Zip_CodeLabel here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Zip_CodeLabel" ErrorMessage="Please enter a valid zip code" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group1" Text="*"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Email:<br />
                                            <asp:TextBox ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" />
                                            <!-- Validator(s) for EmailLabel here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="EmailLabel" ErrorMessage="Please enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="Group1" Text="*"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>Phone:<br />
                                            <asp:TextBox ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' TextMode="Phone" MaxLength="12" />                                           
                                            <!-- Validator(s) for PhoneLabel here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="PhoneLabel" ErrorMessage="Please enter a valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" Display="Dynamic" Text="*" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                                            <br />(###-###-####)
                                        </td>
                                        <td>SSN:<br />
                                            <asp:TextBox ID="SSNLabel" runat="server" Text='<%# Bind("SSN") %>' MaxLength="11" />
                                            <!-- Validator(s) for SSNLabel here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="SSNLabel" ErrorMessage="Please enter a valid social security number" ValidationExpression="\d{3}-\d{2}-\d{4}" ForeColor="Red" Display="Dynamic" Text="*" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                                            <br />(###-##-####)
                                        </td>
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
                                            <asp:TextBox ID="Staffing_RatioLabel" runat="server" Text='<%# Bind("Staff_Ratio") %>' />
                                            <!-- Validator(s) for Staffing_RatioLabel here-->
                                            <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Please enter a ratio" ControlToValidate="Staffing_RatioLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group1"></asp:CompareValidator>
                                        </td>
                                        <td>DSPD:<br />
                                            <asp:TextBox ID="DSPDLabel" runat="server" Text='<%# Bind("DSPD") %>' />
                                            <!-- Validator(s) for DSPDLabel here-->
                                            <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Please enter a dspd" ControlToValidate="DSPDLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group1"></asp:CompareValidator>
                                        </td>
                                        <td>SSI:<br />
                                            <asp:TextBox ID="SSILabel" runat="server" Text='<%# Bind("SSI") %>' />
                                            <!-- Validator(s) for SSILabel here-->
                                            <asp:CompareValidator ID="CompareValidator8" runat="server" ErrorMessage="Please enter a ssi" ControlToValidate="SSILabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group1"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>SSA:<br />
                                            <asp:TextBox ID="SSALabel" runat="server" Text='<%# Bind("SSA") %>' />
                                            <!-- Validator(s) for SSALabel here-->
                                            <asp:CompareValidator ID="CompareValidator9" runat="server" ErrorMessage="Please enter a ssa" ControlToValidate="SSALabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group1"></asp:CompareValidator>
                                        </td>
                                        <td>Modes of Communication:<br />
                                            <asp:TextBox ID="Modes_CommunicationLabel" runat="server" Text='<%# Bind("Modes_Communication") %>' />
                                            <!-- Validator(s) for CommunicationLabel here-->
                                            <asp:CompareValidator ID="CompareValidator10" runat="server" ErrorMessage="Please enter a mode of communication" ControlToValidate="Modes_CommunicationLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group1"></asp:CompareValidator>
                                        </td>
                                        <td>Diagnosis:<br />
                                            <asp:TextBox ID="DiagnosisLabel" runat="server" Text='<%# Bind("Diagnosis") %>' />
                                            <!-- Validator(s) for DiagnosisLabel here-->
                                            <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="Please enter a diagnosis" ControlToValidate="DiagnosisLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group1"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:LinkButton ID="btnClientSave" runat="server" CssClass="btn btn-primary" CommandName="Update" CausesValidation="True" ValidationGroup="Group1"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                                <asp:LinkButton ID="btnClientCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel" CausesValidation="False" ValidationGroup="Group1"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                <%--//Validation Report--%>
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="Group2"/>
                    <h3 class="text-center">Family/Guardian/Residential Contact Information</h3>
                    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <asp:ListView ID="ContactListView" runat="server" DataKeyNames="ContactID" DataSourceID="ContactSqlDataSource" InsertItemPosition="LastItem" OnItemCommand="ListView_ItemCommand">
                        <EditItemTemplate>
                            <asp:HiddenField ID="ClientID" runat="server" Value='<%# Bind("ClientID") %>' />
                            <table style="width:100%">
                                    <tr>
                                        <td>First Name:<br />
                                            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                                            <!-- Validator(s) for FirstNameTextBox here-->
                                            <asp:CompareValidator ID="CompareValidator12" runat="server" Text="*" ControlToValidate="FirstNameTextBox" ErrorMessage="Contact first name can only contain letters" Display="Dynamic" ForeColor="Red" ValidationGroup="Group2" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
                                        </td>
                                        <td>Last Name:<br />
                                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                                            <!-- Validator(s) for LastNameTextBox here-->
                                            <asp:CompareValidator ID="CompareValidator13" runat="server" Text="*" ControlToValidate="LastNameTextBox" ErrorMessage="Contact last name can only contain letters" Display="Dynamic" ForeColor="Red" ValidationGroup="Group2" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
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
                                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" />
                                            <!-- Validator(s) for EmailTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>Home Phone:<br />
                                            <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>' MaxLength="12" TextMode="Phone" />
                                            <!-- Validator(s) for HomePhoneTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="HomePhoneTextBox" ErrorMessage="Please enter a valid home number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                            <br />(###-###-####)                                           
                                        </td>
                                        <td>Work Phone:<br />
                                            <asp:TextBox ID="WorkPhoneTextBox" runat="server" Text='<%# Bind("WorkPhone") %>' MaxLength="12" TextMode="Phone" />
                                            <!-- Validator(s) for WorkPhoneTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="WorkPhoneTextBox" ErrorMessage="Please enter a valid work number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                            <br />(###-###-####)                                            
                                        </td>
                                        <td>Mobile Phone:<br />
                                            <asp:TextBox ID="MobilePhoneTextBox" runat="server" Text='<%# Bind("MobilePhone") %>' MaxLength="12" TextMode="Phone" />
                                            <!-- Validator(s) for MobilePhoneTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="MobilePhoneTextBox" ErrorMessage="Please enter a valid mobile number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                            <br />(###-###-####)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                             <!-- Validator(s) for AddressTextBox here-->
                                            <asp:CompareValidator ID="CompareValidator14" runat="server" ErrorMessage="Please enter a valid type of address" ControlToValidate="AddressTextBox" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group2"></asp:CompareValidator>
                                        </td>
                                        <td>City:<br />
                                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                                            <!-- Validator(s) for CityTextBox here-->
                                            <asp:CompareValidator ID="CompareValidator15" runat="server" ErrorMessage="City can only contain letters" ControlToValidate="CityTextBox" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group2"></asp:CompareValidator>
                                        </td>
                                        <td>State:<br />
                                            <asp:DropDownList ID="ddState" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>' />
                                        </td>
                                        <td>Zip Code:<br />
                                            <asp:TextBox ID="Zip_CodeTextBox" runat="server" Text='<%# Bind("Zip") %>' MaxLength="5" />
                                            <!-- Validator(s) for Zip_CodeTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="Zip_CodeTextBox" ErrorMessage="Please enter a valid zip code" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            <br />
                                <asp:LinkButton ID="btnContactSave" runat="server" CssClass="btn btn-primary" CommandName="Update" CausesValidation="True" ValidationGroup="Group2"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                                <asp:LinkButton ID="btnContactCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel" CausesValidation="False" ValidationGroup="Group2"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                                <asp:LinkButton ID="btnContactDelete" runat="server" CssClass="btn btn-primary" CommandName="Delete" ValidationGroup="Group2"><span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Delete</asp:LinkButton>
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
                                            <!-- Validator(s) for FirstNameTextBox here-->
                                            <asp:CompareValidator ID="CompareValidator16" runat="server" Text="*" ControlToValidate="FirstNameTextBox" ErrorMessage="Contact first name can only contain letters" Display="Dynamic" ForeColor="Red" ValidationGroup="Group2" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
                                        </td>
                                        <td>Last Name:<br />
                                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                                            <!-- Validator(s) for LastNameTextBox here-->
                                            <asp:CompareValidator ID="CompareValidator17" runat="server" Text="*" ControlToValidate="LastNameTextBox" ErrorMessage="Contact last name can only contain letters" Display="Dynamic" ForeColor="Red" ValidationGroup="Group2" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
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
                                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" />
                                            <!-- Validator(s) for EmailTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>Home Phone:<br />
                                            <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>' MaxLength="12" TextMode="Phone" />
                                            <!-- Validator(s) for HomePhoneTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="HomePhoneTextBox" ErrorMessage="Please enter a valid home number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                            <br />(###-###-####)                                           
                                        </td>
                                        <td>Work Phone:<br />
                                            <asp:TextBox ID="WorkPhoneTextBox" runat="server" Text='<%# Bind("WorkPhone") %>' MaxLength="12" TextMode="Phone" />
                                            <!-- Validator(s) for WorkPhoneTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="WorkPhoneTextBox" ErrorMessage="Please enter a valid work number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                            <br />(###-###-####)                                            
                                        </td>
                                        <td>Mobile Phone:<br />
                                            <asp:TextBox ID="MobilePhoneTextBox" runat="server" Text='<%# Bind("MobilePhone") %>' MaxLength="12" TextMode="Phone" />
                                            <!-- Validator(s) for MobilePhoneTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="MobilePhoneTextBox" ErrorMessage="Please enter a valid mobile number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                            <br />(###-###-####)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                             <!-- Validator(s) for AddressTextBox here-->
                                            <asp:CompareValidator ID="CompareValidator18" runat="server" ErrorMessage="Please enter a valid type of address" ControlToValidate="AddressTextBox" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group2"></asp:CompareValidator>
                                        </td>
                                        <td>City:<br />
                                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                                            <!-- Validator(s) for CityTextBox here-->
                                            <asp:CompareValidator ID="CompareValidator19" runat="server" ErrorMessage="City can only contain letters" ControlToValidate="CityTextBox" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group2"></asp:CompareValidator>
                                        </td>
                                        <td>State:<br />
                                            <asp:DropDownList ID="ddState" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>' />
                                        </td>
                                        <td>Zip Code:<br />
                                            <asp:TextBox ID="Zip_CodeTextBox" runat="server" Text='<%# Bind("Zip") %>' MaxLength="5" />
                                            <!-- Validator(s) for Zip_CodeTextBox here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ControlToValidate="Zip_CodeTextBox" ErrorMessage="Please enter a valid zip code" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group2" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            <br />
                                <asp:LinkButton ID="btnContactInsert" runat="server" CssClass="btn btn-primary" CommandName="Insert" ValidationGroup="Group2"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                                <asp:LinkButton ID="btnContactCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel" ValidationGroup="Group2"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                            <asp:LinkButton ID="btnContactEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit" ValidationGroup="Group2"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
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
                <%--<asp:LinkButton ID="btnContactCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>--%>                <%--Emergency Information--%>
                <asp:ValidationSummary ID="ValidationSummary3" runat="server" ForeColor="Red" ValidationGroup="Group3"/>
                <h3 class="text-center">Emergency Information</h3>
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <div class="row">
                    <div class="col-sm-12">
                    <asp:FormView ID="EvacFormView" runat="server" DataSourceID="EvacSqlDataSource" DataKeyNames="EmergencyID" OnDataBound="EvacFormView_DataBound" OnItemCommand="FormView_ItemCommand" OnItemUpdated="EvacFormView_ItemUpdated">
                        <EditItemTemplate>
                            <Label>Emergency Evacuation Needs:</Label><br />
                              <asp:TextBox ID="TextBox51" runat="server" Text='<%# Bind("Emergency_Evac") %>' TextMode="MultiLine" Width="100%" />
                                    <!-- Validator(s) for TextBox51 here-->
                                        <asp:CompareValidator ID="CompareValidator20" runat="server" ErrorMessage="Please enter valid emergency evacuation needs" ControlToValidate="TextBox51" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                            <table style="width:100%">
                               <tr>
                                   <td>Evacuation Address 1:<br />
                                        <asp:TextBox ID="TextBox52" runat="server" Text='<%# Bind("Evac_Address_1") %>' />
                                        <!-- Validator(s) for TextBox52 here-->
                                            <asp:CompareValidator ID="CompareValidator21" runat="server" ErrorMessage="Please enter a valid type of address" ControlToValidate="TextBox52" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                                   </td>
                                   <td>Evacuation City 1:<br />
                                        <asp:TextBox ID="TextBox53" runat="server" Text='<%# Bind("Evac_City_1") %>' />
                                        <!-- Validator(s) for TextBox53 here-->
                                            <asp:CompareValidator ID="CompareValidator22" runat="server" ErrorMessage="Please enter a valid type of city" ControlToValidate="TextBox53" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                                   </td>
                                   <td>Evacuation State 1:<br />
                                         <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("Evac_State_1") %>'></asp:DropDownList>
                                   </td>
                                   <td>Evacuation Zip 1:<br />
                                        <asp:TextBox ID="TextBox55" runat="server" Text='<%# Bind("Evac_Zip_1") %>' />
                                        <!-- Validator(s) for TextBox55 here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ControlToValidate="TextBox55" ErrorMessage="Please enter a valid zip code" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group3" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                   </td>
                               </tr>
                                <tr>
                                   <td>Evacuation Address 2:<br />
                                        <asp:TextBox ID="TextBox56" runat="server" Text='<%# Bind("Evac_Address_2") %>' />
                                        <!-- Validator(s) for TextBox56 here-->
                                            <asp:CompareValidator ID="CompareValidator23" runat="server" ControlToValidate="TextBox56" ErrorMessage="Please enter a valid type of address"  Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                                   </td>
                                   <td>Evacuation City 2:<br />
                                        <asp:TextBox ID="TextBox57" runat="server" Text='<%# Bind("Evac_City_2") %>' />
                                        <!-- Validator(s) for TextBox57 here-->
                                            <asp:CompareValidator ID="CompareValidator24" runat="server" ControlToValidate="TextBox57" ErrorMessage="Please enter a valid type of city" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                                   </td>
                                   <td>Evacuation State 2:<br />
                                         <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("Evac_State_2") %>'></asp:DropDownList>
                                   </td>
                                   <td>Evacuation Zip 2:<br />
                                        <asp:TextBox ID="TextBox59" runat="server" Text='<%# Bind("Evac_Zip_2") %>' />
                                        <!-- Validator(s) for TextBox59 here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server" ControlToValidate="TextBox59" ErrorMessage="Please enter a valid zip code" Display="Dynamic" Text="*" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group3"></asp:RegularExpressionValidator>
                                   </td>
                               </tr>
                            </table>
                            <asp:LinkButton ID="btnEvacSave" runat="server" CssClass="btn btn-primary" CommandName="Update" ValidationGroup="Group3"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                            <asp:LinkButton ID="btnEvacCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel" ValidationGroup="Group3"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <Label>Emergency Evacuation Needs:</Label><br />
                            <asp:TextBox ID="TextBox60" runat="server" Text='<%# Bind("Emergency_Evac") %>' TextMode="MultiLine" Width="100%" />
                            <!-- Validator(s) for TextBox60 here-->
                                <asp:CompareValidator ID="CompareValidator34" runat="server" ControlToValidate="TextBox60" ErrorMessage="Please enter valid emergency evacuation needs" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                            <table style="width:100%">
                               <tr>
                                   <td>Evacuation Address 1:<br />
                                        <asp:TextBox ID="TextBox61" runat="server" Text='<%# Bind("Evac_Address_1") %>' />
                                   <!-- Validator(s) for TextBox61 here-->
                                            <asp:CompareValidator ID="CompareValidator25" runat="server" ControlToValidate="TextBox61" ErrorMessage="Please enter valid emergency evacuation needs" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                                   </td>
                                   <td>Evacuation City 1:<br />
                                        <asp:TextBox ID="TextBox62" runat="server" Text='<%# Bind("Evac_City_1") %>' />
                                   <!-- Validator(s) for TextBox62 here-->
                                            <asp:CompareValidator ID="CompareValidator26" runat="server" ControlToValidate="TextBox62" ErrorMessage="Please enter a valid type of address" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                                   </td>
                                   <td>Evacuation State 1:<br />
                                         <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("Evac_State_1") %>'></asp:DropDownList>
                                   </td>
                                   <td>Evacuation Zip 1:<br />
                                        <asp:TextBox ID="TextBox64" runat="server" Text='<%# Bind("Evac_Zip_1") %>' />
                                   <!-- Validator(s) for TextBox64 here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server" ControlToValidate="TextBox64" ErrorMessage="Please enter a valid zip code" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" Display="Dynamic" Text="*" ValidationGroup="Group3"></asp:RegularExpressionValidator>                                  
                                   </td>
                               </tr>
                                <tr>
                                   <td>Evacuation Address 2:<br />
                                        <asp:TextBox ID="TextBox65" runat="server" Text='<%# Bind("Evac_Address_2") %>' />
                                   <!-- Validator(s) for TextBox65 here-->
                                            <asp:CompareValidator ID="CompareValidator27" runat="server" ControlToValidate="TextBox65" ErrorMessage="Please enter a valid type of address"  Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                                   </td>
                                   <td>Evacuation City 2:<br />
                                        <asp:TextBox ID="TextBox66" runat="server" Text='<%# Bind("Evac_City_2") %>' />
                                   <!-- Validator(s) for TextBox66 here-->
                                            <asp:CompareValidator ID="CompareValidator28" runat="server" ControlToValidate="TextBox66" ErrorMessage="Please enter a valid type of city" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group3"></asp:CompareValidator>
                                   </td>
                                   <td>Evacuation State 2:<br />
                                         <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("Evac_State_2") %>'></asp:DropDownList>
                                   </td>
                                   <td>Evacuation Zip 2:<br />
                                        <asp:TextBox ID="TextBox68" runat="server" Text='<%# Bind("Evac_Zip_2") %>' />
                                   <!-- Validator(s) for TextBox68 here-->
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator19" runat="server" ControlToValidate="TextBox68" ErrorMessage="Please enter a valid zip code" Display="Dynamic" Text="*" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group3"></asp:RegularExpressionValidator>
                                   </td>
                               </tr>
                            </table>
                            <asp:LinkButton ID="btnEvacInsert" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" ValidationGroup="Group3"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            <asp:LinkButton ID="btnEvacCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel" ValidationGroup="Group3"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <Label>Emergency Evacuation Needs:</Label><br />
                            <asp:TextBox ID="TextBox69" runat="server" ReadOnly="true" Text='<%# Eval("Emergency_Evac") %>' TextMode="MultiLine" Width="100%" />
                            <table style="min-width: 1080px;">
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
                                   <td>Evacuation Address 2:<br />
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
                            <asp:LinkButton ID="btnEvacEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit" ValidationGroup="Group3"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:FormView>
                    </div>
                    </div>
                </div>
                <hr />
                
                <%--//CETC Information--%>
                <h3 class="text-center">CETC Information</h3>
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <div class="row">
                        <div class="col-sm-4">
                    <asp:FormView ID="CETC_REF_FormView" runat="server" DataSourceID="CETC_REF">
                        <ItemTemplate>
                            Director:
                            <asp:Label ID="DirectorLabel" runat="server" Text='<%# Bind("Director") %>' />
                            <br />
                            Address:
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                            <br />
                            Phone:
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                            <br />
                            Fax:
                            <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>' />
                            <br />
                            <hr />
                        </ItemTemplate>
                    </asp:FormView>
                            </div>
                            </div>
                    <%--//Services Information--%>
                    <%--//Validation Report--%>
                    <asp:ValidationSummary ID="ValidationSummary4" runat="server" ForeColor="Red" ValidationGroup="Group4"/>
                    <asp:ListView ID="ServiceListView" runat="server" DataSourceID="CetcInfoSqlDataSource" DataKeyNames="CECTID" InsertItemPosition="LastItem" OnItemCommand="ListView_ItemCommand">
                        <EditItemTemplate>
                            <asp:HiddenField ID="CECTIDLabel1" runat="server" Value='<%# Eval("CECTID") %>' />
                            <table style="width:100%">
                                <tr>
                                    <td>Service:<br />
                                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="DDServiceSqlDataSource" DataValueField="Service" SelectedValue='<%# Bind("Service") %>'></asp:DropDownList>
                                    </td>
                                    <td>Coordinator:<br />
                                    <asp:TextBox ID="CoordinatorTextBox" runat="server" Text='<%# Bind("Coordinator") %>' />
                                    <!-- Validator(s) for CoordinatorTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator25" runat="server" ControlToValidate="CoordinatorTextBox" ErrorMessage="Please enter a valid type of coordinator" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group4"></asp:CompareValidator>
                                    </td>
                                    <td>DeptHead:<br />
                                    <asp:TextBox ID="DeptHeadTextBox" runat="server" Text='<%# Bind("DeptHead") %>' />
                                    <!-- Validator(s) for DeptHeadTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator26" runat="server" ControlToValidate="DeptHeadTextBox" ErrorMessage="Please enter a valid type of department head" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group4"></asp:CompareValidator>
                                    </td>
                                </tr>
                                </table>
                            <br />
                            <asp:LinkButton ID="btnServiceSave" runat="server" CssClass="btn btn-primary" CommandName="Update" ValidationGroup="Group4"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                            <asp:LinkButton ID="btnServiceCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel" ValidationGroup="Group4"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                                    <!-- Validator(s) for CoordinatorTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator27" runat="server" ControlToValidate="CoordinatorTextBox" ErrorMessage="Please enter a valid type of coordinator" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group4"></asp:CompareValidator>
                                    </td>
                                    <td>DeptHead:<br />
                                    <asp:TextBox ID="DeptHeadTextBox" runat="server" Text='<%# Bind("DeptHead") %>' />
                                    <!-- Validator(s) for DeptHeadTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator28" runat="server" ControlToValidate="DeptHeadTextBox" ErrorMessage="Please enter a valid type of department head" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group4"></asp:CompareValidator>
                                    </td>
                                </tr>
                                </table>
                            <br />
                            <asp:LinkButton ID="btnServiceInsert" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" ValidationGroup="Group4"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            <asp:LinkButton ID="btnServiceCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel" ValidationGroup="Group4"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                            <asp:LinkButton ID="btnCETCEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit" ValidationGroup="Group4"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                            <asp:LinkButton ID="btnCETCDelete" runat="server" CssClass="btn btn-primary" CommandName="Delete" ValidationGroup="Group4"><span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Delete</asp:LinkButton>
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
                <%--//Validation Report--%>                <%--Provider Information--%>
                <asp:ValidationSummary ID="ValidationSummary5" runat="server" ForeColor="Red" ValidationGroup="Group5"/>
                <h3 class="text-center">Providers</h3>
                <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                <asp:ListView ID="NonMedProviderListView" runat="server" DataKeyNames="NonMedProviderID" DataSourceID="ProviderNonMedSqlDataSource" InsertItemPosition="LastItem" OnItemCommand="ListView_ItemCommand">
                    <EditItemTemplate>
                        <asp:HiddenField runat="server" Value='<%# Eval("NonMedProviderID") %>' />
                        <table>
                            <tr>
                                <td>Provider:<br />
                                <asp:TextBox ID="ProviderNameTextBox" runat="server" Text='<%# Bind("Provider") %>' />
                                <!-- Validator(s) for ProviderNameTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator29" runat="server" ControlToValidate="ProviderNameTextBox" ErrorMessage="Please enter a valid type of provider" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>First Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                                <!-- Validator(s) for FirstNameTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator30" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="Please enter a valid first name" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>Last Name:<br />
                                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                                <!-- Validator(s) for LastNameTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator31" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Please enter a valid last name" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>Email:<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" />
                                <!-- Validator(s) for EmailTextBox here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="Group5" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                        
                                </td>
                                <td>Phone:<br />
                                <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' TextMode="Phone" />
                                <!-- Validator(s) for MobilePhoneTextBox here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator21" runat="server" ControlToValidate="HomePhoneTextBox" ErrorMessage="Please enter a valid home number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group5" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                <br />(###-###-####)
                                </td>
                            </tr>
                            <tr>
                                <td>Address:<br />
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                <!-- Validator(s) for AddressTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator32" runat="server" ControlToValidate="AddressTextBox" ErrorMessage="Please enter a valid type of address" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>City:<br />
                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                                <!-- Validator(s) for CityTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator33" runat="server" ControlToValidate="CityTextBox" ErrorMessage="Please enter a valid type of city" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>State:<br />
                                 <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList>
                                </td>
                                <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                <!-- Validator(s) for ZipTextBox here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server" ControlToValidate="ZipTextBox" ErrorMessage="Please enter a valid zip code" Display="Dynamic" Text="*" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group5"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="btnNonMedUpdate" runat="server" CssClass="btn btn-primary" CommandName="Update" ValidationGroup="Group5"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Update</asp:LinkButton>
                        <asp:LinkButton ID="btnNonMedCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel" ValidationGroup="Group5"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                                <!-- Validator(s) for ProviderNameTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator34" runat="server" ControlToValidate="ProviderNameTextBox" ErrorMessage="Please enter a valid type of provider" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>First Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                                <!-- Validator(s) for FirstNameTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator35" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="Please enter a valid first name" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>Last Name:<br />
                                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                                <!-- Validator(s) for LastNameTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator36" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Please enter a valid last name" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>Email:<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" />
                                <!-- Validator(s) for EmailTextBox here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="Group5" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                        
                                </td>
                                <td>Phone:<br />
                                <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' TextMode="Phone" />
                                <!-- Validator(s) for MobilePhoneTextBox here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator24" runat="server" ControlToValidate="HomePhoneTextBox" ErrorMessage="Please enter a valid home number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group5" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                <br />(###-###-####)
                                </td>
                            </tr>
                            <tr>
                                <td>Address:<br />
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                <!-- Validator(s) for AddressTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator37" runat="server" ControlToValidate="AddressTextBox" ErrorMessage="Please enter a valid type of address" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>City:<br />
                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                                <!-- Validator(s) for CityTextBox here-->
                                    <asp:CompareValidator ID="CompareValidator38" runat="server" ControlToValidate="CityTextBox" ErrorMessage="Please enter a valid type of city" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group5"></asp:CompareValidator>
                                </td>
                                <td>State:<br />
                                 <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList>
                                </td>
                                <td>Zip:<br />
                                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                <!-- Validator(s) for ZipTextBox here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator25" runat="server" ControlToValidate="ZipTextBox" ErrorMessage="Please enter a valid zip code" Display="Dynamic" Text="*" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group5"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="btnNonMedInsert" runat="server" CssClass="btn btn-primary" CommandName="Insert" ValidationGroup="Group5"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                        <asp:LinkButton ID="btnNonMedCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel" ValidationGroup="Group5"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
            <%--//Validation Report--%>
        <h3 class="text-center">Health Profile Information</h3>
        <hr>
            <%--Client Health--%>
                <div class="centerForm">
                    <%--//Page Header--%>                    <%--Health Information --%>
                    <asp:ValidationSummary ID="ValidationSummary6" runat="server" ForeColor="Red" ValidationGroup="Group6"/>
                   <h3 class="text-center">Health Information</h3>
                    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                        <asp:FormView ID="HelthProfileFormView" DataSourceID="HealthProfileSqlDataSource" runat="server" DataKeyNames="Health_Profile_ID" OnDataBound="HealthProfileFormView_DataBound" OnItemCommand="FormView_ItemCommand" OnItemUpdated="HelthProfileFormView_ItemUpdated">
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
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator39" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid height" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        
                                        </td>
                                        <td>Weight:<br />
                                            <asp:TextBox ID="TextBox38" runat="server" Text='<%# Bind("Weight") %>' />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator40" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid weight" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        
                                        </td>
                                        <td>Hair:<br />
                                            <asp:TextBox ID="TextBox39" runat="server" Text='<%# Bind("Hair") %>' TextMode="Color" />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator41" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid hair color" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        
                                        </td>
                                        <td>Eyes:<br />
                                            <asp:TextBox ID="TextBox40" runat="server" Text='<%# Bind("Eyes") %>' TextMode="Color" />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator42" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid eye color" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Diagnosis/Medical Condition:<br />
                                            <asp:TextBox ID="TextBox41" runat="server" Text='<%# Bind("Diagnosis") %>' TextMode="MultiLine" />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator43" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid type of diagnosis / medical condition" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        </td>
                                        <td>Medical Limitations/Adapitve Devices:<br />
                                            <asp:TextBox ID="TextBox42" runat="server" Text='<%# Bind("Limitations") %>' TextMode="MultiLine" />
                                            <!-- Validator(s) for TextBox42 here-->
                                                <asp:CompareValidator ID="CompareValidator44" runat="server" ControlToValidate="TextBox42" ErrorMessage="Please enter a valid type of limitaion / adaptive device" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>                                      
                                        </td>
                                        <td>Allergies:<br />
                                            <asp:TextBox ID="TextBox43" runat="server" Text='<%# Bind("Allergies") %>' TextMode="MultiLine" />
                                            <!-- Validator(s) for TextBox43 here-->
                                                <asp:CompareValidator ID="CompareValidator45" runat="server" ControlToValidate="TextBox43" ErrorMessage="Please enter a valid type of allergy" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                       </td>
                                    </tr>
                                    <tr>
                                        <td>Preferred Hospital:<br />
                                            <asp:TextBox ID="TextBox44" runat="server" Text='<%# Bind("Preferred_Hospital") %>' />
                                            <!-- Validator(s) for TextBox44 here-->
                                                <asp:CompareValidator ID="CompareValidator46" runat="server" ControlToValidate="TextBox44" ErrorMessage="Please enter a valid type of preferred hospital" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        </td>
                                        <td>Hospital Phone:<br />
                                            <asp:TextBox ID="TextBox45" runat="server" Text='<%# Bind("Hospital_Phone") %>' TextMode="Phone" />
                                            <!-- Validator(s) for TextBox45 here-->
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator26" runat="server" ControlToValidate="TextBox45" ErrorMessage="Please enter a valid hospital phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group6" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                                <br />(###-###-####)                 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="TextBox46" runat="server" Text='<%# Bind("Address") %>' />
                                            <!-- Validator(s) for TextBox46 here-->
                                                <asp:CompareValidator ID="CompareValidator47" runat="server" ControlToValidate="TextBox46" ErrorMessage="Please enter a valid type of address" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        </td>
                                        <td>City:<br />
                                            <asp:TextBox ID="TextBox47" runat="server" Text='<%# Bind("City") %>' />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator48" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid type of city" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        </td>
                                        <td>State:<br />
                                             <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList>
                                        </td>
                                        <td>Zip:<br />
                                            <asp:TextBox ID="TextBox49" runat="server" Text='<%# Bind("Zip") %>' />
                                            <!-- Validator(s) for TextBox49 here-->
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server" ControlToValidate="TextBox49" ErrorMessage="Please enter a valid zip code" Display="Dynamic" Text="*" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group6"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                                 <asp:LinkButton ID="btnHealthUpdate" runat="server" CssClass="btn btn-primary" CommandName="Update" ValidationGroup="Group6"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Update</asp:LinkButton>
                                 <asp:LinkButton ID="btnHealthCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel" ValidationGroup="Group6"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator39" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid height" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        
                                        </td>
                                        <td>Weight:<br />
                                            <asp:TextBox ID="TextBox38" runat="server" Text='<%# Bind("Weight") %>' />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator40" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid weight" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        
                                        </td>
                                        <td>Hair:<br />
                                            <asp:TextBox ID="TextBox39" runat="server" Text='<%# Bind("Hair") %>' TextMode="Color" />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator41" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid hair color" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        
                                        </td>
                                        <td>Eyes:<br />
                                            <asp:TextBox ID="TextBox40" runat="server" Text='<%# Bind("Eyes") %>' TextMode="Color" />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator42" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid eye color" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Diagnosis/Medical Condition:<br />
                                            <asp:TextBox ID="TextBox41" runat="server" Text='<%# Bind("Diagnosis") %>' TextMode="MultiLine" />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator43" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid type of diagnosis / medical condition" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        </td>
                                        <td>Medical Limitations/Adapitve Devices:<br />
                                            <asp:TextBox ID="TextBox42" runat="server" Text='<%# Bind("Limitations") %>' TextMode="MultiLine" />
                                            <!-- Validator(s) for TextBox42 here-->
                                                <asp:CompareValidator ID="CompareValidator44" runat="server" ControlToValidate="TextBox42" ErrorMessage="Please enter a valid type of limitaion / adaptive device" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>                                      
                                        </td>
                                        <td>Allergies:<br />
                                            <asp:TextBox ID="TextBox43" runat="server" Text='<%# Bind("Allergies") %>' TextMode="MultiLine" />
                                            <!-- Validator(s) for TextBox43 here-->
                                                <asp:CompareValidator ID="CompareValidator45" runat="server" ControlToValidate="TextBox43" ErrorMessage="Please enter a valid type of allergy" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                       </td>
                                    </tr>
                                    <tr>
                                        <td>Preferred Hospital:<br />
                                            <asp:TextBox ID="TextBox44" runat="server" Text='<%# Bind("Preferred_Hospital") %>' />
                                            <!-- Validator(s) for TextBox44 here-->
                                                <asp:CompareValidator ID="CompareValidator46" runat="server" ControlToValidate="TextBox44" ErrorMessage="Please enter a valid type of preferred hospital" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        </td>
                                        <td>Hospital Phone:<br />
                                            <asp:TextBox ID="TextBox45" runat="server" Text='<%# Bind("Hospital_Phone") %>' TextMode="Phone" />
                                            <!-- Validator(s) for TextBox45 here-->
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator26" runat="server" ControlToValidate="TextBox45" ErrorMessage="Please enter a valid hospital phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" ValidationGroup="Group6" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                                <br />(###-###-####)                 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address:<br />
                                            <asp:TextBox ID="TextBox46" runat="server" Text='<%# Bind("Address") %>' />
                                            <!-- Validator(s) for TextBox46 here-->
                                                <asp:CompareValidator ID="CompareValidator47" runat="server" ControlToValidate="TextBox46" ErrorMessage="Please enter a valid type of address" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        </td>
                                        <td>City:<br />
                                            <asp:TextBox ID="TextBox47" runat="server" Text='<%# Bind("City") %>' />
                                            <!-- Validator(s) for TextBox41 here-->
                                                <asp:CompareValidator ID="CompareValidator48" runat="server" ControlToValidate="TextBox41" ErrorMessage="Please enter a valid type of city" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String" ValidationGroup="Group6"></asp:CompareValidator>
                                        </td>
                                        <td>State:<br />
                                             <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList>
                                        </td>
                                        <td>Zip:<br />
                                            <asp:TextBox ID="TextBox49" runat="server" Text='<%# Bind("Zip") %>' />
                                            <!-- Validator(s) for TextBox49 here-->
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server" ControlToValidate="TextBox49" ErrorMessage="Please enter a valid zip code" Display="Dynamic" Text="*" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" ValidationGroup="Group6"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                                <asp:LinkButton ID="btnHealthInfoInsertButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" ValidationGroup="Group6"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                                <asp:LinkButton ID="btnHealthInfoInsertCancelButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel" ValidationGroup="Group6"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                    <%--//Validation Report--%>                    <%--<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="New" Text="New" /> because this doesnt do anything useful--%>
                    <asp:ValidationSummary ID="ValidationSummary7" runat="server" ForeColor="Red" ValidationGroup="Group7"/>
                    <h3 class="text-center">Medical Provider</h3>
                    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                        <asp:ListView ID="MedProviderListView" runat="server" DataKeyNames="ProviderID" DataSourceID="MedProvidersSqlDataSource" InsertItemPosition="LastItem" OnItemCommand="ListView_ItemCommand">
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
                                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" />
                                        </td>
                                        <td>Phone:<br />
                                            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' TextMode="Phone" />
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
                                <asp:LinkButton ID="btnProviderCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" />
                                        </td>
                                        <td>Phone:<br />
                                            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' TextMode="Phone" />
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
                                <asp:LinkButton ID="btnProviderCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                    <%--Medical Provider Section--%>                    <%--//Validation Report//--%>
                    <asp:ValidationSummary ID="ValidationSummary8" runat="server" ForeColor="Red" ValidationGroup="Group8"/>
                    <h3 class="text-center">Medications</h3>
                    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                        <asp:ListView ID="MedListView" runat="server" DataKeyNames="MedicationID" DataSourceID="MedSqlDataSource" InsertItemPosition="LastItem" OnItemCommand="ListView_ItemCommand">
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
                                <asp:LinkButton ID="btnMedCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                                <asp:LinkButton ID="btnMedCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                    <%--Medications Section--%>                    <%--//Validation Report--%>
                    <asp:ValidationSummary ID="ValidationSummary9" runat="server" ForeColor="Red" ValidationGroup="Group9"/>
                    <h3 class="text-center">Insurance</h3>
                    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
                        <asp:FormView ID="InsuranceFormView" runat="server" DataKeyNames="InsuranceID" DataSourceID="InsurenceSqlDataSource" OnDataBound="InsuranceFormView_DataBound" OnItemCommand="FormView_ItemCommand" OnItemUpdated="InsuranceFormView_ItemUpdated">
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
                                <asp:LinkButton ID="btnInsuranceCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
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
                                <asp:LinkButton ID="btnInsuranceCancel" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Cancel</asp:LinkButton>
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
