<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="The_Elite_Programmers_Frontend.registration" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .reg {
            background: #ebecf0;
        }

        .frmContent {
            background: #f8f8f8;
        }

        h2 {
            text-align: center;
        }

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
    <div class="container reg" data-aos="fade-up">
        <div class="row">
            <div class="col">
                <h2>Registration</h2>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col">
                <label>Register using:</label><br />
                <asp:DropDownList ID="identitySelection" Style="color: #000000;" AutoPostBack="true" runat="server">
                    <asp:ListItem Text="South African ID Number" Value="ID" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Passport Number" Value="passport" runat="server"></asp:ListItem>
                </asp:DropDownList>

            </div>
        </div>
        <div class="row">
            <br />
            <div id="errors" style="color: #ff0000;" runat="server"></div>
        </div>
        <br />
        <div class="row justify-content-end frmContent">
            <div class="col-lg-12 labels">
                <div id="registrationInput" runat="server">
                    <br />
                    <label for="txtIDNum">ID/Passport Number: </label>
                    <input type="text" name="" runat="server" id="txtID" required><br />
                    <br />
                    <label for="txtDoB">Date of Birth : </label>
                    <input type="date" name="" runat="server" id="txtDoB" required><br />
                    <br />
                    <label for="txtInitials">Initials : </label>
                    <input type="text" name="" runat="server" id="txtInitials" required><br />
                    <br />
                    <label for="txtFirstName">First Name : </label>
                    <input type="text" name="" runat="server" id="txtFirstName" required><br />
                    <br />
                    <label for="txtLastName">Last Name : </label>
                    <input type="text" name="" runat="server" id="txtLastName" required><br />
                    <br />
                    <label>Gender : </label>
                    <asp:DropDownList ID="Gender" Style="color: #000000;" AutoPostBack="true" runat="server">
                        <asp:ListItem Text="Male" Value="M" runat="server"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="F" runat="server"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="O" runat="server"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <label for="txtEmail">E-mail Address : </label>
                    <input type="email" name="" runat="server" id="txtEmail" required><br />
                    <br />
                    <label for="txtContNum">Cellphone Number : </label>
                    <input type="text" name="" runat="server" id="txtContNum" required><br />
                    <br />
                    <label for="txtHomeAdd">Home Address : </label>
                    <input type="text" name="" runat="server" id="txtHomeAdd" required><br />
                    <br />
                    <label for="txtPass">New Password : </label>
                    <input type="Password" name="" runat="server" id="txtPass" required><br />
                    <br />
                    <label for="txtConfPass">Confirm Password : </label>
                    <input type="Password" name="" runat="server" id="txtConfPass" required><br />
                    <br />
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col">
                <asp:Button ID="btnSubmit" class="btn btn-secondary btn-lg" Style="float: right;" runat="server" Text="Submit" OnClick="Button1_Click" />
            </div>
        </div>
    </div>



</asp:Content>
