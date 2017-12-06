<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Connection._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

 <h1 class ="plum center"><a href="Account/Login.aspx">Login</a> or <a href="Account/Register.aspx">Register</a> Today!</h1>
    <div class="row">
        <div class="col-md-4">
            <h2 class="blue center">Keep Connected</h2>
            <p>
                Make sure your family is on the same page. The family head has control over who sees what!
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="green center">Keep Organized</h2>
            <p>
                Shared Calendar, ToDo List, and Grocery list will keep you organized.</p>
        </div>
        <div class="col-md-4">
            <h2 class="yellow center">Keep On Up-to-Date</h2>
            <p>
                New features are being added soon!</p>
        </div>
    </div>
</asp:Content>
