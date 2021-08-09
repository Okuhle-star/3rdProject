<%@ Page Title="" Language="C#" async="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Hotspot.aspx.cs" Inherits="The_Elite_Programmers_Frontend.Hotspot" %>
 <%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
          <button type="button" class="btn btn-success">Change Map Type</button>
          <div class="btn-group" role="group">
            <button id="btnGroupDrop2" type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop2" style="">
              <asp:Button class="dropdown-item" OnClick="Default_Click" runat="server" Text="Default"/>
              <asp:Button class="dropdown-item" OnClick="Hybrid_Click" Value="Hybrid" runat="server" Text="Hybrid"/>   
             <asp:Button class="dropdown-item" OnClick="Physical_Click" Value="Physical" runat="server" Text="Physical"/>
               <asp:Button class="dropdown-item" OnClick="Satellite_Click"  Text="Satellite" runat="server" />
            </div>
          </div>
        </div>
        <div class="row" >
           <cc1:GMap ID="GMap1" runat="server" Width="1270px" Height="700px"/>
       </div>
    </div>
</asp:Content>
