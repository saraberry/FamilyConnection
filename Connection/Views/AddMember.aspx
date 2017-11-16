<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="Connection.Views.AddMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="plum center">Add a Family Member</h1>
    <table style="width:100%;">
        <tr>
            <td style="width: 156px">
                <asp:Label ID="lblFname" runat="server" Text="First Name"></asp:Label>
            </td>
            <td style="width: 235px">
                <asp:TextBox ID="txtMemFName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valFName" runat="server" ControlToValidate="txtMemFName" ErrorMessage="First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td style="width: 235px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">
                <asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td style="width: 235px">
                <asp:TextBox ID="txtMemLName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valLName" runat="server" ControlToValidate="txtMemLName" ErrorMessage="Last Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td style="width: 235px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px; height: 29px">
                <asp:Label ID="lblBirthday" runat="server" Text="Birthdate"></asp:Label>
            </td>
            <td style="height: 29px; width: 235px">
                <asp:TextBox ID="txtBirthdate" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="height: 29px">
                <asp:RegularExpressionValidator ID="valBday" runat="server" ControlToValidate="txtBirthdate" ErrorMessage="Please use the MM/DD/YYYY format" ValidationExpression="^(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td style="width: 235px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">
                <asp:Label ID="lblRole" runat="server" Text="Family Role"></asp:Label>
            </td>
            <td style="width: 235px">
                <asp:TextBox ID="txtRole" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valRole" runat="server" ControlToValidate="txtRole" ErrorMessage="A Family Role (i.e. Parent, Child, Aunt, Babysitter, etc.) is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td style="width: 235px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td style="width: 235px">
                <asp:Button ID="btnAddMember" runat="server" OnClick="btnAddMember_Click" Text="Add" Width="98px" style="height: 26px" />
            </td>
            <td>&nbsp;</td>
        </tr>
</table>
    <br />


</asp:Content>
