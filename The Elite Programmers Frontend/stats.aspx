<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" Async="true" AutoEventWireup="true" CodeBehind="stats.aspx.cs" Inherits="The_Elite_Programmers_Frontend.stats" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="background: #ebecf0;">
            <div class="col-lg-2">
                <h4>Filter By : </h4>
                <asp:DropDownList ID="statFilter" Style="color: #000000;" AutoPostBack="true" runat="server">
                    <asp:ListItem Text="Today" Value="today" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Week" Value="week" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Month" Value="month" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Year" Value="year" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Range" Value="range" runat="server"></asp:ListItem>
                    <asp:ListItem Text="All" Value="all" runat="server"></asp:ListItem>
                </asp:DropDownList>
                <div runat="server" id="filterDates">
                    <br />
                    <p>From : </p>
                    <asp:TextBox ID="startDate" type="date" runat="server"></asp:TextBox>
                    <br />
                    <p>To : </p>
                    <asp:TextBox ID="endDate" type="date" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Style="float: right;" Text="Submit" />
                </div>
            </div>
            <div class="col-lg-5" id="displayGraph">
                <asp:Chart ID="Chart" runat="server">
                    <Titles>
                        <asp:Title Text="Statistics of Crime Occurrence"></asp:Title>
                    </Titles>
                    <Series>
                        <asp:Series Name="Series1">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title="Crime Type"></AxisX>
                            <AxisY Title="Number of Incidents"></AxisY>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </div>
            <div class="col-lg-5">
                <div id="statsTable" runat="server">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
