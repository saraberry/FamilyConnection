<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="Connection.Account.Manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:Panel ID="pnlFamilyInfo" runat="server" Height="188px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
       <div class ="pad">
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
                <td>
                    <asp:Label ID="lblSubcLabel" runat="server">Subscription End Date</asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblSubscEnd" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
       </div>
    </asp:Panel>
    <br />
    <asp:Panel ID="pnlFamilyMem" runat="server" Height="469px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
        <div class="pad">
        <h1 class="blue">Family Members</h1>
            <asp:TextBox ID="txtFamMem" runat="server" Height="195px" TextMode="MultiLine" Wrap="False" ReadOnly="True" Width="539px"></asp:TextBox>
            <br />
            <br />
        <asp:Panel ID="pnlManageMembers" runat="server">
                <asp:Button ID="btnAddMember0" runat="server" OnClick="btnAddMember0_Click" Text="Add Family Member" />
                <br />
                <br />
                <asp:Button ID="btnDelMember0" runat="server" OnClick="btnDelMember0_Click" Text="Delete Family Member" Width="189px" />
                <br />
                <br />
                <asp:Button ID="btnCreateLogin0" runat="server" OnClick="btnCreateLogin0_Click" Text="Create Login for Member" Width="189px" />
                <br />
            </asp:Panel>
        </div>
    </asp:Panel>
    <br />
    <asp:Panel ID="pnlBudget" runat="server" Height="846px">
        <br />
        Family Calendar<br />
        <br />
        &nbsp;
        <table style="width:100%;">
            <tr>
                <td style="width: 392px">&nbsp;</td>
                <td style="width: 373px">
                    <asp:Calendar ID="calAgenda" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:Panel ID="pnlManageCal" runat="server" Height="193px">
                        <br />
                        <asp:Button ID="btnAddEvent" runat="server" Text="Add Event" />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnEditEvent" runat="server" Text="Edit Events" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="width: 392px">&nbsp;</td>
                <td style="width: 373px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 392px">&nbsp;</td>
                <td style="width: 373px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        &nbsp;</asp:Panel>
    <br />
    <asp:Panel ID="pnlCalendar" runat="server" Height="433px">
        <br />
        Family Links<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width:100%;">
            <tr>
                <td style="width: 52px">&nbsp;</td>
                <td style="width: 101px">Budget</td>
                <td style="width: 248px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 52px">&nbsp;</td>
                <td style="width: 101px">&nbsp;</td>
                <td style="width: 248px">Current Month</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 52px">&nbsp;</td>
                <td style="width: 101px">&nbsp;</td>
                <td style="width: 248px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 52px">&nbsp;</td>
                <td style="width: 101px">Lists</td>
                <td style="width: 248px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 52px">&nbsp;</td>
                <td style="width: 101px">&nbsp;</td>
                <td style="width: 248px">To Do List</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 52px">&nbsp;</td>
                <td style="width: 101px">&nbsp;</td>
                <td style="width: 248px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 52px">&nbsp;</td>
                <td style="width: 101px">&nbsp;</td>
                <td style="width: 248px">Grocery List</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <br />
    <br />


</asp:Content>
