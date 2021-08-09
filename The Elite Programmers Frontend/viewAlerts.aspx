<%@ Page Title="" Language="C#" async="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="viewAlerts.aspx.cs" Inherits="The_Elite_Programmers_Frontend.viewAlerts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" data-aos="fade-up" >
        <!--  <div class="row" style="background: white;">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
 
            <div class="collapse navbar-collapse" id="navbarColor03">
                  <ul class="navbar-nav me-auto">
       
                      <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Search by Field </a>
                          <div class="dropdown-menu">
                            <a class="dropdown-item"  Text="Name" Value="name" runat="server"  href="#">Name</a>
                            <a class="dropdown-item" Text="Crime Type" Value="CrimeType" runat="server"  href="#">Crime Type</a>
                            <a class="dropdown-item" Text="Location" Value="carjacking" runat="server" href="#">Location</a>            
               
                          </div>
                        </li>
                        <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">All Crime Type</a>
                          <div class="dropdown-menu">
                            <a class="dropdown-item" Text="Theft" Value="theft" runat="server">Theft</a>
                            <a class="dropdown-item" Text="Location" Value="carjacking" runat="server"  href="#">Carjacking</a>
                            <a class="dropdown-item" Text="Assault" Value="assault" runat="server" href="#">Assault</a>
                            <a class="dropdown-item" Text="House break in" Value="housebreakin" runat="server">House break in</a>
                            <a class="dropdown-item" Text="Vandalism" Value="vandalism" runat="server" href="#">Vandalism</a>
                            <a class="dropdown-item" Text="Rape" Value="rape" runat="server">Housebreaking</a>
                            <a class="dropdown-item" Text="Murder" Value="murder" runat="server"  href="#">Rape</a>
                            <a class="dropdown-item" Text="Other" Value="other" runat="server" href="#">Other</a>
           
                          </div>
                        </li>
             
                  </ul>

              <form class="d-flex">
                <input id="autocomplete" class="form-control me-sm-2" type="text" placeholder="Search">
                  <button type="button" class="btn btn-dark"><i class="bi bi-search"></i></button>
              </form>
            </div>
          </div>
        </nav> 
    </div> --->
        <div class="row" style="background:#ebecf0">
            <div class="col-lg-12">
                <div id="alertsTable" runat="server"></div>
            </div>
        </div>
    </div>
</asp:Content>
