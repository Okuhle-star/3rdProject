<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" Async="true" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs" Inherits="The_Elite_Programmers_Frontend.forgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .btn {
            width: 100%;
        }

        .contentHolder {
            background: #ebecf0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contentHolder">
        <br />
        <div class="container">
            <div class="row">
                <div class="col-lg-12 labels" runat="server" id="resetRequest">
                    <label>E-mail address : </label>
                    <input type="email" name="" runat="server" id="txtEmail" required><br />
                    <br />
                </div>
                <asp:Button ID="btnSubmitEmail" class="btn btn-warning" OnClick="ResetPassword" runat="server" Text="Submit" />
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-lg-12 labels" runat="server" id="verifyOTP">
                    <label>OTP : </label>
                    <input type="number" name="" runat="server" id="txtOTP" required><br />
                    <br />
                </div>
                <asp:Button ID="btnResetPass" OnClick="SubmitOTP" class="btn btn-warning" runat="server" Text="Submit" />
            </div>
            <br />
            <div class="row">
                <div class="col-lg-12 labels" runat="server" id="newPassword">
                    <label>New Password : </label>
                    <input type="Password" name="" runat="server" id="txtPass" required><br />
                    <br />
                    <label>Confirm Password : </label>
                    <input type="Password" name="" runat="server" id="txtConfPass" required><br />
                    <br />
                </div>
                <asp:Button ID="btnSubmitNewPassword" class="btn btn-warning" OnClick="SubmitNewPassword" runat="server" Text="Submit" />
            </div>
            <div class="row">
                <label id="errors" runat="server"></label>
            </div>
        </div>
        <br />
    </div>
</asp:Content>
