<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="NewClientPersonal.aspx.cs" Inherits="NewClientPersonal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">New Client</h2>
                    <h3 class="text-center">Personal Information</h3>
                </div>
                <hr>
                <%--//Validation Report--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </div>
        </div>
    </div>
    <%--//Data Entry Form--%>
    <div class="centerForm">
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
                        <asp:TableCell>
                            <asp:Label ID="lblDateHeader" runat="server" Text="Date Created:"></asp:Label><br />
                            <asp:Label ID="lblDate" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblFname" runat="server" Text="First Name "></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFname" ErrorMessage="First Name is required." ForeColor="Red"> *</asp:RequiredFieldValidator><br />
                            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblLname" runat="server" Text="Last Name "></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLname" ErrorMessage="Last Name is required." ForeColor="Red"> *</asp:RequiredFieldValidator><br />
                            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDOB" runat="server" Text="Date of Birth "></asp:Label><br />
                            <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblAge" runat="server" Text="Age "></asp:Label><br />
                            <asp:TextBox ID="txtAge" runat="server" TextMode="Number"></asp:TextBox>
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
                            <asp:DropDownList ID="ddState1" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblZip" runat="server" Text="Zip "></asp:Label><br />
                            <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblEmail" runat="server" Text="E-Mail Address "></asp:Label><br />
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPhone" runat="server" Text="Phone "></asp:Label><br />
                            <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblSSN" runat="server" Text="SSN "></asp:Label><br />
                            <asp:TextBox ID="txtSSN" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblSex" runat="server" Text="Sex "></asp:Label><br />
                            <asp:DropDownList ID="DropDownSex" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
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
                                <asp:ListItem>Buddhism</asp:ListItem>
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
                            <asp:Label ID="lblDiagnosis" runat="server" Text="Diagnosis "></asp:Label><br />
                            <asp:TextBox ID="txtDiagnosis" runat="server"></asp:TextBox>
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
                        <asp:DropDownList ID="ddStateCont1" runat="server"></asp:DropDownList>
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
            <h4 class="text-center">Contact #2</h4>
            <asp:Table ID="Table2" runat="server" HorizontalAlign="Center" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont2" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont2" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont2" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont2" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm2" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard2" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont2" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont2" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont2" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="ddStateCont2" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont2" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont2" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont2" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont2" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont2" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 class="text-center">Contact #3</h4>
            <asp:Table ID="Table3" runat="server" HorizontalAlign="Center" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont3" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont3" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont3" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont3" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm3" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard3" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont3" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont3" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont3" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="ddStateCont3" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont3" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont3" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont3" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont3" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont3" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 id="hrContact4" runat="server" class="text-center" visible="false">Contact #4</h4>
            <asp:Table ID="tbContact4" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont4" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont4" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont4" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont4" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm4" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard4" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont4" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont4" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont4" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="ddStateCont4" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont4" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont4" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont4" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont4" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont4" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 id="hrContact5" runat="server" class="text-center" visible="false">Contact #5</h4>
            <asp:Table ID="tbContact5" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont5" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont5" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont5" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont5" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm5" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard5" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont5" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont5" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont5" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="ddStateCont5" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont5" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont5" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont5" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont5" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont5" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 id="hrContact6" runat="server" class="text-center" visible="false">Contact #6</h4>
            <asp:Table ID="tbContact6" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont6" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont6" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont6" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont6" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm6" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard6" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont6" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont6" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont6" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="ddStateCont6" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont6" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont6" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont6" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont6" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont6" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 id="hrContact7" runat="server" class="text-center" visible="false">Contact #7</h4>
            <asp:Table ID="tbContact7" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont7" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont7" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont7" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont7" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm7" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard7" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont7" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont7" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont7" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="ddStateCont7" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont7" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont7" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont7" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont7" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont7" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 id="hrContact8" runat="server" class="text-center" visible="false">Contact #8</h4>
            <asp:Table ID="tbContact8" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont8" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont8" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont8" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont8" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm8" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard8" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont8" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont8" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont8" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="ddStateCont8" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont8" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont8" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont8" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont8" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont8" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 id="hrContact9" runat="server" class="text-center" visible="false">Contact #9</h4>
            <asp:Table ID="tbContact9" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont9" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont9" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont9" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont9" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm9" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard9" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont9" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont9" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont9" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="ddStateCont9" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont9" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont9" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont9" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont9" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont9" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 id="hrContact10" runat="server" class="text-center" visible="false">Contact #10</h4>
            <asp:Table ID="tbContact10" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFnameCont10" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="txtFnameCont10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLnameCont10" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="txtLnameCont10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblRelCont10" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownListRelCont10" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkEm10" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="chkGuard10" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressCont10" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="txtAddressCont10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCityCont10" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="txtCityCont10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateCont10" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="ddStateCont10" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblZipCont10" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="txtZipCont10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmailCont10" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="txtEmailCont10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblHphoneCont10" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="txtHphoneCont10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCphoneCont10" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="txtCphoneCont10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblWphoneCont10" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="txtWphoneCont10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:LinkButton ID="btnAddContact" runat="server" CssClass="btn btn-primary" OnClick="btnAddContact_Click" CommandName="AddContact"> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Contact</asp:LinkButton>
            <asp:Label ID="lblMaxContacts" runat="server" Visible="False" Style="color: red; font-weight: bold;"></asp:Label>
        </div>
        <hr>
        <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
            <h3 class="text-center">Emergency Information</h3>
            <asp:Table ID="Table4" runat="server" HorizontalAlign="Center" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmergyEvacNeeds" runat="server" Text="Emergency Evacuation Needs "></asp:Label><br />
                        <asp:TextBox ID="txtEmergyEvacNeeds" runat="server" Columns="30" TextMode="multiline"></asp:TextBox>
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
                    <asp:TableCell>
                        <asp:Label ID="lblSvc1" runat="server" Text="Service "></asp:Label><br />
                        <asp:TextBox ID="txtSvc1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCoor1" runat="server" Text="Coordinator "></asp:Label><br />
                        <asp:TextBox ID="txtCoor1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblDeptHead1" runat="server" Text="Department Head "></asp:Label><br />
                        <asp:TextBox ID="txtDeptHead1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
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
                        <asp:DropDownList ID="DropDownListState5" runat="server"></asp:DropDownList>
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
                        <asp:DropDownList ID="DropDownListState7" runat="server"></asp:DropDownList>
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
                        <asp:DropDownList ID="DropDownListState8" runat="server"></asp:DropDownList>
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
                        <asp:DropDownList ID="DropDownListState9" runat="server"></asp:DropDownList>
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
                        <asp:DropDownList ID="DropDownListState10" runat="server"></asp:DropDownList>
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
            <asp:LinkButton ID="btnAddProvider" runat="server" CssClass="btn btn-primary" OnClick="btnAddProvider_Click" CommandName="AddProvider"> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Provider</asp:LinkButton>
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
</asp:Content>

