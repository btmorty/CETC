<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="NewClient.aspx.cs" Inherits="NewClient" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <%--CSS for Tables--%>
    <style>
        th, td {
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 5px;
            padding-bottom: 5px;
        }
        .auto-style1 {
            height: 75px;
        }
    </style>
    <asp:SqlDataSource ID="DDStatusSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [StatusID], [Status] FROM [DD_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDStatesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [State] FROM [DD_State]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDRaceSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Race] FROM [DD_Race]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDResidentialStatusSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Residential_Status] FROM [DD_Residential_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDPreferredLanguageSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Preferred_Language] FROM [DD_Preferred_Language]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDReligionSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Religion] FROM [DD_Religion]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DDSexSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:CETC_DB %>' SelectCommand="SELECT [Sex] FROM [DD_Sex]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ClientSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [First_Name], [ClientID], [Last_Name], [Status], [DOB], [Age], [Address], [City], [State], [Zip], [Phone], [Email], [Sex], [Race], [Religion], [Residential_Status], [Preferred_Language], [SSN], [Staff_Ratio], [DSPD], [SSI], [SSA], [Modes_Communication], [Diagnosis], [PhotoID], [DateCreated], [DateModified], [ModifiedBy] FROM [Client] " InsertCommand="INSERT INTO [Client] ([First_Name], [Last_Name], [Status], [DOB], [Age], [Address], [City], [State], [Zip], [Phone], [Email], [Sex], [Race], [Religion], [Residential_Status], [Preferred_Language], [SSN], [Staff_Ratio], [DSPD], [SSI], [SSA], [Modes_Communication], [Diagnosis], [PhotoID], [DateCreated], [DateModified], [ModifiedBy]) VALUES (@First_Name, @Last_Name, @Status, @DOB, @Age, @Address, @City, @State, @Zip, @Phone, @Email, @Sex, @Race, @Religion, @Residential_Status, @Preferred_Language, @SSN, @Staff_Ratio, @DSPD, @SSI, @SSA, @Modes_Communication, @Diagnosis, @PhotoID, GETDATE(), @DateModified, @ModifiedBy) SELECT @NewClientID=SCOPE_IDENTITY();" OnInserted="ClientSqlDataSource_Inserted">
        <InsertParameters>
            <asp:Parameter Direction="Output" Name="NewClientID" Type="Int32" />
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
            <asp:Parameter Name="ModifiedBy" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <h3 class="text-center">New Client Information</h3>
    <hr />
    <%--//Data Entry Form--%>
                <asp:FormView runat="server" DataSourceID="ClientSqlDataSource" ID="ClientFormView" DataKeyNames="ClientID" OnDataBound="ClientFormView_DataBound" DefaultMode="Insert" HorizontalAlign="Center" Width="73%">
                    <InsertItemTemplate>
                        <table style="width:100%">
                            <tr>
                                <td>Status:<br />
                                    <asp:DropDownList ID="ddStatus" runat="server" SelectedValue='<%# Bind("Status") %>'>
                                        <asp:ListItem>Active</asp:ListItem>
                                        <asp:ListItem>In-Active</asp:ListItem>
                                    </asp:DropDownList>                                   
                                </td>
                                <td>Date Created:<br />
                                    <asp:TextBox ID="DateCreatedLabel" runat="server" ReadOnly="true" Text='<%# Eval("DateCreated","{0:MM/dd/yyyy}") %>' BackColor="Silver" /></td>
                                <td>Date Modified:<br />
                                    <asp:TextBox ID="txtDateModified" runat="server" ReadOnly="true" BackColor="Silver" /></td>
                                <td>Last Modified By:<br />
                                    <asp:TextBox ID="txtLastModifiedBy" runat="server" ReadOnly="true" Text='<%# Eval("ModifiedBy") %>' BackColor="Silver" /></td>
                            </tr>
                            <tr>
                                <td>First Name:<br />
                                    <asp:TextBox ID="First_NameLabel" runat="server" Text='<%# Bind("First_Name") %>' />
                                    <!-- Validator(s) for First_NameLabel here-->
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*" ErrorMessage="Please enter a first name" Display="Dynamic" ControlToValidate="First_NameLabel" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="First name can only contain letters" ControlToValidate="First_NameLabel" Display="Dynamic" Text="*" ForeColor="Red"></asp:CompareValidator>
                                    <br />
                                </td>
                                <td>Last Name:<br />
                                    <asp:TextBox ID="Last_NameLabel" runat="server" Text='<%# Bind("Last_Name") %>' />
                                    <!-- Validator(s) for Last_NameLabel here-->
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*" ErrorMessage="Please enter a last name" Display="Dynamic" ControlToValidate="Last_NameLabel" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Last name can only contain letters" Type="String" ControlToValidate="Last_NameLabel" Display="Dynamic" Text="*" ForeColor="Red"></asp:CompareValidator>                                  
                                    <br />
                                </td>
                                <td>Date of Birth:<br />
                                    <asp:TextBox ID="DOBLabel" runat="server" Text='<%# Bind("DOB", "{0:MM/dd/yyyy}") %>' TextMode="Date" />
                                    <!-- Validator(s) for DOBLabel here-->
                                    <asp:RangeValidator ID="RangeValidator2" runat="server" Text="*" ErrorMessage="Select a date between 1/1/1900 and today" ControlToValidate="DOBLabel" Display="Dynamic" MinimumValue="01/01/1900" MaximumValue="<%# DateTime.Today.ToShortDateString() %>" Type="Date" ForeColor="Red"></asp:RangeValidator>
                                    <br />
                                <td>Age:<br />
                                    <asp:TextBox ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' MaxLength="3" />
                                    <!-- Validator(s) for AgeLabel here-->
                                     <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeLabel" ErrorMessage="Please enter a valid age" MinimumValue="1" MaximumValue="100" ForeColor="Red" Display="Dynamic" Type="Integer" Text="*"></asp:RangeValidator>
                                     <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="AgeLabel" ErrorMessage="Please enter a whole number greater than 0" Type="Integer" ValueToCompare="0" Operator="GreaterThan" ForeColor="Red" Display="Dynamic" Text="*"></asp:CompareValidator>                                   
                                </td>
                            </tr>
                            <tr>
                                <td>Address:<br />
                                    <asp:TextBox ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                                    <!-- Validator(s) for AddressLabel here-->
                                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Please enter an address" ControlToValidate="AddressLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                                    <br />
                                </td>
                                <td>City:<br />
                                    <asp:TextBox ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                                    <!-- Validator(s) for CityLabel here-->
                                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="City can only contain letters" ControlToValidate="CityLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                                    <br />
                                </td>
                                <td>State:<br />
                                    <asp:DropDownList ID="ddState" runat="server" DataSourceID="DDStatesSqlDataSource" DataValueField="State" SelectedValue='<%# Bind("State") %>'></asp:DropDownList>
                                    <br />
                                </td>
                                <td>Zip Code:<br />
                                    <asp:TextBox ID="Zip_CodeLabel" runat="server" Text='<%# Bind("Zip") %>' MaxLength="5" />
                                    <!-- Validator(s) for Zip_CodeLabel here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Zip_CodeLabel" ErrorMessage="Please enter a valid zip code" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Email:<br />
                                    <asp:TextBox ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" />
                                    <!-- Validator(s) for EmailLabel here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="EmailLabel" ErrorMessage="Please enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                    <br />
                                </td>
                                <td>Phone:<br />
                                    <asp:TextBox ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' TextMode="Phone" MaxLength="12" />                                    
                                    <!-- Validator(s) for PhoneLabel here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="PhoneLabel" ErrorMessage="Please enter a valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                    <br />(###-###-####)
                                </td>
                                <td>SSN:<br />
                                    <asp:TextBox ID="SSNLabel" runat="server" Text='<%# Bind("SSN") %>' MaxLength="11" />                                 
                                    <!-- Validator(s) for SSNLabel here-->
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="SSNLabel" ErrorMessage="Please enter a valid social security number" ValidationExpression="\d{3}-\d{2}-\d{4}" ForeColor="Red" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                                    <br />(###-##-####)
                                </td>
                                <td>Sex:<br />
                                    <asp:DropDownList ID="DropDownListSex" runat="server" DataSourceID="DDSexSqlDataSource" DataValueField="Sex" SelectedValue='<%# Bind("Sex") %>'></asp:DropDownList>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>Race:<br />
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DDRaceSqlDataSource" DataValueField="Race" SelectedValue='<%# Bind("Race") %>'></asp:DropDownList>
                                </td>
                                <td>Residential Status:<br />
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DDResidentialStatusSqlDataSource" DataValueField="Residential_Status" SelectedValue='<%# Bind("Residential_Status") %>'></asp:DropDownList>
                                </td>
                                <td>Preferred Language:<br />
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="DDPreferredLanguageSqlDataSource" DataValueField="Preferred_Language" SelectedValue='<%# Bind("Preferred_Language") %>'></asp:DropDownList>
                                </td>
                                <td>Religious Affiliation:<br />
                                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="DDReligionSqlDataSource" DataValueField="Religion" SelectedValue='<%# Bind("Religion") %>'></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Staffing Ratio:<br />
                                    <asp:TextBox ID="Staffing_RatioLabel" runat="server" Text='<%# Bind("Staff_Ratio") %>' />
                                     <!-- Validator(s) for Staffing_RatioLabel here-->
                                    <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Please enter a ratio" ControlToValidate="Staffing_RatioLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                                </td>
                                <td>DSPD:<br />
                                    <asp:TextBox ID="DSPDLabel" runat="server" Text='<%# Bind("DSPD") %>' />
                                    <!-- Validator(s) for DSPDLabel here-->
                                    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Please enter a dspd" ControlToValidate="DSPDLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                                </td>
                                <td>SSI:<br />
                                    <asp:TextBox ID="SSILabel" runat="server" Text='<%# Bind("SSI") %>' />
                                    <!-- Validator(s) for SSILabel here-->
                                    <asp:CompareValidator ID="CompareValidator8" runat="server" ErrorMessage="Please enter a ssi" ControlToValidate="SSILabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>SSA:<br />
                                    <asp:TextBox ID="SSALabel" runat="server" Text='<%# Bind("SSA") %>' />
                                    <!-- Validator(s) for SSALabel here-->
                                    <asp:CompareValidator ID="CompareValidator9" runat="server" ErrorMessage="Please enter a ssa" ControlToValidate="SSALabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                                </td>
                                <td>Modes of Communication:<br />
                                    <asp:TextBox ID="CommunicationLabel" runat="server" Text='<%# Bind("Modes_Communication") %>' />
                                    <!-- Validator(s) for CommunicationLabel here-->
                                    <asp:CompareValidator ID="CompareValidator10" runat="server" ErrorMessage="Please enter a mode of communication" ControlToValidate="CommunicationLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                                </td>
                                <td>Diagnosis:<br />
                                    <asp:TextBox ID="DiagnosisLabel" runat="server" Text='<%# Bind("Diagnosis") %>' />
                                    <!-- Validator(s) for DiagnosisLabel here-->
                                    <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="Please enter a diagnosis" ControlToValidate="DiagnosisLabel" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="btnClientSave" runat="server" CssClass="btn btn-primary" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                        <asp:LinkButton ID="btnClientCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                        <br />
                        <br />
                    </InsertItemTemplate>
                </asp:FormView>
                <br />
                <br />
                <div>
                    <asp:Label ID="lblResults" runat="server" Visible="false"></asp:Label>
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </div>
</asp:Content>
