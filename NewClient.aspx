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
        <h3>Personal Information</h3>
        <asp:Table ID="Table1" runat="server" CellSpacing="2" CellPadding="2">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblFname" runat="server" Text="FirstName "></asp:Label><br />
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
                        <asp:ListItem>North East Asian (Mongol, Tibetan, Korean Japanese, etc)</asp:ListItem>
                        <asp:ListItem>Pacific (Polynesian, Micronesian, etc)</asp:ListItem>
                        <asp:ListItem>South East Asian (Chinese, Thai, Malay, Filipino, etc)</asp:ListItem>
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
        <h3>Family/Guardian Contact Information</h3>
        <h4 class="text-center">Contact #1</h4>
        <asp:Table ID="emContact1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblFnameCont1" runat="server" Text="First Name "></asp:Label>
                    <asp:TextBox ID="txtFnameCont1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblLnameCont1" runat="server" Text="Last Name "></asp:Label>
                    <asp:TextBox ID="txtLnameCont1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblRelCont1" runat="server" Text="Relationship "></asp:Label>
                    <asp:DropDownList ID="DropDownListRelCont1" runat="server">
                        <asp:ListItem>Spouse</asp:ListItem>
                        <asp:ListItem>Parent</asp:ListItem>
                        <asp:ListItem>Child</asp:ListItem>
                        <asp:ListItem>Other Legal Guardian</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblAddressCont1" runat="server" Text="Address "></asp:Label>
                    <asp:TextBox ID="txtAddressCont1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblCityCont1" runat="server" Text="City "></asp:Label>
                    <asp:TextBox ID="txtCityCont1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="State "></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="Zip "></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
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
        <label>Home Phone</label><br />
        <input type="tel"><br />
        <label>Cell Phone</label><br />
        <input type="tel"><br />
        <label>Work Phone</label><br />
        <input type="tel"><br />
    </div>
    <div class="col-sm-4">
        <h4 class="text-center">Contact #2</h4>
        <label>Relationship</label><br />
        <select>
            <option value="Spouse">Spouse</option>
            <option value="Parent">Parent</option>
            <option value="Child">Child</option>
            <option value="Other-Relitive">Other Relitive</option>
        </select>
        <br />
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
        <label>Home Phone</label><br />
        <input type="tel"><br />
        <label>Cell Phone</label><br />
        <input type="tel"><br />
        <label>Work Phone</label><br />
        <input type="tel"><br />
    </div>
    <h4 class="text-center">Contact #3</h4>
    <label>Relationship</label><br />
    <select>
        <option value="Spouse">Spouse</option>
        <option value="Parent">Parent</option>
        <option value="Child">Child</option>
        <option value="Other-Relitive">Other Relitive</option>
    </select>
    <br />
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
    <label>Home Phone</label><br />
    <input type="tel"><br />
    <label>Cell Phone</label><br />
    <input type="tel"><br />
    <label>Work Phone</label><br />
    <input type="tel"><br />
    </div>
</div>
    <hr>
    <div class="row">
        <h3>Emergency Contacts Information</h3>
        <div class="col-sm-4">
            <h4 class="text-center">Contact #1</h4>
            <label>Same As Above: </label>
            <input type="checkbox" name="EmContact1" value="Same"><br />
            <label>Relationship</label><br />
            <select>
                <option value="Spouse">Spouse</option>
                <option value="Parent">Parent</option>
                <option value="Child">Child</option>
                <option value="Other-Relitive">Other Relitive</option>
            </select>
            <br />
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
            <label>Home Phone</label><br />
            <input type="tel"><br />
            <label>Cell Phone</label><br />
            <input type="tel"><br />
            <label>Work Phone</label><br />
            <input type="tel"><br />
        </div>
        <div class="col-sm-4">
            <h4 class="text-center">Contact #2</h4>
            <label>Same As Above: </label>
            <input type="checkbox" name="EmContact2" value="Same"><br />
            <label>Relationship</label><br />
            <select>
                <option value="Spouse">Spouse</option>
                <option value="Parent">Parent</option>
                <option value="Child">Child</option>
                <option value="Other-Relitive">Other Relitive</option>
            </select>
            <br />
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
            <label>Home Phone</label><br />
            <input type="tel"><br />
            <label>Cell Phone</label><br />
            <input type="tel"><br />
            <label>Work Phone</label><br />
            <input type="tel"><br />
        </div>
        <div class="col-sm-4">
            <h4 class="text-center">Contact #3</h4>
            <label>Same As Above: </label>
            <input type="checkbox" name="EmContact3" value="Same"><br />
            <label>Relationship</label><br />
            <select>
                <option value="Spouse">Spouse</option>
                <option value="Parent">Parent</option>
                <option value="Child">Child</option>
                <option value="Other-Relitive">Other Relitive</option>
            </select>
            <br />
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
            <label>Home Phone</label><br />
            <input type="tel"><br />
            <label>Cell Phone</label><br />
            <input type="tel"><br />
            <label>Work Phone</label><br />
            <input type="tel"><br />
        </div>
    </div>
    <hr>
    <div class="row">
        <h3>Health Profile Information</h3>
        <div class="col-sm-4">
            <h4 class="text-center">Basic Information</h4>
            <label>Height</label><br />
            <input type="text"><br />
            <label>Weight (lbs)</label><br />
            <input type="text"><br />
            <label>Hair</label><br />
            <input type="text"><br />
            <label>Eye Color</label><br />
            <input type="text"><br />
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

