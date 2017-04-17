<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewClient.aspx.cs" Inherits="ViewClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT ClientID, First_Name, Last_Name, Status FROM Client"></asp:SqlDataSource>
    <%--//Page Header--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h2 class="text-center">View Client</h2>
                </div>
                <hr>
            </div>
        </div>
    </div>
    <%--//Client Selection--%>
    <div class="centerForm">
        <label>Client Status</label>
        <asp:DropDownList ID="DropDownListStatus" runat="server">
            <asp:ListItem>Active</asp:ListItem>
            <asp:ListItem>In-Active</asp:ListItem>
        </asp:DropDownList><br />
        <div class="container">
            <div class="btn-toolbar">
                <div class="btn-group btn-group-sm">
                    <asp:LinkButton ID="All" runat="server" CssClass="btn btn-default" OnClick="All_Click">*ALL</asp:LinkButton>
                    <asp:LinkButton ID="A" runat="server" CssClass="btn btn-default">A</asp:LinkButton>
                    <asp:LinkButton ID="B" runat="server" CssClass="btn btn-default">B</asp:LinkButton>
                    <asp:LinkButton ID="C" runat="server" CssClass="btn btn-default">C</asp:LinkButton>
                    <asp:LinkButton ID="D" runat="server" CssClass="btn btn-default">D</asp:LinkButton>
                    <asp:LinkButton ID="E" runat="server" CssClass="btn btn-default">E</asp:LinkButton>
                    <asp:LinkButton ID="F" runat="server" CssClass="btn btn-default">F</asp:LinkButton>
                    <asp:LinkButton ID="G" runat="server" CssClass="btn btn-default">G</asp:LinkButton>
                    <button class="btn btn-default">H</button>
                    <button class="btn btn-default">I</button>
                    <button class="btn btn-default">J</button>
                    <button class="btn btn-default">K</button>
                    <button class="btn btn-default">L</button>
                    <button class="btn btn-default">M</button>
                    <button class="btn btn-default">N</button>
                    <button class="btn btn-default">O</button>
                    <button class="btn btn-default">P</button>
                    <button class="btn btn-default">Q</button>
                    <button class="btn btn-default">R</button>
                    <button class="btn btn-default">S</button>
                    <button class="btn btn-default">T</button>
                    <button class="btn btn-default">U</button>
                    <button class="btn btn-default">V</button>
                    <button class="btn btn-default">W</button>
                    <button class="btn btn-default">X</button>
                    <button class="btn btn-default">Y</button>
                    <button class="btn btn-default">Z</button>
                </div>
            </div>
        </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"></asp:ListView>

    </div>
</asp:Content>

