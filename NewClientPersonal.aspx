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
                            <asp:Label ID="lblDateHeader" runat="server" Text ="Date Created:"></asp:Label><br />
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
                            <asp:DropDownList ID="DropDownListState1" runat="server"></asp:DropDownList>
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
                        <asp:DropDownList ID="DropDownListState2" runat="server"></asp:DropDownList>
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
                        <asp:CheckBox ID="ChkEm2" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="ChkGuard2" runat="server" Text=" Legal Guardian" TextAlign="Right" />
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
                        <asp:DropDownList ID="DropDownListState3" runat="server"></asp:DropDownList>
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
                        <asp:TextBox ID="lblWphoneCont2" runat="server"></asp:TextBox>
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
                        <asp:CheckBox ID="ChkEm3" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="ChkGuard3" runat="server" Text=" Legal Guardian" TextAlign="Right" />
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
                        <asp:DropDownList ID="DropDownListState4" runat="server"></asp:DropDownList>
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
            <h4 ID="hrContact4" runat="server" class="text-center" visible="false">Contact #4</h4>
            <asp:Table ID="tbContact4" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label43" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label44" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label45" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="CheckBox2" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label46" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label47" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label48" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label49" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label50" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label51" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label52" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label53" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 ID="hrContact5" runat="server" class="text-center" visible="false">Contact #5</h4>
            <asp:Table ID="tbContact5" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label54" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label55" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label56" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox3" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="CheckBox4" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label57" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label58" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label59" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList6" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label60" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label61" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label62" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label63" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label64" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 ID="hrContact6" runat="server" class="text-center" visible="false">Contact #6</h4>
            <asp:Table ID="tbContact6" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label65" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label66" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label67" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList7" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox5" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="CheckBox6" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label68" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label69" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label70" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList8" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label71" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label72" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label73" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label74" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label75" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 ID="hrContact7" runat="server" class="text-center" visible="false">Contact #7</h4>
            <asp:Table ID="tbContact7" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label76" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label77" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox65" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label78" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList9" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox7" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="CheckBox8" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label79" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label80" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox67" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label81" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList10" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label82" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="TextBox68" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label83" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label84" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox70" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label85" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox71" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label86" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox72" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 ID="hrContact8" runat="server" class="text-center" visible="false">Contact #8</h4>
            <asp:Table ID="tbContact8" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label87" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox73" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label88" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox74" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label89" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList11" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox9" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="CheckBox10" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label90" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox75" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label91" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox76" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label92" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList12" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label93" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="TextBox77" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label94" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox78" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label95" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox79" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label96" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox80" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label97" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox81" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 ID="hrContact9" runat="server" class="text-center" visible="false">Contact #9</h4>
            <asp:Table ID="tbContact9" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label98" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox82" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label99" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox83" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label100" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList13" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox11" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="CheckBox12" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label101" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox84" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label102" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox85" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label103" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList14" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label104" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="TextBox86" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label105" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox87" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label106" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox88" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label107" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox89" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label108" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox90" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h4 ID="hrContact10" runat="server" class="text-center" visible="false">Contact #10</h4>
            <asp:Table ID="tbContact10" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label109" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox91" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label110" runat="server" Text="Last Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox92" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label111" runat="server" Text="Relationship "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList15" runat="server">
                            <asp:ListItem>Legal Guardian</asp:ListItem>
                            <asp:ListItem>Spouse</asp:ListItem>
                            <asp:ListItem>Parent</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBox13" runat="server" Text=" Emergency Contact" TextAlign="Right" /><br />
                        <asp:CheckBox ID="CheckBox14" runat="server" Text=" Legal Guardian" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label112" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox93" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label113" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox94" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label114" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList16" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label115" runat="server" Text="Zip "></asp:Label><br />
                        <asp:TextBox ID="TextBox95" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label116" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox96" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label117" runat="server" Text="Home Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox97" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label118" runat="server" Text="Cell Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox98" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label119" runat="server" Text="Work Phone "></asp:Label><br />
                        <asp:TextBox ID="TextBox99" runat="server"></asp:TextBox>
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
                        <asp:Label ID="lblCoordinator" runat="server" Text="Coordinator "></asp:Label><br />
                        <asp:TextBox ID="txtCoordinator" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblDeptHead" runat="server" Text="Department Head "></asp:Label><br />
                        <asp:TextBox ID="txtDeptHead" runat="server"></asp:TextBox>
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
            <hr ID="Provider2hr" runat="server" style="border-top:1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" Visible="False"/>
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
            <hr ID="Provider3hr" runat="server" style="border-top:1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" Visible="False"/>
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
            <hr ID="Provider4hr" runat="server" style="border-top:1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" Visible="False"/>
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
            <hr ID="Provider5hr" runat="server" style="border-top:1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" Visible="False"/>
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
        <hr />
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
                        <asp:TextBox ID="txtAllergies" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                        <asp:DropDownList ID="DropDownListState6" runat="server"></asp:DropDownList>
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript1" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript2" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript3" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript4" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript5" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript6" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript7" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript8" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript9" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript10" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript11" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript12" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript13" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript14" runat="server" Text="Non-Prescription" TextAlign="Right" />
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
                        <br /><asp:CheckBox ID="ckboxNonPerscript15" runat="server" Text="Non-Prescription" TextAlign="Right" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <div>
                <br />
                <asp:LinkButton ID="btnAddMed" runat="server" CssClass="btn btn-primary" OnClick="btnAddMed_Click" CommandName="AddMed"> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Medication</asp:LinkButton>
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
                    <asp:LinkButton ID="SubmitBtn" runat="server" CssClass="btn btn-primary"> <span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Submit</asp:LinkButton>
                    <asp:LinkButton ID="ResetBtn" runat="server" CssClass="btn btn-primary"> <span aria-hidden="true" class="glyphicon glyphicon-refresh"></span> Reset</asp:LinkButton>
                </div>
                <div>
                    <asp:Label ID="lblResults" runat="server" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
</asp:Content>

