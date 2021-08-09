using CrimeBusterSpace;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Elite_Programmers_Frontend
{
    public partial class membersManagement : System.Web.UI.Page
    {
        Client client = new Client();
        int userID;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strConfirm;
            userID = Convert.ToInt32(Request.QueryString["userID"]);
            int type = Convert.ToInt32(Request.QueryString["actionType"]);
            string userName = Request.QueryString["name"];
            string userSurname = Request.QueryString["surname"];
            string userEmail = Request.QueryString["email"];
            string userRole = Request.QueryString["role"];

            if (type == 1)
            {
                strConfirm = "<h3 class='customH3'>User Information :</h3><br/>" +
                "<p><b>User Name</b>      : " + userName + "</p>" +
                "<p><b>User Surname</b>   : " + userSurname + "</p>" +
                "<p><b>E-mail Address</b> : " + userEmail + "</p>" +
                "<p><b>Type of User</b>   : " + userRole.ToUpper() + "</p>";
                deleteUser.Visible = false;
                updateUser.Visible = true;

            }
            else
            {
                strConfirm = "<h3 class='customH3'>User Information :</h3><br/>" +
                "<p><b>User Name</b>      : " + userName + "</p>" +
                "<p><b>User Surname</b>   : " + userSurname + "</p>" +
                "<p><b>E-mail Address</b> : " + userEmail + "</p>" +
                "<p><b>Type of User</b>   : " + userRole.ToUpper() + "</p>";

                deleteUser.Visible = true;
                updateUser.Visible = false;

            }
            displayDetails.InnerHtml = strConfirm;
        }

        protected void UpdateType(object sender, EventArgs e)
        {
            HandleRequest(userID, 1);
        }

        protected void RemoveUser(object sender, EventArgs e)
        {
            HandleRequest(userID, 2);
        }

        protected void ReturnToUsers(object sender, EventArgs e)
        {
            Response.Redirect("members.aspx", false);
        }

        protected async void HandleRequest(int userID, int requestType)
        {

            switch (requestType)
            {
                case 1:
                    var status = await client.ApiUsersAssignroleAsync(userID, newType.SelectedValue);
                    if (status)
                    {
                        btnSubmitNewRole.Enabled = false;
                        UpdatedDetails(userID);
                    }

                    break;
                case 2:
                    var response = await client.ApiUsersDeactivateAsync(userID);
                    if (response == 1)
                    {
                        btnDeleteUser.Enabled = false;
                        displayDetails.InnerHtml = "<h3>User Removed!</h3>";
                    }
                    break;
            }
        }

        protected async void UpdatedDetails(int uID)
        {
            var user = await client.ApiUsersGetAsync(uID);
            string info = "<h3>User Information :</h3><br/>" +
                "<p><b>User Name</b>      : " + user.Name + "</p>" +
                "<p><b>User Surname</b>   : " + user.Surname + "</p>" +
                "<p><b>E-mail Address</b> : " + user.Email + "</p>" +
                "<p><b>Type of User</b>   : " + user.UserType.ToUpper() + "</p>";

            displayDetails.InnerHtml = info;

        }
    }
}