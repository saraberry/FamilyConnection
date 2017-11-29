<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grocery.aspx.cs" Inherits="Connection.Views.Grocery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="green center">Grocery List</h1>
    <br />
    <table style="width:100%;">
        <tr>
            <td style="width: 507px">
                <asp:GridView ID="grdList" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="connection" ForeColor="Black" GridLines="Horizontal" Height="379px" style="margin-right: 6px" Width="487px">
                    <Columns>
                        <asp:BoundField DataField="listItemID" HeaderText="listItemID" InsertVisible="False" ReadOnly="True" SortExpression="listItemID" />
                        <asp:BoundField DataField="listItem" HeaderText="listItem" SortExpression="listItem" />
                        <asp:BoundField DataField="storeName" HeaderText="storeName" SortExpression="storeName" />
                        <asp:BoundField DataField="salePrice" HeaderText="salePrice" SortExpression="salePrice" />
                        <asp:BoundField DataField="isComplete" HeaderText="isComplete" SortExpression="isComplete" />
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
            </td>
            <td style="width: 190px">
                <asp:Button ID="btnComplete" runat="server" OnClick="btnComplete_Click" Text="Complete Item" />
                <br />
                <br />
                <br />
                <asp:Button ID="btnFinish" runat="server" OnClick="btnFinish_Click" style="height: 26px" Text="Finished" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td>
                <asp:SqlDataSource ID="connection" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [listItemID], [listItem], [storeName], [salePrice], [isComplete] FROM [ListItems] WHERE (([familyID] = @familyID) AND ([isComplete] = @isComplete) AND ([listType] = @listType))">
                    <SelectParameters>
                        <asp:SessionParameter Name="familyID" SessionField="familyID" Type="Int32" />
                        <asp:Parameter DefaultValue="N" Name="isComplete" Type="String" />
                        <asp:Parameter DefaultValue="grocery" Name="listType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
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
            <td style="height: 23px"></td>
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
                <asp:TextBox ID="txtPrice" runat="server" Width="200px"></asp:TextBox>
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
    </table>
    <br />

</asp:Content>
