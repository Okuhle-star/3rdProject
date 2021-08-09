<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UserEmergencies.aspx.cs" Inherits="The_Elite_Programmers_Frontend.UserEmergencies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .coordinate a {
            color: blue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First Name(s)</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Type of Emergency</th>
                        <th scope="col">Location</th>
                        <th scope="col">Contact Number</th>
                        <th scope="col">Action</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Tankiso</td>
                        <td>Mokoena</td>
                        <td>Arson</td>
                        <td class="coordinate"><a href="https://www.google.com/maps/search/?api=1&query=-26.2309,28.0583">-26.2309,28.0583</a></td>
                        <td>063 158 6570</td>
                        <td><span><a href="#" class="btn btn-warning">Assign</a></span></td>
                        <td>Attended</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Gracious</td>
                        <td>Mulaudzi</td>
                        <td>House Robbery</td>
                        <td>-26.2309,28.0583</td>
                        <td>063 158 6570</td>
                        <td><span><a href="#" class="btn btn-warning">Unassign</a></span></td>
                        <td>Attended</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Okuhle</td>
                        <td>Mtotywa</td>
                        <td>Carjacking</td>
                        <td>-26.2309,28.0583</td>
                        <td>063 158 6570</td>
                        <td><span><a href="#" class="btn btn-warning">Assign</a></span></td>
                        <td>Not Attended</td>
                    </tr>
                    <tr>
                        <th scope="row">4</th>
                        <td>Vusimuzi</td>
                        <td>Masilela</td>
                        <td>Hostage</td>
                        <td>-26.2309,28.0583</td>
                        <td>063 158 6570</td>
                        <td><span><a href="#" class="btn btn-warning">Assign</a></span></td>
                        <td>Attended</td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
