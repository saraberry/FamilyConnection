<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="Connection.Account.Manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:Panel ID="pnlFamilyInfo" runat="server" Height="188px">
        
        <h1 class="plum">Family Information</h1>
        <table class="nav-justified">
            <tr>
                <td style="width: 292px">Family ID</td>
                <td>
                    <asp:Label ID="lblFamID" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 292px">Family Name</td>
                <td>
                    <asp:Label ID="lblHOHLast" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 292px">Subscription Renewal Date</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="pnlFamilyMem" runat="server" Height="328px">
        <h1 class="blue">Family Members</h1>
        &nbsp;<table style="width:100%;">
            <tr>
                <td style="width: 595px; height: 94px">
                    <asp:ListBox ID="ListBox1" runat="server" Height="210px" style="margin-top: 249" Width="586px"></asp:ListBox>
                </td>
                <td style="height: 94px; width: 244px">
                    <asp:Panel ID="pnlManageMembers" runat="server">
                        <asp:Button ID="btnAddMember0" runat="server" Text="Add Family Member" />
                        <br />
                        <br />
                        <asp:Button ID="btnDelMember0" runat="server" Text="Delete Family Member" Width="189px" />
                        <br />
                        <br />
                        <asp:Button ID="btnCreateLogin0" runat="server" Text="Create Login for Member" Width="189px" />
                        <br />
                    </asp:Panel>
                    <br />
                </td>
                <td style="height: 94px"></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />


</asp:Content>
