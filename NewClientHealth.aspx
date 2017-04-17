<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="NewClientHealth.aspx.cs" Inherits="NewClientHealth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">New Client</h2>
                    <h3 class="text-center">Health Information</h3>
                </div>
                <hr>
                <%--//Validation Report--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </div>
        </div>
    </div>
    <%--//Data Entry Form--%>
    <div class="centerForm">
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
            <asp:Table ID="tbDoctor1" runat="server" HorizontalAlign="Center" Width="100%">
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
            <hr id="hrDoctor2" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
            <asp:Table ID="tbDoctor2" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label8" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <hr id="hrDoctor3" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
            <asp:Table ID="tbDoctor3" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label10" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label12" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label13" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label14" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label15" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label16" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label17" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label18" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <hr id="hrDoctor4" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
            <asp:Table ID="tbDoctor4" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label19" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label20" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label21" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label22" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label23" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label24" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label25" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label26" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label27" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <hr id="hrDoctor5" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
            <asp:Table ID="tbDoctor5" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label28" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label29" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label30" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label31" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label32" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label33" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label34" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label35" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label36" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <hr id="hrDoctor6" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
            <asp:Table ID="tbDoctor6" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label37" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label38" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label39" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label40" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label41" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label42" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label43" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label44" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label45" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <hr id="hrDoctor7" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
            <asp:Table ID="tbDoctor7" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label46" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label47" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label48" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label49" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label50" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label51" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList6" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label52" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label53" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label54" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <hr id="hrDoctor8" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
            <asp:Table ID="tbDoctor8" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label55" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label56" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label57" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label58" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label59" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label60" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList7" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label61" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label62" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label63" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <hr id="hrDoctor9" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
            <asp:Table ID="tbDoctor9" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label64" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label65" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label66" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label67" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label68" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label69" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList8" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label70" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label71" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label72" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <hr id="hrDoctor10" runat="server" style="border-top: 1px dashed #8c8b8b; border-bottom: 1px dashed #fff;" visible="False" />
            <asp:Table ID="tbDoctor10" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label73" runat="server" Text="Specialty "></asp:Label><br />
                        <asp:TextBox ID="TextBox65" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label74" runat="server" Text="First Name "></asp:Label><br />
                        <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label75" runat="server" Text="LastName "></asp:Label><br />
                        <asp:TextBox ID="TextBox67" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label76" runat="server" Text="Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox68" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label77" runat="server" Text="City "></asp:Label><br />
                        <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label78" runat="server" Text="State "></asp:Label><br />
                        <asp:DropDownList ID="DropDownList9" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label79" runat="server" Text="Zip Code "></asp:Label><br />
                        <asp:TextBox ID="TextBox70" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label80" runat="server" Text="E-Mail Address "></asp:Label><br />
                        <asp:TextBox ID="TextBox71" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label81" runat="server" Text="Phone Number "></asp:Label><br />
                        <asp:TextBox ID="TextBox72" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <div>
                <br />
                <asp:LinkButton ID="btnAddDoc" runat="server" CssClass="btn btn-primary" OnClick="btnAddDoc_Click" CommandName="AddDoc"> <span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Medical Provider</asp:LinkButton>
                <asp:Label ID="lblMaxDoc" runat="server" Visible="False" Style="color: red; font-weight: bold;"></asp:Label>
            </div>
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
