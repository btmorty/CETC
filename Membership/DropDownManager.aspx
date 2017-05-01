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
    <div class="centered">
        <i>Add values to the dopdown lists for the client forms. Values can only be added, not removed or edited to protect data validation.</i>
    </div>
    <br />
    <%--//Data Sources--%>
    <asp:SqlDataSource ID="sdsRace" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Race] FROM [DD_Race]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsResStatus" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Residential_Status] FROM [DD_Residential_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsPrefLang" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Preferred_Language] FROM [DD_Preferred_Language]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsReligion" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Religion] FROM [DD_Religion]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsService" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [Service] FROM [DD_Service]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="refCETC" runat="server" ConnectionString="<%$ ConnectionStrings:CETC_DB %>" SelectCommand="SELECT [cetcRefID], [Director], [Address], [Phone], [Fax] FROM [REF_CETC]" UpdateCommand="UPDATE [REF_CETC] SET [Director] = @Director, [Address] = @Address, [Phone] = @Phone, [Fax] = @Fax WHERE [cetcRefID] = 1">
        <UpdateParameters>
            <asp:Parameter Name="Director" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Fax" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%--//Body--%>
    <div class="centered">
        <table>
            <tr>
                <td class="auto-style1">
                    <div class="centered">
                        <asp:Label ID="lblRace" runat="server" Text="Race List: "></asp:Label><br />
                        <asp:DropDownList ID="ddlRace" runat="server" DataSourceID="sdsRace" DataTextField="Race" DataValueField="Race" Height="20px" Width="200px" AutoPostBack="True" OnDataBinding="Page_Load">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <label>Value to be added:</label><br />
                        <asp:TextBox ID="txtAddRace" runat="server"></asp:TextBox>
                        <!-- Validator(s) for txtAddRace here-->
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtAddRace" ErrorMessage="Please enter a valid race format" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                        <br />
                        <br />
                        <asp:LinkButton ID="btnAddRace" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddRace_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                    </div>
                </td>

                <td class="auto-style1">
                    <div class="centered">
                        <asp:Label ID="lblResStatus" runat="server" Text="Residential Status List: "></asp:Label><br />
                        <asp:DropDownList ID="ddlResStatus" runat="server" DataSourceID="sdsResStatus" DataTextField="Residential_Status" DataValueField="Residential_Status" Height="20px" Width="200px" AppendDataBoundItems="False" OnDataBinding="Page_Load" AutoPostBack="True">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <label>Value to be added:</label><br />
                        <asp:TextBox ID="txtAddResidential" runat="server"></asp:TextBox>
                        <!-- Validator(s) for txtAddResidential here-->
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtAddResidential" ErrorMessage="Please enter a valid residential format" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                        <br />
                        <br />
                        <asp:LinkButton ID="btnAddResidental" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddResidental_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                    </div>
                </td>

                <td class="auto-style1">
                    <div class="centered">
                        <asp:Label ID="lblPrefLanguage" runat="server" Text="Preferred Language List: "></asp:Label><br />
                        <asp:DropDownList ID="ddlPrefLanguage" runat="server" DataSourceID="sdsPrefLang" DataTextField="Preferred_Language" DataValueField="Preferred_Language" Height="20px" Width="200px" AppendDataBoundItems="False" OnDataBinding="Page_Load" AutoPostBack="True">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <label>Value to be added:</label><br />
                        <asp:TextBox ID="txtAddLanguage" runat="server"></asp:TextBox>
                        <!-- Validator(s) for txtAddLanguage here-->
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtAddLanguage" ErrorMessage="Please enter a valid language format" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                        <br />
                        <br />
                        <asp:LinkButton ID="btnAddLanguage" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddLanguage_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                    </div>
                </td>
                <td class="auto-style1">
                    <div class="centered">
                        <asp:Label ID="lblReligion" runat="server" Text="Religion List: "></asp:Label><br />
                        <asp:DropDownList ID="ddlReligion" runat="server" DataSourceID="sdsReligion" DataTextField="Religion" DataValueField="Religion" Height="20px" Width="200px" OnDataBinding="Page_Load" AutoPostBack="True">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <label>Value to be added:</label><br />
                        <asp:TextBox ID="txtAddReligion" runat="server"></asp:TextBox>
                        <!-- Validator(s) for txtAddReligion here-->
                        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtAddReligion" ErrorMessage="Please enter a valid religion format" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                        <br />
                        <br />
                        <asp:LinkButton ID="btnAddReligion" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddReligion_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                    </div>
                </td>
                <td class="auto-style1">
                    <div class="centered">
                        <asp:Label ID="lblService" runat="server" Text="CETC Service List: "></asp:Label><br />
                        <asp:DropDownList ID="ddlService" runat="server" DataSourceID="sdsService" DataTextField="Service" DataValueField="Service" Height="20px" Width="200px" AppendDataBoundItems="False" OnDataBinding="Page_Load" AutoPostBack="True">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <label>Value to be added:</label><br />
                        <asp:TextBox ID="txtAddService" runat="server"></asp:TextBox>
                        <!-- Validator(s) for txtAddService here-->
                        <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtAddService" ErrorMessage="Please enter a valid service format" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                        <br />
                        <br />
                        <asp:LinkButton ID="btnAddService" runat="server" CssClass="btn btn-primary" CommandName="Edit" OnClick="btnAddService_Click"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span> Add</asp:LinkButton>
                    </div>
                </td>
            </tr>
        </table>
        <br />
        <h2 class="text-center">CETC Information</h2>
        <hr />
        <div class="centered">
            <i>Update CETC information to be displayed on client face sheet.</i>
            <br />
            <br />
        </div>
        <asp:FormView ID="CETCFormView" runat="server" DataKeyNames="cetcRefID" DataSourceID="refCETC">
            <EditItemTemplate>
                <div class="centered">
                <table>
                    <tr>
                        <td>
                            <label>Director: </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDirector" runat="server" Text='<%# Bind("Director") %>'></asp:TextBox>
                            <!-- Validator(s) for txtDirector here-->
                            <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtDirector" ErrorMessage="Please enter a valid director format" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Address: </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" Text='<%# Bind("Address") %>' Width="400"></asp:TextBox>
                            <!-- Validator(s) for txtAddress here-->
                            <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please enter a valid address format" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Phone: </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("Phone") %>' TextMode="Phone"></asp:TextBox>
                            <!-- Validator(s) for txtPhone here-->
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please enter a valid phone number format" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                            <br />(###-###-####)
                        </td>
                    </tr>
                    <tr>
                        <td>
                                <label>Fax: </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFax" runat="server" Text='<%# Bind("Fax") %>'></asp:TextBox>
                            <!-- Validator(s) for txtFax here-->
                            <asp:CompareValidator ID="CompareValidator8" runat="server" ControlToValidate="txtFax" ErrorMessage="Please enter a valid fax format" Display="Dynamic" ForeColor="Red" Text="*" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFax" ErrorMessage="Please enter a valid fax number format" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" Display="Dynamic" Text="*"></asp:RegularExpressionValidator>
                            <br />(###-###-####)--%>
                        </td>
                    </tr>
                </table>
                </div>
                <br />
                <div class="centered">
                <asp:LinkButton ID="UpdateButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update"><span aria-hidden="true" class="glyphicon glyphicon-ok"></span> Update</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="CancelButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span> Cancel</asp:LinkButton>
                </div>
        </EditItemTemplate>
            <ItemTemplate>
                <div class="centered">
                <table>
                    <tr>
                        <td>
                            <label>Director: </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDirector" runat="server" Text='<%# Bind("Director") %>' ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Address: </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" Text='<%# Bind("Address") %>' Width="400" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Phone: </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("Phone") %>' ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                <label>Fax: </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFax" runat="server" Text='<%# Bind("Fax") %>' ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                </div>
                <br />
                <div class="centered">
                <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Edit"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:FormView>

    </div>
    <asp:Label ID="errorStatus" runat="server" Visible="false"></asp:Label>
</asp:Content>
