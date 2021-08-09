using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrimeBusterSpace;

namespace The_Elite_Programmers_Frontend
{
    public partial class Main : System.Web.UI.MasterPage
    {
        Client client = new Client();
        private bool isPatroller = false;
        private bool isAdmin = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            PatrollerAccess.Visible = false;
            AdminAcess.Visible = false;

            loginButton.Visible = true;
            logoutButton.Visible = false;
            registerButton.Visible = true;

            if (Session["userID"] != null)
            {
                string userType = Session["userType"].ToString();
                CheckUserRole(userType);

                loginButton.Visible = false;
                logoutButton.Visible = true;
                registerButton.Visible = false;
                if (isAdmin)
                {
                    AdminAcess.Visible = true;
                }
                else if (isPatroller)
                {
                    PatrollerAccess.Visible = true;
                }
            }
        }

        private void CheckUserRole(string userType)
        {
            if (userType == "admin")
            {
                isAdmin = true;
            }
            else if (userType == "patroller")
            {
                isPatroller = true;
            }
        }
    }
}