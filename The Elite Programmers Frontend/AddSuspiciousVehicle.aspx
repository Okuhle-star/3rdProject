<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddSuspiciousVehicle.aspx.cs" Inherits="The_Elite_Programmers_Frontend.AddSuspiciousVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">


        <div class="row justify-content-end displayCanvas" style="border: 1px solid black;">
            <div class="col-lg-12 labels">
                <br />

                <label for="txtName">Name of Car : </label>
                <input type="text" name="" runat="server" id="txtIDNum"><br />
                <br />
                <label for="txtModel">Model : </label>
                <input type="text" name="" runat="server" id="txtFirstName"><br />
                <br />
                <label for="txtLastName">Color: </label>
                <input type="text" name="" runat="server" id="Text1"><br />
                <br />
                <label>Message :</label><br />
                <br />
                <textarea id="txtMessage" runat="server" style="width: 100%;" rows="15"></textarea><br />
                <br />
            </div>
        </div>
        <br />
        <br />
        <div class="row displayCanvas">
            <div class="col">
                <label for="myfile">Upload Evidence</label><br>
                <input type="file" id="myfile" name="myfile" multiple><br>
                <br>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            </div>
        </div>
        <div class="row displayCanvas">
            <div class="col">
                <label runat="server" id="error"></label>
            </div>
        </div>
    </div>

</asp:Content>
