<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" Async="true" AutoEventWireup="true" CodeBehind="membersManagement.aspx.cs" Inherits="The_Elite_Programmers_Frontend.membersManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row displayCanvas">
            <div runat="server" id="displayDetails">
            </div>
            <div runat="server" id="updateUser">
                <p><b>New User Type : </b></p>
                <asp:DropDownList ID="newType" Style="color: #000000;" AutoPostBack="true" runat="server">
                    <asp:ListItem Text="User" Value="user" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Patroller" Value="patroller" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Admin" Value="admin" runat="server"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="btnSubmitNewRole" class="btn btn-success" runat="server" OnClick="UpdateType" Text="Submit" />
                <asp:Button ID="Button2" class="btn btn-warning" runat="server" OnClick="ReturnToUsers" Text="Return to users" />
            </div>
            <div runat="server" id="deleteUser">
                <asp:Button ID="btnDeleteUser" runat="server" OnClick="RemoveUser" Text="Submit" />
                <asp:Button ID="Button4" class="btn btn-warning" runat="server" OnClick="ReturnToUsers" Text="Return to users" />
            </div>
        </div>
    </div>
</asp:Content>
