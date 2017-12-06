<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="Connection.Account.Manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Log Out" />
    
    <br />
    <asp:Panel ID="pnlFamilyInfo" runat="server" Height="188px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
       <div class ="pad">
        <h1 class="plum">Family Information</h1>
        <table class="nav-justified">
            <tr>
                <td style="width: 166px">Family ID</td>
                <td>
                    <asp:Label ID="lblFamID" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 166px">Family Name</td>
                <td>
                    <asp:Label ID="lblHOHLast" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 166px">
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
            <asp:TextBox ID="txtFamMem" runat="server" Height="195px" TextMode="MultiLine" Wrap="False" ReadOnly="True" Width="251px"></asp:TextBox>
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
    <asp:Panel ID="pnlCalendar" runat="server" Height="868px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
        <br />
       <h1 class="yellow">Family Calendar</h1> 
        <br />
        &nbsp;<table class="nav-justified">
            <tr>
                <td style="width: 283px">
                    <asp:Calendar ID="calAgenda" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="167px" NextPrevFormat="FullMonth" Width="273px" SelectedDate="<%# DateTime.Today %>" >
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />

                    </asp:Calendar>
                </td>
                <td style="width: 477px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 283px">&nbsp;</td>
                <td style="width: 477px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 283px; height: 134px;">
                    <asp:Panel ID="pnlManageCal1" runat="server" Height="132px" Width="229px">
                        <br />
                        <asp:Button ID="btnAddEvent1" runat="server" OnClick="btnAddEvent_Click" Text="Add Event" />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnDeleteActivity0" runat="server" OnClick="btnDeleteActivity_Click" Text="Delete Event" />
                    </asp:Panel>
                </td>
                <td style="width: 477px; height: 134px;">
                </td>
                <td style="height: 134px"></td>
            </tr>
        </table>
        &nbsp;<asp:GridView ID="grdCal" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="connection" Width="445px">
            <Columns>
                <asp:BoundField DataField="activityName" HeaderText="Activity" SortExpression="activityName" />
                <asp:BoundField DataField="startDate" HeaderText="Date" SortExpression="startDate" />
                <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="connection" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [activityName], [startDate], [time] FROM [Activity] WHERE (([familyID] = @familyID) AND ([startDate] = @startDate))">
            <SelectParameters>
                <asp:SessionParameter Name="familyID" SessionField="familyID" Type="Int32" />
                <asp:ControlParameter ControlID="calAgenda" DbType="Date" Name="startDate" PropertyName="SelectedDate" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
<br />
<asp:Panel ID="pnlLinks" runat="server" Height="337px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
    <br />
    <h1 class="green">Family Links</h1> &nbsp;
    <table style="width: 100%;">
        <tr>
            <td style="width: 28px">&nbsp;</td>
            <td style="width: 324px"><a href="ToDo.aspx"><h3 style="margin-right: 0px">To Do List</h3></a></td>
            <td style="width: 170px"></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 28px">&nbsp;</td>
            <td style="width: 324px">&nbsp;</td>
            <td style="width: 170px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 28px">&nbsp;</td>
            <td style="width: 324px"><a href="GroceryList.aspx"><h3>Grocery List</h3></a></td>
            <td style="width: 170px"></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Panel>
<br />
    <br />


</asp:Content>
