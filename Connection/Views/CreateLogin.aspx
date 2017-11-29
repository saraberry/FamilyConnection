<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateLogin.aspx.cs" Inherits="Connection.Views.CreateLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class ="blue center">Create Family User</h1>
    <table style="width: 100%;">
        <tr>
            <td style="width: 137px">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </td>
            <td style="width: 157px">
                <asp:TextBox ID="txtFName" runat="server" Width="125px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" ErrorMessage="First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 137px; height: 22px;"></td>
            <td style="width: 157px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 137px">
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td style="width: 157px">
                <asp:TextBox ID="txtLName" runat="server" Width="125px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Last Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 137px">&nbsp;</td>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px; height: 24px;">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="width: 157px; height: 24px;">
                <asp:TextBox ID="txtEmail" runat="server" Width="125px"></asp:TextBox>
            </td>
            <td style="height: 24px">
                <asp:RegularExpressionValidator ID="valEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="^(?(&quot;)(&quot;.+?(?&lt;!\\)&quot;@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="valEmailReq" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 137px">&nbsp;</td>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px; margin-left: 40px">
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 157px">
                <asp:TextBox ID="txtPW" runat="server" TextMode="Password" Width="125px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="valPW" runat="server" ControlToValidate="txtPW" ErrorMessage="Password must be a minimum of 8 characters long and contain an uppercase letter, a lowercase letter, and a number" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="valPWReq" runat="server" ControlToValidate="txtPW" Display="Dynamic" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 137px; margin-left: 40px">&nbsp;</td>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px; margin-left: 40px">Confirm Password</td>
            <td style="width: 157px">
                <asp:TextBox ID="txtPWMatch" runat="server" TextMode="Password" Width="125px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="valPWMatch" runat="server" ControlToCompare="txtPW" ControlToValidate="txtPWMatch" ErrorMessage="Passwords Do Not Match" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="valPWConfirmReq" runat="server" ControlToValidate="txtPWMatch" ErrorMessage="Password Confirmation is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 137px; margin-left: 40px">&nbsp;</td>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px; margin-left: 40px">
                <asp:Label ID="Label5" runat="server" Text="Permissions"></asp:Label>
            </td>
            <td style="width: 157px">
                <asp:DropDownList ID="ddlPermissions" runat="server">
                    <asp:ListItem Value="edit">Edit Family Items</asp:ListItem>
                    <asp:ListItem Value="view">View Calendar Only</asp:ListItem>
                    <asp:ListItem Value="admin">Administrator</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px; height: 22px; margin-left: 40px"></td>
            <td style="width: 157px; height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 137px; margin-left: 40px">&nbsp;</td>
            <td style="width: 157px">
                <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create User" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px; margin-left: 40px">&nbsp;</td>
            <td style="width: 157px">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 137px; margin-left: 40px">&nbsp;</td>
            <td style="width: 157px">
                <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Return to Home" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
