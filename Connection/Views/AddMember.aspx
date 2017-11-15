<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="Connection.Views.AddMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="plum center">Add a Family Member</h1>
    <table style="width:100%;">
        <tr>
            <td style="width: 156px">
                <asp:Label ID="lblFname" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMemFName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">
                <asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMemLName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px; height: 29px">
                <asp:Label ID="lblBirthday" runat="server" Text="Birthdate"></asp:Label>
            </td>
            <td style="height: 29px">
                <asp:TextBox ID="txtBirthdate" runat="server"></asp:TextBox>
            </td>
            <td style="height: 29px"></td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">
                <asp:Label ID="lblRole" runat="server" Text="Family Role"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td>
                <asp:Button ID="btnAddMember" runat="server" OnClick="btnAddMember_Click" Text="Add" Width="98px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />


</asp:Content>
