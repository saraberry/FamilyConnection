<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ToDo.aspx.cs" Inherits="Connection.Views.ToDo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="blue center">ToDo List</h1>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Connect" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="listItem" HeaderText="Item" SortExpression="listItem" />
            <asp:BoundField DataField="dueDate" HeaderText="Due Date" SortExpression="dueDate" />
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
<asp:SqlDataSource ID="Connect" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [listItem], [dueDate] FROM [ListItems] WHERE (([familyID] = @familyID) AND ([listType] = @listType))">
    <SelectParameters>
        <asp:SessionParameter Name="familyID" SessionField="familyID" Type="Int32" />
        <asp:Parameter DefaultValue="todo" Name="listType" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Items" />
<br />
<table style="width:100%;">
    <tr>
        <td style="width: 27px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td style="width: 329px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 27px">&nbsp;</td>
        <td style="width: 118px">
            <asp:Label ID="Label1" runat="server" Text="Item Name"></asp:Label>
        </td>
        <td style="width: 329px">
            <asp:TextBox ID="txtItemName" runat="server" Width="273px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtItemName" ErrorMessage="Item Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 27px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td style="width: 329px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 27px">&nbsp;</td>
        <td style="width: 118px">
            <asp:Label ID="Label2" runat="server" Text="Due Date"></asp:Label>
        </td>
        <td style="width: 329px">
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 27px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td style="width: 329px">
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 27px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td style="width: 329px">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Item" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 27px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td style="width: 329px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 27px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td style="width: 329px">
            <asp:Button ID="btnDone" runat="server" OnClick="btnDone_Click" Text="Finished" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
    <br />

</asp:Content>
