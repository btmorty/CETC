<%@ Page Title="Edit Tables" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DropDownManager - Copy.aspx.cs" Inherits="SelectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <style>
        th, td {
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 5px;
            padding-bottom: 5px;
        }
    </style>
    <%--//Page Header--%>
    <h2 class="text-center">Drop Down List Manager</h2>
    <h3 class="text-center">&nbsp;</h3>
    <hr>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" InsertCommand="INSERT INTO [DD_Preferred_Language] [Preferred_Language] VALUES @Preferred_Language" SelectCommand="SELECT DISTINCT [Preferred_Language] FROM [DD_Preferred_Language]">
        <InsertParameters>
            <asp:Parameter Name="Preferred_Language" />
        </InsertParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowFooter="True" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Preferred Language" SortExpression="Preferred_Language">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Preferred_Language") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtLanguage" runat="server"></asp:TextBox>
                    <asp:LinkButton ID="btnAddLanguage" runat="server" CommandName="Insert">LinkButton</asp:LinkButton>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Preferred_Language") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    </asp:Content>
