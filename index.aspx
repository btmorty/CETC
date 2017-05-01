<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content runat="server" ContentPlaceHolderID="Body">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">Welcome to the CETC online system</h2>
                    <hr>
                    <div class="btn-group btn-group-justified">
                        <a href="DataEntryHome.aspx" class="btn btn-primary btn-lg">Data Entry</a>
                        <a href="Reports/ReportsHome.aspx" class="btn btn-primary btn-lg">Reports</a>
                    </div>
                </div>
            </div>
        </div>
        <div style="text-align: center">
        <span>This website contains privileged and confidential information and/or protected health information (PHI) intended solely for the use of </span><asp:LoginName ID="LoginName1" runat="server" /><br />
        <span>If you are not </span><asp:LoginName ID="LoginName2" runat="server" /><span> you are hereby notified that any review, dissemination, distribution, printing or copying of the content of this website strictly prohibited.</span><br />
        <span> Please log off immediately, and notify the System Admin.</span>
        </div>
        
    </div>
</asp:Content>
