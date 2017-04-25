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
    <div>
        <asp:GridView ID="GridView1" DataKeyNames="UserName" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="2" CellSpacing="2" HorizontalAlign="Center" Width="1000px">
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

                <asp:ButtonField CommandName="DeleteUser" HeaderText="Delete Profile" ShowHeader="True" Text="Delete" />

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
                        <asp:TextBox ReadOnly="true" ID="txtFirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Last Name "> </asp:Label></td>
                    <td>
                        <asp:TextBox ReadOnly="true" ID="txtLastName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Birth Date "> </asp:Label></td>
                    <td>
                        <asp:TextBox ReadOnly="true" ID="txtBirthDate" runat="server"> </asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Street "></asp:Label></td>
                    <td>
                        <asp:TextBox ReadOnly="true" ID="txtStreet" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="City "></asp:Label></td>
                    <td>
                        <asp:TextBox ReadOnly="true" ID="txtCity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="State "></asp:Label></td>
                    <td>
                        <asp:TextBox ReadOnly="true" ID="txtState" runat="server" Height="16px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Zip Code "></asp:Label></td>
                    <td>
                        <asp:TextBox ReadOnly="true" ID="txtZip" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Country "></asp:Label></td>
                    <td>
                        <asp:TextBox ReadOnly="true" ID="txtCountry" runat="server"></asp:TextBox></td>
                </tr>
                  
            </table>
            
            
             <hr />
        </asp:Panel>
    </div>
    <%--Link to new user page--%>
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:LinkButton href="CreateUser.aspx" ID="NewUser" runat="server"> Add New User</asp:LinkButton>
    </div>
</asp:Content>

