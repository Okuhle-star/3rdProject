using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrimeBusterSpace;

namespace The_Elite_Programmers_Frontend
{
    public partial class manageAlerts : System.Web.UI.Page
    {
        Client client = new Client();
        int PatrollerID;
        int AlertID;
        protected void Page_Load(object sender, EventArgs e)
        {
            PatrollerID = Convert.ToInt32(Session["userID"]);
            AlertID = Convert.ToInt32(Request.QueryString["alertID"]);

            string name = Request.QueryString["reporterName"];
            string surname = Request.QueryString["reporterSurname"];
            string email = Request.QueryString["reporterEmail"];
            string contact = Request.QueryString["reporterCont"];
            string message = Request.QueryString["message"];

            string reporterHTML = "<div><p><b>Name :</b></p>" + name + "<br/><p><b>Surname :</b></p>" +
                surname + "<br/><p><b>Email :</b></p>" + email + "<br/><p><b>Contact Number :</b></p>" +
                contact + "<br/></div>";

            reporterInfo.InnerHtml = reporterHTML;

            string messageHTML = "<div><p>" + message + "</p></div>";

            messageDetail.InnerHtml = messageHTML;
        }

        protected async void Assign(object sender, EventArgs e)
        {
            var status = await client.ApiPatrollerassignsPostAsync(AlertID, PatrollerID);
            if (status == 1)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You are assigned to the Alert!')", true);
                Response.Redirect("viewAlerts.aspx", false);
            }
        }

        protected async void Remove(object sender, EventArgs e)
        {
            var status = await client.ApiAlertsDeletealertAsync(AlertID);
            if (status == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Alert Removed!')", true);
                Response.Redirect("viewAlerts.aspx", false);
            }
        }

        
        protected async void Confirm(object sender, EventArgs e)
        {
            var status = await client.ApiAlertsConfirmalertAsync(AlertID);
            if (status == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Alert Confirmed!')", true);
                Response.Redirect("viewAlerts.aspx", false);
            }
        }
    }
}