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
    <asp:SqlDataSource ID="sdsRace0" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT DISTINCT * FROM [DD_Race] WHERE ([Race] = @Race)" InsertCommand="INSERT INTO [DD_Race] ([Race]) VALUES (@Race)" UpdateCommand="UPDATE [DD_Race] SET [Race] = @Race
WHERE [Race] = @Race">
        <InsertParameters>
            <asp:Parameter Name="Race" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlRace" Name="Race" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Race" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsResStatus" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Residential_Status] FROM [DD_Residential_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsResStatus0" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT DISTINCT [Residential_Status] FROM [DD_Residential_Status] WHERE ([Residential_Status] = @Residential_Status) ORDER BY [Residential_Status]" InsertCommand="INSERT INTO [DD_Residential_Status] ([Residential_Status]) VALUES (@Residential_Status)">
        <InsertParameters>
            <asp:Parameter Name="Residential_Status" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlResStatus" Name="Residential_Status" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsPrefLang" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Preferred_Language] FROM [DD_Preferred_Language]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsPrefLang0" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT DISTINCT [Preferred_Language] FROM [DD_Preferred_Language] WHERE ([Preferred_Language] = @Preferred_Language) ORDER BY [Preferred_Language]" InsertCommand="INSERT INTO [DD_Preferred_Language] ([Preferred_Language]) VALUES (@Preferred_Language)">
        <InsertParameters>
            <asp:Parameter Name="Preferred_Language" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPrefLanguage" Name="Preferred_Language" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsReligion" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Religion] FROM [DD_Religion]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsReligion0" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT DISTINCT [Religion] FROM [DD_Religion] WHERE ([Religion] = @Religion) ORDER BY [Religion]" InsertCommand="INSERT INTO [DD_Religion] ([Religion]) VALUES (@Religion)">
        <InsertParameters>
            <asp:Parameter Name="Religion" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlReligion" Name="Religion" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsService" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Service] FROM [DD_Service]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="sdsService0" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT DISTINCT [Service] FROM [DD_Service] WHERE ([Service] = @Service) ORDER BY [Service]" InsertCommand="INSERT INTO [DD_Service] ([Service]) VALUES (@Service)">
        <InsertParameters>
            <asp:Parameter Name="Service" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlService" Name="Service" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

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
                                <asp:LinkButton ID="btnAddRace" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnClientEdit_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                            </div>
                        </td>

                        <td class="auto-style1">
                            <div class="centered">
                            <asp:Label ID="lblResStatus" runat="server" Text="Residential Status List: "></asp:Label><br />
                            <asp:DropDownList ID="ddlResStatus" runat="server" DataSourceID="sdsResStatus" DataTextField="Residential_Status" DataValueField="Residential_Status" Height="16px" Width="260px" AppendDataBoundItems="False" OnDataBinding="Page_Load" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
                            <label>Value to be added:</label><br />
                            <asp:TextBox ID="txtResidentialStatus" runat="server"></asp:TextBox>
                            </div>
                        </td>

                        <td class="auto-style1">
                            <div class="centered">
                            <asp:Label ID="lblPrefLanguage" runat="server" Text="Preferred Language List: "></asp:Label><br />
                            <asp:DropDownList ID="ddlPrefLanguage" runat="server" DataSourceID="sdsPrefLang" DataTextField="Preferred_Language" DataValueField="Preferred_Language" Height="19px" Width="260px" AppendDataBoundItems="False" OnDataBinding="Page_Load" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
                            <label>Value to be added:</label><br />
                            <asp:TextBox ID="txtPReferredLanguage" runat="server"></asp:TextBox>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:DetailsView ID="RaceView" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="sdsRace0" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True" OnItemInserted="RaceView_ItemInserted" OnItemInserting="RaceView_ItemInserting">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="Race" HeaderText="Race" SortExpression="Race" />
                                </Fields>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
                        </td>
                        <td>
                            <asp:DetailsView ID="ResidentialStatusView" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="sdsResStatus0" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True" OnItemInserted="ResidentialStatusView_ItemInserted" OnItemInserting="ResidentialStatusView_ItemInserting">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="Residential_Status" HeaderText="Residential Status" SortExpression="Residential_Status" />
                                </Fields>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
                        </td>
                        <td>
                            <asp:DetailsView ID="PreferredLanguageView" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="sdsPrefLang0" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True" OnItemInserted="PreferredLanguageView_ItemInserted" OnItemInserting="PreferredLanguageView_ItemInserting">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="Preferred_Language" HeaderText="Preferred Language" SortExpression="Preferred_Language" />
                                </Fields>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
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
                            <asp:TextBox ID="txtReligion" runat="server"></asp:TextBox>
                            </div>
                        </td>

                        <td class="auto-style1">
                            <div class="centered">
                            <asp:Label ID="lblService" runat="server" Text="CETC Service List: "></asp:Label><br />
                            <asp:DropDownList ID="ddlService" runat="server" DataSourceID="sdsService" DataTextField="Service" DataValueField="Service" Height="22px" Width="260px" AppendDataBoundItems="False" OnDataBinding="Page_Load" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
                            <label>Value to be added:</label><br />
                            <asp:TextBox ID="txtService" runat="server"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DetailsView ID="ReligionView" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="sdsReligion0" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True" OnItemInserted="ReligionView_ItemInserted" OnItemInserting="ReligionView_ItemInserting">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                                </Fields>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
                        </td>
                        <td>
                            <asp:DetailsView ID="ServiceView" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Service" DataSourceID="sdsService0" ForeColor="#333333" GridLines="None" Height="50px" Width="260px" AutoGenerateInsertButton="True" OnItemInserted="ServiceView_ItemInserted" OnItemInserting="ServiceView_ItemInserting">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="Service" HeaderText="Service" ReadOnly="True" SortExpression="Service" />
                                </Fields>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
                        </td>
                    </tr>
                </table>
        </div>
    <asp:Label ID="errorStatus" runat="server" Visible="false"></asp:Label>
</asp:Content>
