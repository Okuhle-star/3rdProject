<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" Async="true" CodeBehind="addAlert.aspx.cs" Inherits="The_Elite_Programmers_Frontend.forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .coord {
            opacity: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">
                <label>Type of Crime:</label>
                <asp:DropDownList ID="crimeType" Style="color: #000000;" AutoPostBack="true" runat="server">
                    <asp:ListItem Text="Housebreakin" Value="Housebreak in" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Hacking" Value="Hacking" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Theft" Value="Theft" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Assault" Value="Assault" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Vandalism" Value="Vandalism" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Smash and Grab" Value="Smash and Grab" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Murder" Value="Murder" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other" runat="server"></asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="lat" class="coord" runat="server"></asp:TextBox>
                <asp:TextBox ID="lon" class="coord" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label>Message :</label><br />
                <textarea id="txtMessage" runat="server" style="width: 100%;" rows="15"></textarea>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Button ID="btnUpload" class="btn btn-warning" runat="server" Text="Upload Evidence" />
                <asp:Button ID="btnSubmit" class="btn btn-warning" runat="server" OnClick="SubmitAlert" Text="Submit" />
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label runat="server" id="error"></label>
            </div>
        </div>
    </div>
    <script>
        var lon;
        var lat;
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            document.write("Geolocation is not supported by this browser.");
        }

        function showPosition(position) {
            lati = position.coords.latitude;
            lon = position.coords.longitude;

            document.getElementById("<%=lat.ClientID%>").value = lati;

            document.getElementById("<%=lon.ClientID%>").value = lon;
        }
    </script>
</asp:Content>
