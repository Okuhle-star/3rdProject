<%@ Page Title="" Language="C#" Async="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="queueManagement.aspx.cs" Inherits="The_Elite_Programmers_Frontend.queueManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row displayCanvas">
            <div class="col" runat="server" id="confirmUser">
            </div>
        </div>
        <div class="row holder">
            <div class="col">
                <div runat="server" id="approved">
                    <h4 style="color: #00ff00;">Registration Approved</h4>
                </div>
                <div runat="server" id="decline">
                    <h4 style="color: #00ff00;">Registration Removed</h4>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:Button ID="btnApprove" class="btn btn-warning" runat="server" Text="Approve" OnClick="Confirmed" />
            <asp:Button ID="btnDecline" class="btn btn-warning" runat="server" Text="Go back to queue" OnClick="NotConfirmed" />
        </div>
    </div>
</asp:Content>
