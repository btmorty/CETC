<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewClient.aspx.cs" Inherits="NewClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
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
    <div style="padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;">
        <h3 class="text-center">Personal Information</h3>
        <asp:Table ID="Table1" runat="server" CellSpacing="2" CellPadding="2" HorizontalAlign="Center" Width="100%">
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
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSex" runat="server" Text="Sex "></asp:Label><br />
                    <asp:DropDownList ID="DropDownSex" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblStatus" runat="server" Text="Status "></asp:Label><br />
                    <asp:DropDownList ID="DropDownListStatus" runat="server">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>In-Active</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblRace" runat="server" Text="Race "></asp:Label><br />
                    <asp:DropDownList ID="DropDownListRace" runat="server">
                        <asp:ListItem>Mixed Race</asp:ListItem>
                        <asp:ListItem>Arctic (Siberian, Eskimo)</asp:ListItem>
                        <asp:ListItem>Caucasian (European)</asp:ListItem>
                        <asp:ListItem>Caucasian (Indian)</asp:ListItem>
                        <asp:ListItem>Caucasian (Middle East)</asp:ListItem>
                        <asp:ListItem>Caucasian (North African, Other)</asp:ListItem>
                        <asp:ListItem>Indigenous Australian</asp:ListItem>
                        <asp:ListItem>Native American</asp:ListItem>
                        <asp:ListItem>North East Asian</asp:ListItem>
                        <asp:ListItem>Pacific</asp:ListItem>
                        <asp:ListItem>South East Asian</asp:ListItem>
                        <asp:ListItem>West African, Bushmen, Ethiopian</asp:ListItem>
                        <asp:ListItem>Other Race</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblResStatus" runat="server" Text="Residential Status "></asp:Label><br />
                    <asp:DropDownList ID="DropDownListResStatus" runat="server">
                        <asp:ListItem>Rent</asp:ListItem>
                        <asp:ListItem>Own</asp:ListItem>
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
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSSN" runat="server" Text="SSN "></asp:Label><br />
                    <asp:TextBox ID="txtSSN" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblICAP" runat="server" Text="ICAP Level "></asp:Label><br />
                    <asp:TextBox ID="txtICAP" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblDSPD" runat="server" Text="DSPD "></asp:Label><br />
                    <asp:TextBox ID="txtDSPD" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblSSI" runat="server" Text="SSI "></asp:Label><br />
                    <asp:TextBox ID="txtSSI" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblSSA" runat="server" Text="SSA "></asp:Label><br />
                    <asp:TextBox ID="txtSSA" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblDiagnosis" runat="server" Text="Diagnosis "></asp:Label><br />
                    <asp:TextBox ID="txtDiagnosis" runat="server"></asp:TextBox>
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
                        <asp:ListItem>Spouse</asp:ListItem>
                        <asp:ListItem>Parent</asp:ListItem>
                        <asp:ListItem>Child</asp:ListItem>
                        <asp:ListItem>Other Legal Guardian</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text=" Emergency Contact" TextAlign="Right" />
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
                    <asp:TextBox ID="txtEmergyEvacNeeds1" runat="server" columns="30" TextMode="multiline"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEmergyEvacNeedsLocation1" runat="server" Text="1st Evacuation Location "></asp:Label><br />
                    <asp:TextBox ID="txtEmergyEvacNeedsLocation1" runat="server" columns="30"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEmergyEvacNeedsLocation2" runat="server" Text="2nd Evacuation Location "></asp:Label><br />
                    <asp:TextBox ID="txtEmergyEvacNeedsLocation2" runat="server" columns="30"></asp:TextBox>
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
    </asp:Table>
            <h4 class="text-center">Basic Information</h4>
            
           

            <label>Medical Limitations / Adaptive Devices</label><br />
            <textarea></textarea><br />
            <label>Allergies</label><br />
            <textarea></textarea><br />
            <label>Preferred Hospital</label><br />
            <input type="text"><br />
            <label>Hospital Address</label><br />
            <input type="text"><br />
            <label>Hospital Phone</label><br />
            <input type="tel"><br />

        </div>
        <div class="col-sm-4">
            <h4 class="text-center">Medical Providers</h4>
            <label>Specialty</label><br />
            <input type="text"><br />
            <label>First Name</label><br />
            <input type="text"><br />
            <label>Last Name</label><br />
            <input type="text"><br />
            <label>Address </label>
            <br />
            <input type="text"><br />
            <label>City</label><br />
            <input type="text"><br />
            <label>State</label><br />
            <input type="text"><br />
            <label>Zip Code</label><br />
            <input type="text"><br />
            <label>E-Mail Address</label><br />
            <input type="email"><br />
            <label>Phone</label><br />
            <input type="tel"><br />
        </div>
        <div class="col-sm-4">
            <h4 class="text-center">Medications</h4>
            <label>Medication</label><br />
            <input type="text"><br />
            <label>Dosage</label><br />
            <input type="text"><br />
            <label>Purpose</label><br />
            <input type="text"><br />
            <label>Physician First Name</label><br />
            <input type="text"><br />
            <label>Physician Last Name</label><br />
            <input type="text"><br />
        </div>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <input type="submit">
            <input type="reset">
        </div>
        <div class="col-sm-4"></div>
    </div>
</asp:Content>

