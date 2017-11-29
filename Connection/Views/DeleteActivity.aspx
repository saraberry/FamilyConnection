<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteActivity.aspx.cs" Inherits="Connection.Views.DeleteActivity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="blue center">Delete Activity</h1>
    <br />
    <table style="width:100%;">
        <tr>
            <td style="width: 179px">
                <asp:Label ID="lblStart" runat="server" Text="Start Date"></asp:Label>
            </td>
            <td style="width: 196px">
                <asp:Calendar ID="calStartDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="60px" NextPrevFormat="FullMonth" SelectedDate="11/29/2017 12:34:52" VisibleDate="2017-11-29" Width="18px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 179px; height: 22px"></td>
            <td style="height: 22px; width: 196px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 179px">
                <asp:Label ID="lblActivityName" runat="server" Text="Activity Name"></asp:Label>
            </td>
            <td style="width: 196px">
                <asp:DropDownList ID="ddlActivityName" runat="server" AutoPostBack="True" DataSourceID="ConnectionDB" DataTextField="activityName" DataValueField="activityName">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 179px">&nbsp;</td>
            <td style="width: 196px">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:SqlDataSource ID="ConnectionDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [activityName] FROM [Activity] WHERE ([familyID] = @familyID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="familyID" SessionField="familyID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 179px">&nbsp;</td>
            <td style="width: 196px">
                <asp:Button ID="btnDelActivity" runat="server" OnClick="btnDelActivity_Click" Text="Delete Activity" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 179px">&nbsp;</td>
            <td style="width: 196px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 179px">&nbsp;</td>
            <td style="width: 196px">
                <asp:Button ID="btnDone" runat="server" OnClick="btnDone_Click" Text="Done" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />

</asp:Content>
