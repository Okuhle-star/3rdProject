<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="manageAlerts.aspx.cs" Inherits="The_Elite_Programmers_Frontend.manageAlerts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h4 {
            background: #bebebe;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="background: #ebecf0">
            <div class="col-lg-3">
                <h4>Reporter Details : </h4>
                <div runat="server" id="reporterInfo"></div>
            </div>
            <div class="col-lg-9" style="background: #fefefe;">
                <h4>Message Description : </h4>
                <div runat="server" id="messageDetail"></div>
            </div>
        </div>


        <div class="row " style="background: #ebecf0">
            <div class="col" style="text-align: center; background: #bebebe;">
                <asp:Button runat="server" class="btn btn-warning" ID="btnAssign" OnClick="Assign" Text="Assign" />
                <asp:Button runat="server" class="btn btn-warning" ID="btnRemove" OnClick="Remove" Text="Remove" />
                <asp:Button runat="server" class="btn btn-warning" ID="btnConfirm" OnClick="Confirm" Text="Confirm" /><br />
            </div>
            <br />
        </div>
    </div>
</asp:Content>
