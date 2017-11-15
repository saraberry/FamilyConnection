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
                <td>
                    <asp:Label ID="lblSubcLabel" runat="server">Subscription End Date</asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblSubscEnd" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="pnlFamilyMem" runat="server" Height="328px">
        <h1 class="blue">Family Members</h1>
        <p class="blue">
            <asp:SqlDataSource ID="ConncectionDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [memberID], [memberFirst], [memberLast], [memberRole], [memberBirthdate] FROM [FamilyMembers] WHERE ([familyID] = @familyID)">
                <SelectParameters>
                    <asp:SessionParameter Name="familyID" SessionField="Users.FamilyID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="ConncectionDB" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FFFFFF;color: #284775;">memberID:
                        <asp:DynamicControl runat="server" DataField="memberID" Mode="ReadOnly" />
                        <br />
                        memberFirst:
                        <asp:DynamicControl runat="server" DataField="memberFirst" Mode="ReadOnly" />
                        <br />
                        memberLast:
                        <asp:DynamicControl runat="server" DataField="memberLast" Mode="ReadOnly" />
                        <br />
                        memberRole:
                        <asp:DynamicControl runat="server" DataField="memberRole" Mode="ReadOnly" />
                        <br />
                        memberBirthdate:
                        <asp:DynamicControl runat="server" DataField="memberBirthdate" Mode="ReadOnly" />
                        <br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color: #999999;">memberID:
                        <asp:DynamicControl runat="server" DataField="memberID" Mode="ReadOnly" />
                        <br />
                        memberFirst:
                        <asp:DynamicControl runat="server" DataField="memberFirst" Mode="Edit" />
                        <br />
                        memberLast:
                        <asp:DynamicControl runat="server" DataField="memberLast" Mode="Edit" />
                        <br />
                        memberRole:
                        <asp:DynamicControl runat="server" DataField="memberRole" Mode="Edit" />
                        <br />
                        memberBirthdate:
                        <asp:DynamicControl runat="server" DataField="memberBirthdate" Mode="Edit" />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">memberFirst:
                        <asp:DynamicControl runat="server" DataField="memberFirst" Mode="Insert" ValidationGroup="Insert" />
                        <br />
                        memberLast:
                        <asp:DynamicControl runat="server" DataField="memberLast" Mode="Insert" ValidationGroup="Insert" />
                        <br />
                        memberRole:
                        <asp:DynamicControl runat="server" DataField="memberRole" Mode="Insert" ValidationGroup="Insert" />
                        <br />
                        memberBirthdate:
                        <asp:DynamicControl runat="server" DataField="memberBirthdate" Mode="Insert" ValidationGroup="Insert" />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #E0FFFF;color: #333333;">memberID:
                        <asp:DynamicControl runat="server" DataField="memberID" Mode="ReadOnly" />
                        <br />
                        memberFirst:
                        <asp:DynamicControl runat="server" DataField="memberFirst" Mode="ReadOnly" />
                        <br />
                        memberLast:
                        <asp:DynamicControl runat="server" DataField="memberLast" Mode="ReadOnly" />
                        <br />
                        memberRole:
                        <asp:DynamicControl runat="server" DataField="memberRole" Mode="ReadOnly" />
                        <br />
                        memberBirthdate:
                        <asp:DynamicControl runat="server" DataField="memberBirthdate" Mode="ReadOnly" />
                        <br />
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">memberID:
                        <asp:DynamicControl runat="server" DataField="memberID" Mode="ReadOnly" />
                        <br />
                        memberFirst:
                        <asp:DynamicControl runat="server" DataField="memberFirst" Mode="ReadOnly" />
                        <br />
                        memberLast:
                        <asp:DynamicControl runat="server" DataField="memberLast" Mode="ReadOnly" />
                        <br />
                        memberRole:
                        <asp:DynamicControl runat="server" DataField="memberRole" Mode="ReadOnly" />
                        <br />
                        memberBirthdate:
                        <asp:DynamicControl runat="server" DataField="memberBirthdate" Mode="ReadOnly" />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
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
            <p>
            </p
        </p>
            <p>
            </p>
    </asp:Panel>
    <br />
    <br />


</asp:Content>
