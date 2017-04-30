<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CurrentUserInfo.ascx.cs" Inherits="Membership_CurrentUserInfo" %>
<style>
        .center{
    display: flex;
    justify-content: center;
    align-items: center;
}
    </style>

<h3 style="text-align: center">Change your password</h3>
<div class="center">
    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Width="327px" ContinueDestinationPageUrl="~/Membership/Profile.aspx">
        <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:ChangePassword>
</div>
    
<h3 style="text-align: center">View/Edit your Profile Information</h3>
<div class="center">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="First Name "></asp:Label></td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Last Name "></asp:Label></td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email "></asp:Label></td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
    </table>
</div>
<br />
<div style="width: 250px; margin-left: auto; margin-right: auto; text-align: center;">
    <asp:Button ID="Button1" runat="server" Text="Update Profile" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="UpdateConfirm" runat="server"></asp:Label>
</div>
