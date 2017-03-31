<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content runat="server" ContentPlaceHolderID="Body">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">Welcome to the CETC online system</h2>
                    <hr>
                    <div class="btn-group btn-group-justified">
                        <a href="DataEntryHome.aspx" class="btn btn-primary btn-lg">Data Entry</a>
                        <a href="#" class="btn btn-primary btn-lg">Reports</a>
                        <a href="#" class="btn btn-primary btn-lg">Users</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
