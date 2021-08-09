using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrimeBusterSpace;

namespace The_Elite_Programmers_Frontend
{
    public partial class viewAlerts : System.Web.UI.Page
    {
        Client client = new Client();
        protected async void Page_Load(object sender, EventArgs e)
        {
            string htmlString = "";
            var alerts = await client.ApiAlertsGetAsync();

            htmlString += "<table class=\"table\"><thead class=\"thead-light\"><tr><th scope=\"col\">Date/Time</th><th scope=\"col\">Crime Type</th>" +
                 "<th scope=\"col\">Name</th><th scope=\"col\">Location</th><th scope=\"col\">Message</th><th scope=\"col\">Action</th></tr></thead><tbody>";


            foreach (var alert in alerts)
            {
                int uID = alert.UserId;
                var reporter = await client.ApiUsersGetAsync(uID);
                htmlString += "<tr>" +
                            "<td>" + alert.AlertTime + "</td>" +
                            "<td>" + alert.CrimeTypeId + "</td>" +
                            "<td>" + reporter.Name + " " + reporter.Surname + "</td>" +
                            "<td>" + "Campus Square" + "</td>" +
                            "<td><span>" +
                               "<asp:TextBox ID=\"TextBox1\" editable=\"false\" Text=\"Message...\" runat=\"server\" Enabled=\"False\"></asp:TextBox></span></td>" +
                            "<td><a href=\"manageAlerts.aspx?alertID=" + alert.AlertId + "&reporterName=" + reporter.Name + "&reporterSurname=" + reporter.Surname + "&reporterEmail=" + reporter.Email + "&reporterCont=" + reporter.CellNumber + "&message=" + alert.Message + "\"  class=\"bi bi-eye\"></a></td>" +
                        "</tr>";
                //btn btn-success
            }

            htmlString += "</tbody></table>";
            alertsTable.InnerHtml = htmlString;
        }


    }
}/*
          <div class="row" style="background: white;">
            <div class="col-lg-3" ">
                <asp:DropDownList ID="DropDownList1" Style="color: #000000; " AutoPostBack="true" runat="server">
                    <asp:ListItem Text="Housebreaking" Value="housebreaking" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Carjacking" Value="carjacking" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Theft" Value="theft" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Assault" Value="assault" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Vandalism" Value="vandalism" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Rape" Value="rape" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Murder" Value="murder" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="other" runat="server"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-lg-5" style="margin:0;">
                <input type="text" placeholder="search" style="width: 100%; margin: 0;" />
            </div>
            <div class="col-lg-3" style="margin:0;">
                <asp:DropDownList ID="crimeType" Style="color: #000000; width: 100%; margin: 0;" AutoPostBack="true" runat="server">
                    <asp:ListItem Text="Crime Type" Value="housebreaking" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Location" Value="carjacking" runat="server"></asp:ListItem>
                    <asp:ListItem Text="Name" Value="theft" runat="server"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-lg-1" style="margin:0;">
                <button style="width: 100%; margin: 0;">Q</button>
            </div>
        </div>
  
  */