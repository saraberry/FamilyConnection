﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="Connection.Account.Manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


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
    <asp:Panel ID="pnlCalendar" runat="server" Height="989px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
        <br />
       <h1 class="yellow">Family Calendar</h1> 
        <br />
        &nbsp;<table class="nav-justified">
            <tr>
                <td style="width: 283px">
                    <asp:Calendar ID="calAgenda" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="167px" NextPrevFormat="FullMonth" Width="273px" SelectedDate="<%# DateTime.Today %>">
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
        &nbsp;<asp:GridView ID="grdCal" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="connection" ForeColor="Black" GridLines="Horizontal" Width="452px" Height="433px">
            <Columns>
                <asp:BoundField DataField="activityName" HeaderText="activityName" SortExpression="activityName" />
                <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
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
        <asp:SqlDataSource ID="connection" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [activityName], [startDate], [time] FROM [Activity] WHERE (([familyID] = @familyID) AND ([startDate] = @startDate))">
            <SelectParameters>
                <asp:SessionParameter Name="familyID" SessionField="familyID" Type="Int32" />
                <asp:ControlParameter ControlID="calAgenda" DbType="Date" Name="startDate" PropertyName="SelectedDate" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
<br />
<asp:Panel ID="pnlLinks" runat="server" Height="478px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
    <br />
    <h1 class="green">Family Links</h1> <br /> &nbsp;
    <table style="width: 100%;">
        <tr>
            <td style="width: 28px">&nbsp;</td>
            <td style="width: 101px"><h3>Budget</h3></td>
            <td style="width: 170px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 28px">&nbsp;</td>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 170px"><h5><a href="Budget.aspx">Current Month</a></h5></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 28px"></td>
            <td style="width: 101px"></td>
            <td style="width: 170px"></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 28px">&nbsp;</td>
            <td style="width: 101px"><h3>Lists</h3></td>
            <td style="width: 170px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 28px">&nbsp;</td>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 170px"><h5><a href="ToDo.aspx">To Do List</a></h5></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 28px">&nbsp;</td>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 170px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 28px">&nbsp;</td>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 170px"><h5><a href="GroceryList.aspx">Grocery List</a></h5></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Panel>
<br />
    <br />


</asp:Content>
