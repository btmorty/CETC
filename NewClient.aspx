<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="NewClient.aspx.cs" Inherits="NewClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <%--//Connection to address table--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Address] WHERE [AddressID] = @AddressID" InsertCommand="INSERT INTO [Address] ([Address], [City], [State], [Zip_Code], [PO_Box]) VALUES (@Address, @City, @State, @Zip_Code, @PO_Box)" SelectCommand="SELECT [Address], [City], [State], [Zip_Code], [PO_Box], [AddressID] FROM [Address]" UpdateCommand="UPDATE [Address] SET [Address] = @Address, [City] = @City, [State] = @State, [Zip_Code] = @Zip_Code, [PO_Box] = @PO_Box WHERE [AddressID] = @AddressID">
        <DeleteParameters>
            <asp:Parameter Name="AddressID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
            <asp:Parameter Name="PO_Box" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
            <asp:Parameter Name="PO_Box" Type="String" />
            <asp:Parameter Name="AddressID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%--//Connection to Client table--%>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Client] WHERE [ClientID] = @ClientID" InsertCommand="INSERT INTO [Client] ([AddressID], [SSN], [PhotoID], [DSPD], [Status], [Sex], [Race], [Residential_Status], [Preferred_Language], [Religious_Affiliation]) VALUES (@AddressID, @SSN, @PhotoID, @DSPD, @Status, @Sex, @Race, @Residential_Status, @Preferred_Language, @Religious_Affiliation)" SelectCommand="SELECT [ClientID], [AddressID], [SSN], [PhotoID], [DSPD], [Status], [Sex], [Race], [Residential_Status], [Preferred_Language], [Religious_Affiliation] FROM [Client]" UpdateCommand="UPDATE [Client] SET [AddressID] = @AddressID, [SSN] = @SSN, [PhotoID] = @PhotoID, [DSPD] = @DSPD, [Status] = @Status, [Sex] = @Sex, [Race] = @Race, [Residential_Status] = @Residential_Status, [Preferred_Language] = @Preferred_Language, [Religious_Affiliation] = @Religious_Affiliation WHERE [ClientID] = @ClientID">
        <DeleteParameters>
            <asp:Parameter Name="ClientID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AddressID" Type="Int32" />
            <asp:Parameter Name="SSN" Type="Int32" />
            <asp:Parameter Name="PhotoID" Type="String" />
            <asp:Parameter Name="DSPD" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter Name="Race" Type="String" />
            <asp:Parameter Name="Residential_Status" Type="String" />
            <asp:Parameter Name="Preferred_Language" Type="String" />
            <asp:Parameter Name="Religious_Affiliation" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AddressID" Type="Int32" />
            <asp:Parameter Name="SSN" Type="Int32" />
            <asp:Parameter Name="PhotoID" Type="String" />
            <asp:Parameter Name="DSPD" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter Name="Race" Type="String" />
            <asp:Parameter Name="Residential_Status" Type="String" />
            <asp:Parameter Name="Preferred_Language" Type="String" />
            <asp:Parameter Name="Religious_Affiliation" Type="String" />
            <asp:Parameter Name="ClientID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%--//Connection to Contact table--%>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Contact] WHERE [ContactID] = @ContactID" InsertCommand="INSERT INTO [Contact] ([ContactID], [FirstName], [LastName], [ClientID], [AddressID], [Relationship], [Emergency_Contact], [Email], [HomePhone], [WorkPhone], [MobilePhone]) VALUES (@ContactID, @FirstName, @LastName, @ClientID, @AddressID, @Relationship, @Emergency_Contact, @Email, @HomePhone, @WorkPhone, @MobilePhone)" SelectCommand="SELECT [ContactID], [FirstName], [LastName], [ClientID], [AddressID], [Relationship], [Emergency_Contact], [Email], [HomePhone], [WorkPhone], [MobilePhone] FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [FirstName] = @FirstName, [LastName] = @LastName, [ClientID] = @ClientID, [AddressID] = @AddressID, [Relationship] = @Relationship, [Emergency_Contact] = @Emergency_Contact, [Email] = @Email, [HomePhone] = @HomePhone, [WorkPhone] = @WorkPhone, [MobilePhone] = @MobilePhone WHERE [ContactID] = @ContactID">
        <DeleteParameters>
            <asp:Parameter Name="ContactID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ContactID" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="ClientID" Type="Int32" />
            <asp:Parameter Name="AddressID" Type="Int32" />
            <asp:Parameter Name="Relationship" Type="String" />
            <asp:Parameter Name="Emergency_Contact" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="HomePhone" Type="String" />
            <asp:Parameter Name="WorkPhone" Type="String" />
            <asp:Parameter Name="MobilePhone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="ClientID" Type="Int32" />
            <asp:Parameter Name="AddressID" Type="Int32" />
            <asp:Parameter Name="Relationship" Type="String" />
            <asp:Parameter Name="Emergency_Contact" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="HomePhone" Type="String" />
            <asp:Parameter Name="WorkPhone" Type="String" />
            <asp:Parameter Name="MobilePhone" Type="String" />
            <asp:Parameter Name="ContactID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%--//Connection to Health Profile table--%>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Health_Profile] WHERE [Health_Profile_ID] = @Health_Profile_ID" InsertCommand="INSERT INTO [Health_Profile] ([Health_Profile_ID], [DOB], [Staffing_Ratio], [Height], [Weight], [Hair], [Diagnosed_Condition], [Eyes], [Limitations], [Allergies], [Preferred_Hospital], [Life_Support_Request], [H_Address], [ClientID]) VALUES (@Health_Profile_ID, @DOB, @Staffing_Ratio, @Height, @Weight, @Hair, @Diagnosed_Condition, @Eyes, @Limitations, @Allergies, @Preferred_Hospital, @Life_Support_Request, @H_Address, @ClientID)" SelectCommand="SELECT [Health_Profile_ID], [DOB], [Staffing_Ratio], [Height], [Weight], [Hair], [Diagnosed_Condition], [Eyes], [Limitations], [Allergies], [Preferred_Hospital], [Life_Support_Request], [H_Address], [ClientID] FROM [Health_Profile]" UpdateCommand="UPDATE [Health_Profile] SET [DOB] = @DOB, [Staffing_Ratio] = @Staffing_Ratio, [Height] = @Height, [Weight] = @Weight, [Hair] = @Hair, [Diagnosed_Condition] = @Diagnosed_Condition, [Eyes] = @Eyes, [Limitations] = @Limitations, [Allergies] = @Allergies, [Preferred_Hospital] = @Preferred_Hospital, [Life_Support_Request] = @Life_Support_Request, [H_Address] = @H_Address, [ClientID] = @ClientID WHERE [Health_Profile_ID] = @Health_Profile_ID">
        <DeleteParameters>
            <asp:Parameter Name="Health_Profile_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Health_Profile_ID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="Staffing_Ratio" Type="String" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Hair" Type="String" />
            <asp:Parameter Name="Diagnosed_Condition" Type="String" />
            <asp:Parameter Name="Eyes" Type="String" />
            <asp:Parameter Name="Limitations" Type="String" />
            <asp:Parameter Name="Allergies" Type="String" />
            <asp:Parameter Name="Preferred_Hospital" Type="String" />
            <asp:Parameter Name="Life_Support_Request" Type="String" />
            <asp:Parameter Name="H_Address" Type="Int32" />
            <asp:Parameter Name="ClientID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="Staffing_Ratio" Type="String" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Hair" Type="String" />
            <asp:Parameter Name="Diagnosed_Condition" Type="String" />
            <asp:Parameter Name="Eyes" Type="String" />
            <asp:Parameter Name="Limitations" Type="String" />
            <asp:Parameter Name="Allergies" Type="String" />
            <asp:Parameter Name="Preferred_Hospital" Type="String" />
            <asp:Parameter Name="Life_Support_Request" Type="String" />
            <asp:Parameter Name="H_Address" Type="Int32" />
            <asp:Parameter Name="ClientID" Type="Int32" />
            <asp:Parameter Name="Health_Profile_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%--//Connection to Insurance table--%>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Insurance] WHERE [InsuranceID] = @InsuranceID" InsertCommand="INSERT INTO [Insurance] ([InsuranceID], [ClientID], [AddressID], [Medicaid_Number], [Medicare_Number], [Insurance_Name], [Policy_Number], [Group_Number], [Insurance_Phone]) VALUES (@InsuranceID, @ClientID, @AddressID, @Medicaid_Number, @Medicare_Number, @Insurance_Name, @Policy_Number, @Group_Number, @Insurance_Phone)" SelectCommand="SELECT [InsuranceID], [ClientID], [AddressID], [Medicaid_Number], [Medicare_Number], [Insurance_Name], [Policy_Number], [Group_Number], [Insurance_Phone] FROM [Insurance]" UpdateCommand="UPDATE [Insurance] SET [ClientID] = @ClientID, [AddressID] = @AddressID, [Medicaid_Number] = @Medicaid_Number, [Medicare_Number] = @Medicare_Number, [Insurance_Name] = @Insurance_Name, [Policy_Number] = @Policy_Number, [Group_Number] = @Group_Number, [Insurance_Phone] = @Insurance_Phone WHERE [InsuranceID] = @InsuranceID">
        <DeleteParameters>
            <asp:Parameter Name="InsuranceID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="InsuranceID" Type="Int32" />
            <asp:Parameter Name="ClientID" Type="Int32" />
            <asp:Parameter Name="AddressID" Type="Int32" />
            <asp:Parameter Name="Medicaid_Number" Type="String" />
            <asp:Parameter Name="Medicare_Number" Type="String" />
            <asp:Parameter Name="Insurance_Name" Type="String" />
            <asp:Parameter Name="Policy_Number" Type="Int32" />
            <asp:Parameter Name="Group_Number" Type="Int32" />
            <asp:Parameter Name="Insurance_Phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ClientID" Type="Int32" />
            <asp:Parameter Name="AddressID" Type="Int32" />
            <asp:Parameter Name="Medicaid_Number" Type="String" />
            <asp:Parameter Name="Medicare_Number" Type="String" />
            <asp:Parameter Name="Insurance_Name" Type="String" />
            <asp:Parameter Name="Policy_Number" Type="Int32" />
            <asp:Parameter Name="Group_Number" Type="Int32" />
            <asp:Parameter Name="Insurance_Phone" Type="String" />
            <asp:Parameter Name="InsuranceID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%--//Connection to Medical Provider table--%>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Medical_Provider] WHERE [ProviderID] = @ProviderID" InsertCommand="INSERT INTO [Medical_Provider] ([ProviderID], [Specialty], [ClientID], [ContactID]) VALUES (@ProviderID, @Specialty, @ClientID, @ContactID)" SelectCommand="SELECT [ProviderID], [Specialty], [ClientID], [ContactID] FROM [Medical_Provider]" UpdateCommand="UPDATE [Medical_Provider] SET [Specialty] = @Specialty, [ClientID] = @ClientID, [ContactID] = @ContactID WHERE [ProviderID] = @ProviderID">
        <DeleteParameters>
            <asp:Parameter Name="ProviderID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProviderID" Type="Int32" />
            <asp:Parameter Name="Specialty" Type="String" />
            <asp:Parameter Name="ClientID" Type="Int32" />
            <asp:Parameter Name="ContactID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Specialty" Type="String" />
            <asp:Parameter Name="ClientID" Type="Int32" />
            <asp:Parameter Name="ContactID" Type="Int32" />
            <asp:Parameter Name="ProviderID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%--//Connection to Medication table--%>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" DeleteCommand="DELETE FROM [Medication] WHERE [MedicationID] = @MedicationID" InsertCommand="INSERT INTO [Medication] ([MedicationID], [Medication_Name], [Dosage], [Purpose], [Non_Perscription], [ClientID], [ProviderID]) VALUES (@MedicationID, @Medication_Name, @Dosage, @Purpose, @Non_Perscription, @ClientID, @ProviderID)" SelectCommand="SELECT [MedicationID], [Medication_Name], [Dosage], [Purpose], [Non_Perscription], [ClientID], [ProviderID] FROM [Medication]" UpdateCommand="UPDATE [Medication] SET [Medication_Name] = @Medication_Name, [Dosage] = @Dosage, [Purpose] = @Purpose, [Non_Perscription] = @Non_Perscription, [ClientID] = @ClientID, [ProviderID] = @ProviderID WHERE [MedicationID] = @MedicationID">
        <DeleteParameters>
            <asp:Parameter Name="MedicationID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MedicationID" Type="Int32" />
            <asp:Parameter Name="Medication_Name" Type="String" />
            <asp:Parameter Name="Dosage" Type="String" />
            <asp:Parameter Name="Purpose" Type="String" />
            <asp:Parameter Name="Non_Perscription" Type="String" />
            <asp:Parameter Name="ClientID" Type="Int32" />
            <asp:Parameter Name="ProviderID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Medication_Name" Type="String" />
            <asp:Parameter Name="Dosage" Type="String" />
            <asp:Parameter Name="Purpose" Type="String" />
            <asp:Parameter Name="Non_Perscription" Type="String" />
            <asp:Parameter Name="ClientID" Type="Int32" />
            <asp:Parameter Name="ProviderID" Type="Int32" />
            <asp:Parameter Name="MedicationID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">New Client</h2>
                </div>
                <hr>
            </div>
        </div>
    </div>
    <%--//Data Entry Form--%>
    <div class="centerForm">
        <h3 class="text-center">Personal Information</h3>
        <div class="row">
            <div class="col-sm-9">
                <asp:Table ID="Table1" runat="server" CellSpacing="2" CellPadding="2" HorizontalAlign="Center" Width="100%">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblStatus" runat="server" Text="Status "></asp:Label><br />
                            <asp:DropDownList ID="DropDownListStatus" runat="server">
                                <asp:ListItem>Active</asp:ListItem>
                                <asp:ListItem>In-Active</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblFname" runat="server" Text="First Name "></asp:Label><br />
                            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblLname" runat="server" Text="Last Name "></asp:Label><br />
                            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDOB" runat="server" Text="Date of Birth "></asp:Label><br />
                            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblAge" runat="server" Text="Age "></asp:Label><br />
                            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblAddress" runat="server" Text="Address "></asp:Label><br />
                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblCity" runat="server" Text="City "></asp:Label><br />
                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblState" runat="server" Text="State "></asp:Label><br />
                            <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblZip" runat="server" Text="Zip "></asp:Label><br />
                            <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblEmail" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPhone" runat="server" Text="Phone "></asp:Label><br />
                            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblSex" runat="server" Text="Sex "></asp:Label><br />
                            <asp:DropDownList ID="DropDownSex" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblRace" runat="server" Text="Race "></asp:Label><br />
                            <asp:DropDownList ID="DropDownListRace" runat="server">
                                <asp:ListItem>African American</asp:ListItem>
                                <asp:ListItem>Caucasian</asp:ListItem>
                                <asp:ListItem>Native American</asp:ListItem>
                                <asp:ListItem>Oriental</asp:ListItem>
                                <asp:ListItem>Pacific Islander</asp:ListItem>
                                <asp:ListItem>Other Race</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblResStatus" runat="server" Text="Residential Status "></asp:Label><br />
                            <asp:DropDownList ID="DropDownListResStatus" runat="server">
                                <asp:ListItem>Lives Alone</asp:ListItem>
                                <asp:ListItem>Group Home</asp:ListItem>
                                <asp:ListItem>Lives With Family</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblLanguage" runat="server" Text="Preferred Language "></asp:Label><br />
                            <asp:DropDownList ID="DropDownListLanguage" runat="server">
                                <asp:ListItem>English</asp:ListItem>
                                <asp:ListItem>Spanish</asp:ListItem>
                                <asp:ListItem>other</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lbl" runat="server" Text="Religious Affiliation "></asp:Label><br />
                            <asp:DropDownList ID="DropDownListReligion" runat="server">
                                <asp:ListItem>Buddhist</asp:ListItem>
                                <asp:ListItem>Catholic</asp:ListItem>
                                <asp:ListItem>Christian</asp:ListItem>
                                <asp:ListItem>Hindu</asp:ListItem>
                                <asp:ListItem>LDS</asp:ListItem>
                                <asp:ListItem>Muslim</asp:ListItem>
                                <asp:ListItem>Non-Denominational</asp:ListItem>
                                <asp:ListItem>N/A</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblSSN" runat="server" Text="SSN "></asp:Label><br />
                            <asp:TextBox ID="txtSSN" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblStaffRatio" runat="server" Text="Staffing Ratio "></asp:Label><br />
                            <asp:TextBox ID="txtStaffRatio" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDSPD" runat="server" Text="DSPD "></asp:Label><br />
                            <asp:TextBox ID="txtDSPD" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblSSI" runat="server" Text="SSI "></asp:Label><br />
                            <asp:TextBox ID="txtSSI" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblSSA" runat="server" Text="SSA "></asp:Label><br />
                            <asp:TextBox ID="txtSSA" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblComm" runat="server" Text="Modes of Communication "></asp:Label><br />
                            <asp:TextBox ID="txtComm" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblGuardian" runat="server" Text="Guardian "></asp:Label><br />
                            <asp:TextBox ID="txtGuardian" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <div class="col-sm-3">
                <asp:Image ID="imgProfile" runat="server" BorderStyle="Solid" BorderWidth="1" Height="200px" ImageAlign="Middle" Width="200px" /><br />
                <br />
                <asp:Label ID="lblFileUpload" runat="server" Text="Upload Image "></asp:Label><br />
                <asp:FileUpload ID="imageUpload" runat="server" /><br />
                <asp:LinkButton ID="btnUpload" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click"> <span aria-hidden="true" class="glyphicon glyphicon-upload"></span> Upload Picture</asp:LinkButton>
            </div>
        </div>

        <hr>
        <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
            <h3 class="text-center">Family/Guardian/Residential Contact Information</h3>
            <h4 class="text-center">Contact #1</h4>
            <asp:Table ID="emContact1" runat="server" HorizontalAlign="Center" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont1" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont1" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont1" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont1" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm1" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard1" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont1" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont1" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont1" runat="server" Text="State "></asp:Label><br />
                        <asp:TextBox ID="txtStateCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont1" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont1" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont1" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont1" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont1" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
            <h4 class="text-center">Contact #2</h4>
            <asp:Table ID="Table2" runat="server" HorizontalAlign="Center" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other Legal Guardian</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox2" runat="server" Text=" Emergency Contact" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContAddress1" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContAddress1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContCity1" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContCity1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContState1" runat="server" Text="State "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContState1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContZip1" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContZip1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContEmail1" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContEmail1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContHomePhone1" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContHomePhone1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContCellPhone1" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContCellPhone1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContWorkPhone1" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContWorkPhone1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
            <h4 class="text-center">Contact #3</h4>
            <asp:Table ID="Table3" runat="server" HorizontalAlign="Center" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label12" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label13" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label14" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other Legal Guardian</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox3" runat="server" Text=" Emergency Contact" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContAddress2" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContAddress2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContCity2" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContCity2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContState2" runat="server" Text="State "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContState2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContZip2" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContZip2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContEmail2" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContEmail2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContHomePhone2" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContHomePhone2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContCellPhone2" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContCellPhone2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyContWorkPhone2" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyContWorkPhone2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <hr>
        <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
            <h3 class="text-center">Emergency Information</h3>
            <asp:Table ID="Table4" runat="server" HorizontalAlign="Center" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyEvacNeeds1" runat="server" Text="Emergency Evacuation Needs "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyEvacNeeds1" runat="server" Columns="30" TextMode="multiline"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyEvacNeedsLocation1" runat="server" Text="1st Evacuation Location "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyEvacNeedsLocation1" runat="server" Columns="30"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyEvacNeedsLocation2" runat="server" Text="2nd Evacuation Location "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyEvacNeedsLocation2" runat="server" Columns="30"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <hr>
        <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
            <h3 class="text-center">Health Profile Information</h3>
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
                        <asp:Label ID="lblDiagnosis1" runat="server" Text="Diagnosis/Medical Condition "></asp:Label><br />
                        <asp:TextBox ID="txtDiagnosis1" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblMedicalLim" runat="server" Text="Medical Limitations/Adaptive Devices "></asp:Label><br />
                        <asp:TextBox ID="txtMedicalLim" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblAllergies" runat="server" Text="Allergies "></asp:Label><br />
                        <asp:TextBox ID="txtAllergies" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblPreferredHospital" runat="server" Text="Preferred Hospital "></asp:Label><br />
                        <asp:TextBox ID="txtPreferredHospital" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblPreferredHospitalAddress" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtPreferredHospitalAddress" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblPreferredHospitalPhone" runat="server" Text="Phone "></asp:Label><br />
                        <asp:TextBox ID="txtPreferredHospitalPhone" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

        <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
            <h3 class="text-center">Medical Provider</h3>
            <asp:Table ID="Table6" runat="server" HorizontalAlign="Center" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblMPSpecialty" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="txtMPSpecialty" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblMPFirstName" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtMPFirstName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblMPLastName" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="txtMPLastName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblMPAddress" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtMPAddress" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblMPCity" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtMPCity" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblMPState" runat="server" Text="State "></asp:Label><br />
                        <asp:TextBox ID="txtMPState" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblMPZip" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="txtMPZip" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblMPEmail" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtMPEmail" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblMPPhone" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="txtMPPhone" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
            <h3 class="text-center">Medications</h3>
            <asp:Table ID="Table7" runat="server" HorizontalAlign="Center" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblMedication" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="txtMedication" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblDosage" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="txtDosage" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblPurpose" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="txtPurpose" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblPMedFirstName" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="txtPMedFirstName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblPMedLastName" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtPMedLastName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med2">
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:CheckBox ID="CheckBox5" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label8" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med3">
                    <asp:TableCell>
                        <asp:Label ID="Label10" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label15" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox6" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label17" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label18" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med4">
                    <asp:TableCell>
                        <asp:Label ID="Label19" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label20" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label21" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox7" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label23" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label24" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med5">
                    <asp:TableCell>
                        <asp:Label ID="Label25" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label26" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label27" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox8" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label29" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label30" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med6">
                    <asp:TableCell>
                        <asp:Label ID="Label31" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label32" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label33" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox9" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label35" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label36" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med7">
                    <asp:TableCell>
                        <asp:Label ID="Label37" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label38" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label39" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox10" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label41" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label42" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med8">
                    <asp:TableCell>
                        <asp:Label ID="Label43" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label44" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label45" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox11" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label47" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label48" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med9">
                    <asp:TableCell>
                        <asp:Label ID="Label49" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label50" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label51" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox12" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label53" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label54" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med10">
                    <asp:TableCell>
                        <asp:Label ID="Label55" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label56" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label57" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox13" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label59" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label60" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med11">
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label16" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label22" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox14" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label28" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label34" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med12">
                    <asp:TableCell>
                        <asp:Label ID="Label40" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label46" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label52" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox15" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label58" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label61" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med13">
                    <asp:TableCell>
                        <asp:Label ID="Label62" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label63" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label64" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox16" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label65" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label66" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med14">
                    <asp:TableCell>
                        <asp:Label ID="Label67" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox65" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label68" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label69" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox67" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox17" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label70" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox68" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label71" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Visible="False" ID="med15">
                    <asp:TableCell>
                        <asp:Label ID="Label72" runat="server" Text="Medication "></asp:Label><br />
                        <asp:TextBox ID="TextBox70" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label73" runat="server" Text="Dosage "></asp:Label><br />
                        <asp:TextBox ID="TextBox71" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label74" runat="server" Text="Purpose "></asp:Label><br />
                        <asp:TextBox ID="TextBox72" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox18" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label75" runat="server" Text="Physician First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox73" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label76" runat="server" Text="Physician Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox74" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <div>
                <br />
                <asp:LinkButton ID="btnAddMed" runat="server" CssClass="btn btn-primary" OnClick="btnAddMed_Click"> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Medication</asp:LinkButton>
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
                    </asp:TableRow>
                    <asp:TableRow>
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
                    <asp:LinkButton ID="SubmitBtn" runat="server" CssClass="btn btn-primary"> <span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Submit</asp:LinkButton>
                    <asp:LinkButton ID="ResetBtn" runat="server" CssClass="btn btn-primary"> <span aria-hidden="true" class="glyphicon glyphicon-refresh"></span> Reset</asp:LinkButton>
                </div>
                <div>
                    <asp:Label ID="lblResults" runat="server" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
</asp:Content>

