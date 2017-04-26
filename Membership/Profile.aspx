<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Membership_Profile" %>

<%@ Register Src="CurrentUserInfo.ascx" TagName="CurrentUserInfo" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 style="text-align: center">Welcome,
                            <asp:LoginName ID="LoginName1" runat="server" />

                </h1>
                <hr />
            </div>
            <hr>
        </div>
    </div>
    <div>
        <uc1:CurrentUserInfo ID="CurrentUserInfo1" runat="server" />
    </div>
</asp:Content>
