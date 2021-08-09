<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="The_Elite_Programmers_Frontend.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        input {
            padding: 5px;
            box-sizing: border-box;
            border: 3px solid #ccc;
            transition: 0.5s;
            outline: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" data-aos="fade-up" style="background: #c1c1c1;">
        <div class="row">
            <div class="col" style="text-align: center;">
                <h2>Login</h2>
            </div>
        </div>
        <div class="row justify-content-end labels" style="background: #ebecf0;">
            <div class="col-lg-12 labels">
                <br />
                <label for="txtEmail">E-mail Address : </label>
                <input type="email" name="" runat="server" id="txtEmail" required><br />
                <br />
                <label for="txtPass">Password : </label>
                <input type="Password" name="" runat="server" id="txtPassword" required>
                <br />
                <br />
            </div>
        </div>
        <div class="row" style="background: #ebecf0;">
            <div class="col">

                
                <asp:Button ID="Button2" class="btn btn-warning" Style="float: right; margin-right: 0;" runat="server" OnClick="Submit" Text="Submit" />
                <a href="forgotPassword.aspx" class="btn btn-warning" style="float: right; margin-right: 0.5em;" role="button" aria-pressed="true">Forgot Password</a>
            </div>
        </div>
        <div class="row" style="background: #ebecf0;">
            <div class="col">
                <label id="errors" style="color: #ff0000;" runat="server"></label>
            </div>
        </div>
    </div>


</asp:Content>
