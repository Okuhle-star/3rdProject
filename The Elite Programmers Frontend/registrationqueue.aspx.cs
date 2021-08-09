using CrimeBusterSpace;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Elite_Programmers_Frontend
{
    public partial class registrationqueue : System.Web.UI.Page
    {
        Client client = new Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            registrationQueue();
        }

        public async void registrationQueue()
        {
            var queue = await client.ApiUsersGetAsync();

            string html = "<table class='table'><thead class='thead-dark'><tr><th scope = 'col'>#</th>" +
                   "<th scope='col'>First Name</th><th scope='col'> Last Name</th><th scope = 'col' > E - mail Address</th>" +
                   "<th scope = 'col'> Home Address</th><th scope = 'col'> Contact Number</th><th scope = 'col'> Action </th>" +
                   "</tr></thead><tbody>";

            int counter = 0;
            foreach (var x in queue)
            {
                if (x.Status == 0)
                {
                    counter++;
                    html += "<tr><th scope='row'>" + counter + "</th><td>" + x.Name + "</td><td>" + x.Surname + "</td><td>" + x.Email + "</td><td>" + x.Address + "</td><td>" + x.CellNumber + "</td><td><span><a href='queueManagement.aspx?userID="+x.UserId+ "&actionType=1&userName=" + x.Name + "&userSurname=" + x.Surname + "&email=" + x.Email + "' class=\"btn btn-warning\">Approve</a>";
                }
            }

            html += "</tbody></table>";

            displayTable.InnerHtml = html;
        }
    }
}