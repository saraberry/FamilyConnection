<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Connection.Account.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1 class="plum">
        Register</h1>
    <p>
        &nbsp;</p>
    <h3 class="blue">
        Head of Household Information</h3>
    <table style="width:100%;">
        <tr>
            <td style="width: 146px">&nbsp;</td>
            <td style="width: 277px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 30px; width: 146px">First Name&nbsp;&nbsp;
                </td>
            <td style="height: 30px; width: 277px">
                <asp:TextBox ID="txtHOHFName" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td style="height: 30px">
                <asp:RequiredFieldValidator ID="valFName" runat="server" ControlToValidate="txtHOHFName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">&nbsp;</td>
            <td style="width: 277px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 146px">Last Name&nbsp;&nbsp;
                </td>
            <td style="width: 277px">
                <asp:TextBox ID="txtHOHLName" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valLName" runat="server" ControlToValidate="txtHOHLName" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">&nbsp;</td>
            <td style="width: 277px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 146px">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="width: 277px">
                <asp:TextBox ID="txtHOHEmail" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="valEmail" runat="server" ControlToValidate="txtHOHEmail" ErrorMessage="Invalid Email" ValidationExpression="^(?(&quot;)(&quot;.+?(?&lt;!\\)&quot;@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">&nbsp;</td>
            <td style="width: 277px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 146px">Password</td>
            <td style="width: 277px">
                <asp:TextBox ID="txtPwReg" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="valPass" runat="server" ControlToValidate="txtPwReg" ErrorMessage="Password must be a minimum of 8 characters long and contain an uppercase letter, a lowercase letter, and a number." ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">&nbsp;</td>
            <td style="width: 277px" id="txtRegPWConfirm">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 146px">Confirm Password</td>
            <td style="width: 277px" id="txtRegPWConfirm">
                <asp:TextBox ID="txtPWRegConfirm" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="valPWMatch" runat="server" ControlToCompare="txtPwReg" ControlToValidate="txtPWRegConfirm" ErrorMessage="Passwords do not match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">&nbsp;</td>
            <td style="width: 277px" id="txtRegPWConfirm">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
                <asp:CheckBox ID="cbxTrial" runat="server" Text="Sign me up for the 3 month FREE Trial!" Checked="True" />
            <br />
    <br />
    No payment is required to sign up. After 3 months, you will be prompted to enter billing information via PayPal.<br />
    <a href="https://www.paypal.com/webapps/mpp/paypal-popup" title="How PayPal Works" onclick="javascript:window.open('https://www.paypal.com/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg" border="0" alt="PayPal Acceptance Mark"></a><br />
    <br />
    <asp:Button ID="btnRegister" runat="server" Text="Submit" OnClick="btnRegister_Click" />
    <br />
</asp:Content>
