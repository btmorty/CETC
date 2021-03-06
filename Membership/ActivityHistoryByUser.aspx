﻿<%@ Page Title="User Activity Log" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ActivityHistoryByUser.aspx.cs" Inherits="ActivityHistoryByUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <style>
        .center {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        th, td {
            padding-left: 10px;
        padding-right: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        }
    </style>
    <script type="text/javascript">
    function getPassword()
    {
        var pwd = prompt('Please type "Delete" to confirm that you want to delete the Activity Log:', '');
        
        if(pwd != null)
        {
            if (pwd == document.getElementById('<%= hidPassword.ClientID %>').value)
            {
                return true;
            }
        }
        return false;
    }
    </script>
    <asp:HiddenField ID="hidPassword" runat="server" Value="Delete" />

    <h2>Activity History for
        <asp:Label ID="UserToView" runat="server"></asp:Label>
    </h2>
    <br />
    <div class="center">
        <asp:Label ID="Label1" runat="server" Text="View activity history for:"></asp:Label>
        &nbsp;<asp:DropDownList ID="ViewUser" runat="server" AutoPostBack="True"
            DataTextField="UserName" DataValueField="ProviderUserKey"
            OnSelectedIndexChanged="ViewUser_SelectedIndexChanged">
        </asp:DropDownList>
    </div>
    <br />
    <br />
    <div class="center">
        <asp:GridView ID="gvActivityLog" runat="server"
            DataSourceID="ActivityLogDataSource" AutoGenerateColumns="False" AllowPaging="True" PageSize="25" AllowSorting="True">
            <Columns>
                <asp:TemplateField HeaderText="Activity">
                    <ItemTemplate>
                        <%# FormatActivity(Eval("Activity").ToString(), Eval("PageUrl").ToString()) %>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Updated">
                    <ItemTemplate>
                        <%# FormatLastUpdatedDate(Convert.ToDateTime(Eval("ActivityDate")), Convert.ToDateTime(Eval("CurrentDate")))%>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <div class="text-center">
        <asp:LinkButton ID="btnExport" runat="server" CssClass="btn btn-primary" OnClick="ExportToExcel"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span> Export To Excel</asp:LinkButton>
    </div>
    <br />
    <div class="text-center">
        <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-primary" OnClientClick="return getPassword()" OnClick="DeleteActvityLog"><span aria-hidden="true" class="glyphicon glyphicon-refresh"></span> Reset Activity Log</asp:LinkButton>
    </div>
    <asp:Label ID="lblStatus" runat="server" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="ActivityLogDataSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:MembershipDB %>"
        SelectCommand="usp_GetUserActivityLog" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ViewUser" Name="UserID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>