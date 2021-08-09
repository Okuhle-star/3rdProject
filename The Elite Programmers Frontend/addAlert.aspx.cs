using CrimeBusterSpace;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Elite_Programmers_Frontend
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        Client client = new Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnUpload.Visible = false;
        }

        protected void SubmitAlert(object sender, EventArgs e)
        {
            var uID = Session["userID"];

            int userID = Convert.ToInt32(uID);

            string crimeID = crimeType.SelectedValue;

            AddAlert(userID, DateTime.Now, lat.Text, lon.Text, txtMessage.Value, crimeID, "file");
        }

        async void AddAlert(int userID, DateTime reportTime, string locationLatitude, string locationLongitude, String alertMessage, string crimeID, string evidenceFile)
        {
            var status = await client.ApiAlertsReportalertAsync(userID, reportTime, locationLatitude, locationLongitude, alertMessage, crimeID, evidenceFile);
            if (status == 1)
            {
                txtMessage.InnerText = "Alert Submited!";
                txtMessage.Disabled = true;
                btnSubmit.Enabled = false;
            }
        }
    }
}