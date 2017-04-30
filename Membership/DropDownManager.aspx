<%@ Page Title="Edit Tables" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DropDownManager.aspx.cs" Inherits="SelectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <style>
        th, td {
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 5px;
            padding-bottom: 5px;
        }

        .auto-style1 {
            width: 574px;
            height: 52px;
        }

        div.centered {
            text-align: center;
        }

            div.centered table {
                margin: 0 auto;
                text-align: left;
            }
    </style>
<%--//Page Header--%>
    <h2 class="text-center">Drop Down List Manager</h2>
    <hr>
    <br />

    <asp:SqlDataSource ID="sdsRace" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Race] FROM [DD_Race]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsResStatus" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Residential_Status] FROM [DD_Residential_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsPrefLang" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Preferred_Language] FROM [DD_Preferred_Language]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsReligion" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Religion] FROM [DD_Religion]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsService" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Service] FROM [DD_Service]"></asp:SqlDataSource>

    <div class="centered">
                <table>
                    <tr>
                        <td class="auto-style1">
                            <div class="centered">
                            <label>Race List:</label><br />
                            <asp:DropDownList ID="ddlRace" runat="server" DataSourceID="sdsRace" DataTextField="Race" DataValueField="Race" Height="17px" Width="261px" AutoPostBack="True" OnDataBinding="Page_Load">
                            </asp:DropDownList>
                            <br />
                            <label>Value to be added:</label><br />
                            <asp:TextBox ID="txtAddRace" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:LinkButton ID="btnAddRace" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddRace_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            </div>
                        </td>

                        <td class="auto-style1">
                            <div class="centered">
                            <asp:Label ID="lblResStatus" runat="server" Text="Residential Status List: "></asp:Label><br />
                            <asp:DropDownList ID="ddlResStatus" runat="server" DataSourceID="sdsResStatus" DataTextField="Residential_Status" DataValueField="Residential_Status" Height="16px" Width="260px" AppendDataBoundItems="False" OnDataBinding="Page_Load" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
                            <label>Value to be added:</label><br />
                            <asp:TextBox ID="txtAddResidential" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:LinkButton ID="btnAddResidental" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddResidental_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            </div>
                        </td>

                        <td class="auto-style1">
                            <div class="centered">
                            <asp:Label ID="lblPrefLanguage" runat="server" Text="Preferred Language List: "></asp:Label><br />
                            <asp:DropDownList ID="ddlPrefLanguage" runat="server" DataSourceID="sdsPrefLang" DataTextField="Preferred_Language" DataValueField="Preferred_Language" Height="19px" Width="260px" AppendDataBoundItems="False" OnDataBinding="Page_Load" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
                            <label>Value to be added:</label><br />
                            <asp:TextBox ID="txtAddLanguage" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:LinkButton ID="btnAddLanguage" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddLanguage_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            </div>
                        </td>
                    </tr>
                </table>
                <hr />
                <table>
                    <tr>
                        <td class="auto-style1">
                            <div class="centered">
                            <asp:Label ID="lblReligion" runat="server" Text="Religion List: "></asp:Label><br />
                            <asp:DropDownList ID="ddlReligion" runat="server" DataSourceID="sdsReligion" DataTextField="Religion" DataValueField="Religion" Height="16px" Width="261px" OnDataBinding="Page_Load" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
                            <label>Value to be added:</label><br />
                            <asp:TextBox ID="txtAddReligion" runat="server"></asp:TextBox>
                            <br />
                                <br />
                                <asp:LinkButton ID="btnAddReligion" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddReligion_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            </div>
                        </td>

                        <td class="auto-style1">
                            <div class="centered">
                            <asp:Label ID="lblService" runat="server" Text="CETC Service List: "></asp:Label><br />
                            <asp:DropDownList ID="ddlService" runat="server" DataSourceID="sdsService" DataTextField="Service" DataValueField="Service" Height="22px" Width="260px" AppendDataBoundItems="False" OnDataBinding="Page_Load" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
                            <label>Value to be added:</label><br />
                            <asp:TextBox ID="txtAddService" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:LinkButton ID="btnAddService" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddService_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            </div>
                        </td>
                    </tr>
                    </table>
        </div>
    <asp:Label ID="errorStatus" runat="server" Visible="false"></asp:Label>
</asp:Content>
