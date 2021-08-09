<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="assignRole.aspx.cs" Inherits="The_Elite_Programmers_Frontend.assignRole" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">
                <h2>Member Information</h2>
                <fieldset>
                    <label runat="server" id="name">Name : </label>
                    <br />
                    <label runat="server" id="surname">Surname : </label>
                    <br />
                    <label runat="server" id="email">E-mail : </label>
                    <br />
                    <label runat="server" id="role">Current Role : </label>
                    <br />
                    <label>New Role:</label>
                    <asp:DropDownList ID="roleList" Style="color: #000000;" AutoPostBack="true" runat="server">
                        <asp:ListItem Text="User" Value="user" runat="server"></asp:ListItem>
                        <asp:ListItem Text="Patroller" Value="patroller" runat="server"></asp:ListItem>
                        <asp:ListItem Text="Admin" Value="admin" runat="server"></asp:ListItem>
                    </asp:DropDownList>
                </fieldset>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Button ID="btnSubmit" runat="server"  Text="Submit" /><br />
            </div>
        </div>
        <div class="row">
            <div class="col" runat="server" id="error">
            </div>
        </div>
    </div>
</asp:Content>
