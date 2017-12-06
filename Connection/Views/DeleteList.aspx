<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteList.aspx.cs" Inherits="Connection.Views.DeleteGrocery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="green center">Delete list Item</h1>
    <br />
    <table style="width: 100%;">
        <tr>
            <td style="width: 104px">
                <asp:Label ID="Label1" runat="server" Text="Item Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlListType" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="grocery">Grocery</asp:ListItem>
                    <asp:ListItem Value="todo">To Do</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 104px">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 104px">
                <asp:Label ID="Label2" runat="server" Text="Item Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlItem" runat="server" DataSourceID="SqlDataSource1" DataTextField="listItem" DataValueField="listItem">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ListItems] WHERE (([familyID] = @familyID) AND ([listType] = @listType))">
                    <SelectParameters>
                        <asp:SessionParameter Name="familyID" SessionField="familyID" Type="Int32" />
                        <asp:ControlParameter ControlID="ddlListType" Name="listType" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 104px; height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 104px">&nbsp;</td>
            <td>
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Item" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 104px; height: 22px;"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 104px">&nbsp;</td>
            <td>
                <asp:Button ID="btnFinished" runat="server" OnClick="btnFinished_Click" Text="Finished" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />

</asp:Content>
