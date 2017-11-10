<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Connection.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <p>
    <br />
</p>
<h2 class="plum">Welcome Back</h2>
        <p class="plum">&nbsp;</p>
<p>
    <table style="width:100%;">
        <tr>
            <td style="width: 136px; height: 22px">Login&nbsp;</td>
            <td style="height: 22px; width: 228px">
    <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="reqLogin" runat="server" ControlToValidate="txtLogin" Display="Dynamic" ErrorMessage="Login is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 136px">&nbsp;</td>
            <td style="width: 228px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 136px">Password </td>
            <td style="width: 228px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="reqPW" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 136px">&nbsp;</td>
            <td style="width: 228px">
                <asp:Label ID="lblError" runat="server" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
<p>
    <asp:Button ID="btnLogin" runat="server" Text="Submit" OnClick="btnLogin_Click" />
</p>
<p>
    &nbsp;</p>
<p>Not a member yet? <a href="Register.aspx">Register now</a>!</p>

</asp:Content>
