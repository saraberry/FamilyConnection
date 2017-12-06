<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GroceryList.aspx.cs" Inherits="Connection.Views.GroceryList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="green center">Grocery List</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Connection" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="listItem" HeaderText="Item" SortExpression="listItem" />
            <asp:BoundField DataField="storeName" HeaderText="Store" SortExpression="storeName" />
            <asp:BoundField DataField="salePrice" HeaderText="Price" SortExpression="salePrice" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>
<asp:SqlDataSource ID="Connection" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [listItem], [storeName], [salePrice] FROM [ListItems] WHERE (([familyID] = @familyID) AND ([listType] = @listType))">
    <SelectParameters>
        <asp:SessionParameter Name="familyID" SessionField="familyID" Type="Int32" />
        <asp:Parameter DefaultValue="grocery" Name="listType" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <br />

                <asp:Button ID="btnComplete" runat="server" OnClick="btnComplete_Click" Text="Delete Items" />
    <br />
    <table style="width:100%;">
        <tr>
            <td style="width: 32px">&nbsp;</td>
            <td style="width: 173px">&nbsp;</td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 32px">&nbsp;</td>
            <td style="height: 23px; width: 173px">
                <asp:Label ID="Label1" runat="server" Text="Item Name"></asp:Label>
            </td>
            <td style="height: 23px; width: 256px">
                <asp:TextBox ID="txtItem" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 32px">&nbsp;</td>
            <td style="width: 173px">&nbsp;</td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 32px">&nbsp;</td>
            <td style="width: 173px">
                <asp:Label ID="Label2" runat="server" Text="Store"></asp:Label>
            </td>
            <td style="width: 256px">
                <asp:TextBox ID="txtStore" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 32px">&nbsp;</td>
            <td style="width: 173px">&nbsp;</td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 32px">&nbsp;</td>
            <td style="width: 173px">
                <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
            </td>
            <td style="width: 256px">
                <asp:TextBox ID="txtPrice" runat="server" Width="200px">0</asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 32px; height: 22px;"></td>
            <td style="width: 173px; height: 22px;"></td>
            <td style="width: 256px; height: 22px;">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 32px; margin-left: 120px">&nbsp;</td>
            <td style="width: 173px; margin-left: 120px">&nbsp;</td>
            <td style="width: 256px">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Item" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 32px; margin-left: 120px">&nbsp;</td>
            <td style="width: 173px; margin-left: 120px">&nbsp;</td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 32px; margin-left: 120px">&nbsp;</td>
            <td style="width: 173px; margin-left: 120px">&nbsp;</td>
            <td style="width: 256px">
                <asp:Button ID="btnFinish" runat="server" OnClick="btnFinish_Click" style="height: 26px" Text="Finished" />
                </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
