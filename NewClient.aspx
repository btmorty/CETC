<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="NewClient.aspx.cs" Inherits="NewClient" %>

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
    <asp:SqlDataSource ID="ClientSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [First_Name], [ClientID], [Last_Name], [Status], [DOB], [Age], [Address], [City], [State], [Zip], [Phone], [Email], [Sex], [Race], [Religious_Affiliation], [Residential_Status], [Preferred_Language], [SSN], [Staff_Ratio], [DSPD], [SSI], [SSA], [Modes_Communication], [Diagnosis], [PhotoID], [DateCreated], [DateModified], [ModifiedBy] FROM [Client] " InsertCommand="INSERT INTO [Client] ([First_Name], [Last_Name], [Status], [DOB], [Age], [Address], [City], [State], [Zip], [Phone], [Email], [Sex], [Race], [Religious_Affiliation], [Residential_Status], [Preferred_Language], [SSN], [Staff_Ratio], [DSPD], [SSI], [SSA], [Modes_Communication], [Diagnosis], [PhotoID], [DateCreated], [DateModified], [ModifiedBy]) VALUES (@First_Name, @Last_Name, @Status, @DOB, @Age, @Address, @City, @State, @Zip, @Phone, @Email, @Sex, @Race, @Religious_Affiliation, @Residential_Status, @Preferred_Language, @SSN, @Staff_Ratio, @DSPD, @SSI, @SSA, @Modes_Communication, @Diagnosis, @PhotoID, @DateCreated, @DateModified, @ModifiedBy)" OnInserted="ClientSqlDataSource_Inserted">
        <InsertParameters>
            <asp:parameter direction="Output" name="ClientID" type="Int32" />
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
        </InsertParameters>
    </asp:SqlDataSource>
    <h3 class="text-center">Face Sheet</h3>
    <hr />
    <%--//Data Entry Form--%>
    <div class="centerForm">
        <div class="row">
            <div class="col-sm-9">
                <asp:FormView runat="server" DataSourceID="ClientSqlDataSource" ID="ClientFormView" DataKeyNames="ClientID" OnDataBound="ClientFormView_DataBound">
                    <InsertItemTemplate>
                        <table>
                            <tr>
                                <td>Status:<br />
                                    <asp:DropDownList ID="ddStatus" runat="server" SelectedValue='<%# Bind("Status") %>'>
                                        <asp:ListItem>Active</asp:ListItem>
                                        <asp:ListItem>In-Active</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>Date Created:<br />
                                    <asp:TextBox ID="DateCreatedLabel" runat="server" ReadOnly="true" Text='<%# Eval("DateCreated","{0:MM/dd/yyyy}") %>' /></td>
                                <td>Date Modified:<br />
                                    <asp:TextBox ID="txtDateModified" runat="server" ReadOnly="true" /></td>
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
                                <td>Modes of Communication:<br />
                                    <asp:TextBox ID="Modes_CommunicationLabel" runat="server" Text='<%# Bind("Modes_Communication") %>' /></td>
                                <td>Diagnosis:<br />
                                    <asp:TextBox ID="DiagnosisLabel" runat="server" Text='<%# Bind("Diagnosis") %>' /></td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="btnClientSave" runat="server" CssClass="btn btn-primary" CommandName="Insert"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Save</asp:LinkButton>
                        <asp:LinkButton ID="btnClientCancel" runat="server" CssClass="btn btn-primary" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                        <br />
                        <br />
                    </InsertItemTemplate>
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
        <br />
        <br />
        <div>
          <asp:Label ID="lblResults" runat="server" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
