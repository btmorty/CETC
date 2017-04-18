<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Membership_Profile" %>

<%@ Register src="CurrentUserInfo.ascx" tagname="CurrentUserInfo" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">
     <div class="container">
      <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">User Profile</h2>
                </div>
                <hr>
            </div>
        </div>
      </div>
     <div>
       <uc1:CurrentUserInfo ID="CurrentUserInfo1" runat="server" />
    
    </div>
</asp:Content>
