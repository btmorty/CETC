<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReportsHome.aspx.cs" Inherits="DataEntryHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">Reports</h2>
                    <hr>
                    <div class="btn-group btn-group-justified">
                        <a href="Provider.aspx" class="btn btn-primary btn-lg">Provider</a>
                        <a href="Coordinator.aspx" class="btn btn-primary btn-lg">Coordinator</a>
                        <a href="Service.aspx" class="btn btn-primary btn-lg">Service</a>
                        <a href="ClientsByState.aspx" class="btn btn-primary btn-lg">Clients by State</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

