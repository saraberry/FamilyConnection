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
    <asp:Panel ID="pnlCalendar" runat="server" Height="910px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
        <br />
       <h1 class="yellow">Family Calendar</h1> <br />
        <br />
        &nbsp;
        <table class="nav-justified">
            <tr>
                <td style="width: 442px">
                    <asp:Calendar ID="calAgenda0" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td style="width: 477px">
                    <asp:Panel ID="pnlManageCal0" runat="server" Height="193px">
                        <br />
                        <asp:Button ID="btnAddEvent0" runat="server" OnClick="btnAddEvent_Click" Text="Add Event" />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnEditEvent0" runat="server" Text="Edit Events" />
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 442px">&nbsp;</td>
                <td style="width: 477px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 442px">&nbsp;</td>
                <td style="width: 477px">
                    <asp:SqlDataSource ID="ConnectionDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [activityName], [startDate], [endDate], [time] FROM [Activity] WHERE ([startDate] = @startDate)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="calAgenda" DbType="Date" Name="startDate" PropertyName="SelectedDate" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        &nbsp;<asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ConnectionDB" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="activityName" HeaderText="activityName" SortExpression="activityName" />
                <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
                <asp:BoundField DataField="endDate" HeaderText="endDate" SortExpression="endDate" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
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
    </asp:Panel>
<br />
<asp:Panel ID="pnlLinks" runat="server" Height="583px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
    <br />
    <h1 class="plum">Family Links</h1> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table style="width: 100%;">
        <tr>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 101px"><h2>Budget</h2></td>
            <td style="width: 248px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 248px"><h3><a href="Budget.aspx">Current Month</a></h3></td>
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
            <td style="width: 101px"><h2>Lists</h2></td>
            <td style="width: 248px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 52px">&nbsp;</td>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 248px"><h3><a href="ToDo.aspx">To Do List</a></h3></td>
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
            <td style="width: 248px"><h3><a href="Grocery.aspx">Grocery List</a></h3></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Panel>
<br />
    <br />


</asp:Content>
