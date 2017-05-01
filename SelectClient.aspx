<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SelectClient.aspx.cs" Inherits="SelectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <style>
        th, td {
            padding-left: 10px;
        padding-right: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        }
    </style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [ClientID], [First_Name], [Last_Name], [Status] FROM [Client] WHERE ([Last_Name] LIKE @Last_Name + '%')">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="%" Name="Last_Name" SessionField="Selection" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <%--//Page Header--%>
                    <h2 class="text-center">Client Selection</h2>
                <hr />
    <%--//Client Selection--%>
    <div class="text-center">
        <div class="btn-group btn-group-sm">
            <asp:LinkButton ID="All" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="%">*ALL</asp:LinkButton>
            <asp:LinkButton ID="A" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="A">A</asp:LinkButton>
            <asp:LinkButton ID="B" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="B">B</asp:LinkButton>
            <asp:LinkButton ID="C" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="C">C</asp:LinkButton>
            <asp:LinkButton ID="D" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="D">D</asp:LinkButton>
            <asp:LinkButton ID="E" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="E">E</asp:LinkButton>
            <asp:LinkButton ID="F" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="F">F</asp:LinkButton>
            <asp:LinkButton ID="G" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="G">G</asp:LinkButton>
            <asp:LinkButton ID="H" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="H">H</asp:LinkButton>
            <asp:LinkButton ID="I" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="I">I</asp:LinkButton>
            <asp:LinkButton ID="J" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="J">J</asp:LinkButton>
            <asp:LinkButton ID="K" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="K">K</asp:LinkButton>
            <asp:LinkButton ID="L" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="L">L</asp:LinkButton>
            <asp:LinkButton ID="M" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="M">M</asp:LinkButton>
            <asp:LinkButton ID="N" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="N">N</asp:LinkButton>
            <asp:LinkButton ID="O" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="O">O</asp:LinkButton>
            <asp:LinkButton ID="P" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="P">P</asp:LinkButton>
            <asp:LinkButton ID="Q" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="Q">Q</asp:LinkButton>
            <asp:LinkButton ID="R" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="R">R</asp:LinkButton>
            <asp:LinkButton ID="S" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="S">S</asp:LinkButton>
            <asp:LinkButton ID="T" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="T">T</asp:LinkButton>
            <asp:LinkButton ID="U" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="U">U</asp:LinkButton>
            <asp:LinkButton ID="V" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="V">V</asp:LinkButton>
            <asp:LinkButton ID="W" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="W">W</asp:LinkButton>
            <asp:LinkButton ID="X" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="X">X</asp:LinkButton>
            <asp:LinkButton ID="Y" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="Y">Y</asp:LinkButton>
            <asp:LinkButton ID="Z" runat="server" CssClass="btn btn-default" OnClick="btn_group_Click" CommandName="Z">Z</asp:LinkButton>
        </div>
    </div>
    <br />
    <br />
    <%--//List View Output--%>
        <asp:GridView ID="ClientGridView" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" EmptyDataText="No data available." AllowPaging="True" HorizontalAlign="Center" runat="server" DataKeyNames="ClientID" AllowSorting="True" OnRowCommand="ClientGridView_RowCommand" CellSpacing="5" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False" PageSize="20">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-primary btn-xs" CausesValidation="false" CommandName="Select" Text="Select" NavigateURL="" CommandArgument='<%# Eval("ClientID") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ClientID" HeaderText="Client ID" InsertVisible="False" ReadOnly="True" SortExpression="ClientID" Visible="False" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>

<HeaderStyle HorizontalAlign="Center" Wrap="False"></HeaderStyle>
            <RowStyle CssClass="tablePadding" HorizontalAlign="Center" Wrap="False" />
        </asp:GridView>
</asp:Content>

