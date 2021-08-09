using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrimeBusterSpace;

namespace The_Elite_Programmers_Frontend
{
    public partial class login : System.Web.UI.Page
    {
        Client client = new Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit(object sender, EventArgs e)
        {
            LoginUser(txtEmail.Value, txtPassword.Value);
        }

        private async void LoginUser(string email, string password)
        {
            var status = await client.ApiUsersLoginAsync(email, password);
            string role = "";
            if (status != 0)
            {
                var user = await client.ApiUsersGetAsync(status);
                if (user.UserType.ToLower().Equals("admin"))
                {
                    role = "admin";
                }
                else if (user.UserType.ToLower().Equals("patroller"))
                {
                    role = "patroller";
                }
                Response.Redirect("index.aspx", false);
                StartSession(status, role);
            }
            else
            {
                errors.InnerText = "Provided e-mail and password do not match";
            }
        }

        protected void StartSession(int userID, string role)
        {
            Session["userID"] = userID;
            Session["userType"] = role;
        }
    }
}