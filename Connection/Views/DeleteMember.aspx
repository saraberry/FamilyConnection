<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteMember.aspx.cs" Inherits="Connection.Views.DeleteMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="yellow center">Delete members</h1>
    <br />
    <br />
    <p>

        <table style="width:100%;">
            <tr>
                <td style="width: 96px">First Name</td>
                <td>
                    <asp:DropDownList ID="ddlFName" runat="server" AutoPostBack="True" DataSourceID="ConnectionDB" DataTextField="memberFirst" DataValueField="memberFirst" Width="92px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ConnectionDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FamilyMembers] WHERE ([familyID] = @familyID)">
                        <SelectParameters>
                            <asp:SessionParameter Name="familyID" SessionField="familyID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">Birthdate</td>
                <td>
                    <asp:DropDownList ID="ddlBDay" runat="server" AutoPostBack="True" DataSourceID="ConnectionDB" DataTextField="memberBirthdate" DataValueField="memberBirthdate">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td>
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td>
    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Member" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td>
    <asp:Button ID="btnFinished" runat="server" OnClick="btnFinished_Click" Text="Finished" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </p>
    <br />
    <br />
    <br />
</asp:Content>
