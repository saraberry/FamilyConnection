<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteMember.aspx.cs" Inherits="Connection.Views.DeleteMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="yellow center">Delete members</h1>
    <asp:CheckBoxList ID="cbxlMembers" runat="server" DataSourceID="ConnectionDB" DataTextField="memberFirst" DataValueField="memberFirst" style="width: 98px">
    </asp:CheckBoxList>
    <asp:SqlDataSource ID="ConnectionDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FamilyMembers] WHERE ([familyID] = @familyID)">
        <SelectParameters>
            <asp:SessionParameter Name="familyID" SessionField="Users.FamilyID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Members" />
    <br />
    <br />
    <asp:Button ID="btnFinished" runat="server" OnClick="btnFinished_Click" Text="Finished" />
    <br />
</asp:Content>
