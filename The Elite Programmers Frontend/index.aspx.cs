using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrimeBusterSpace;

namespace The_Elite_Programmers_Frontend
{
    public partial class index : System.Web.UI.Page
    {
        Client client = new Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            userContent.Visible = false;
            StatCounter();
            if (Session["userID"] != null)
            {
                userContent.Visible = true;
            }

        }

        protected async void StatCounter()
        {
            string numUsers;
            string numAlerts;
            //string numEmergencies;
            //string numSectors;

            var users = await client.ApiUsersGetAsync();
            int nU = 0;
            foreach (var u in users)
            {
                if (u.Status == 1)
                {
                    nU++;
                }
            }
            numUsers = nU.ToString();
            nUsers.Attributes.Add("data-purecounter-end", numUsers);

            var alerts = await client.ApiAlertsGetAsync();
            int nA = 0;
            foreach (var a in alerts)
            {
                if (a.Alertstatus == 1)
                {
                    nA++;
                }
            }
            numAlerts = nA.ToString();
            nAlerts.Attributes.Add("data-purecounter-end", numAlerts);

        }
    }
}