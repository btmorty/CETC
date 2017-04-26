<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="Membership_ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                    <h2 class="text-center">Manage Users</h2>
            <hr />    
            </div>
        </div>
    </div>

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" OnCreatedUser="CreateUserWizard1_CreatedUser" LoginCreatedUser="False" DisplayCancelButton="True">
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle BorderWidth="0px" />
        </asp:CreateUserWizard>
    <br />
    <br />
    <div>
        <asp:GridView ID="GridView1" DataKeyNames="UserName" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="2" CellSpacing="2" HorizontalAlign="Center" Width="1000px" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="True" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email Address" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="LastLoginDate" HeaderText="Last Login" ReadOnly="True" SortExpression="LastLoginDate" />
                <asp:CheckBoxField DataField="IsOnline" HeaderText="Is Online?" ReadOnly="True" SortExpression="IsOnline" />
                <asp:TemplateField HeaderText="Is Admin?">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Enabled="false" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Change Admin">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Edit" Text="Change Admin"></asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Update">Update</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField CommandName="Select" HeaderText="View Profile" ShowHeader="False" Text="View" />

                <asp:TemplateField HeaderText="Delete Profile">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="false" CommandName="Delete" Text="Delete" OnClientClick="return confrim('Are you sure you want to delete this user?')"></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <div class="text-center" >
            <asp:Label ID="lblProfileHeader" runat="server" Visible="false" CssClass="h2" Text="Profile for Selected User" style="text-align: center"></asp:Label>
        </div>
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="false" style="margin-left: auto; margin-right:auto;" Width="250px">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="First Name "> </asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Last Name "> </asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Birth Date "> </asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtBirthDate" runat="server"> </asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Street "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="City "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="State "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Zip Code "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Country "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></td>
                </tr>
     
               
                
            </table>
            
            
             <hr />
        </asp:Panel>
    </div>
    <div style="width: 250px; margin-left: auto; margin-right: auto; text-align: center;">
    <asp:Button ID="Button1" runat="server" Text="Update Profile" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="UpdateConfirm" runat="server"></asp:Label>
</div>
</asp:Content>

