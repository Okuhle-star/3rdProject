using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrimeBusterSpace;

namespace The_Elite_Programmers_Frontend
{
    public partial class members : System.Web.UI.Page
    {
        Client client = new Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            GetMembers();
        }

        protected async void GetMembers()
        {
            var members = await client.ApiUsersGetAsync();
            string tableHTML = "<table class='table'><thead class=\"thead-light\"><tr><th scope=\"col\">#</th><th scope=\"col\">First Name</th><th scope=\"col\">Last Name</th>" +
                "<th scope=\"col\">E-mail Address</th><th scope=\"col\">Home Address</th><th scope=\"col\">Contact Number</th>" +
                "<th scope=\"col\" > Action </ th ></tr></thead><tbody>";

            int counter = 0;
            foreach (var m in members)
            {
                if (m.Status == 1)
                {
                    counter++;
                    tableHTML += "<tr><th scope='row'>" + counter + "</th><td>" + m.Name + "</td><td>" + m.Surname + "</td><td>" + m.Email + "</td><td>" + m.Address + "</td><td>" + m.CellNumber + "</td><td><span><a href='membersManagement.aspx?userID=" + m.UserId + "&actionType=1&name=" + m.Name + "&surname=" + m.Surname + "&email=" + m.Email + "&role=" + m.UserType + "'class=\"btn btn-warning\">Assign Role</a><a href='membersManagement.aspx?userID=" + m.UserId + "&actionType=2&name=" + m.Name + "&surname=" + m.Surname + "&email=" + m.Email + "&role=" + m.UserType + "' style='margin-left:2px' class=\"btn btn-warning\">Remove User</a>";
                }


            }

            tableHTML += "</tbody></table>";

            displayTable.InnerHtml = tableHTML;
        }
    }
}