<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Connection.Views.Calendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="yellow center">Add Event</h1>
    <br />
    <table style="width: 100%;">
        <tr>
            <td style="width: 187px">
                <asp:Label ID="lblTitle" runat="server" Text="Event Title"></asp:Label>
            </td>
            <td style="width: 276px">
                <asp:TextBox ID="txtTitle" runat="server" Width="255px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valTitle" runat="server" ControlToValidate="txtTitle" ErrorMessage="A Title is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">&nbsp;</td>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px">
                <asp:Label ID="lblStart" runat="server" Text="Start Date"></asp:Label>
            </td>
            <td style="width: 276px">
                <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valStart" runat="server" ControlToValidate="txtStartDate" ErrorMessage="A Start Date is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">&nbsp;</td>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px">
                <asp:Label ID="lblEnd" runat="server" Text="End Date"></asp:Label>
            </td>
            <td style="width: 276px">
                <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valEndDate" runat="server" ControlToValidate="txtEndDate" ErrorMessage="An End Date is Requred" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">&nbsp;</td>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px">
                <asp:Label ID="lblTime" runat="server" Text="Time"></asp:Label>
            </td>
            <td style="width: 276px">
                <asp:TextBox ID="txtTime" runat="server" TextMode="Time"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valTime" runat="server" ControlToValidate="txtTime" ErrorMessage="A Time is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">&nbsp;</td>
            <td style="width: 276px">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
&nbsp;
                <asp:Button ID="btnExit" runat="server" OnClick="btnExit_Click" Text="Exit" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px">&nbsp;</td>
            <td style="width: 276px">
                <asp:Button ID="btnAddEvent" runat="server" OnClick="btnAddEvent_Click" Text="Add Event" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />

</asp:Content>
