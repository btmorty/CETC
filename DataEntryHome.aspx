<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DataEntryHome.aspx.cs" Inherits="DataEntryHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">Data Entry</h2>
                    <hr>
                    <div class="btn-group btn-group-justified">
                        <a href="newclient.html" class="btn btn-primary btn-lg">New Client</a>
                        <a href="updateclient.html" class="btn btn-primary btn-lg">Edit Client</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

