using System;
using CrimeBusterSpace;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace The_Elite_Programmers_Frontend
{
    public partial class queueManagement : System.Web.UI.Page
    {
        Client client = new Client();
        string strID = "";
        string strType = "";
        int userID = 0;
        int type = 0;
        int response = 0;
        string userEmail;
        string userName;

        protected void Page_Load(object sender, EventArgs e)
        {
            strID = Request.QueryString["userID"];
            strType = Request.QueryString["actionType"];
            userID = Convert.ToInt32(strID);
            type = Convert.ToInt32(strType);
            userName = Request.QueryString["userName"];
            string userSurname = Request.QueryString["userSurname"];
            userEmail = Request.QueryString["email"];
            approved.Visible = false;
            decline.Visible = false;

            string strConfirm;

            if (type == 1)
            {
                strConfirm = "<h3>You about to approve the registration of the following user :</h3><br/>" +
                "<p><b>User Name</b>      : " + userName + "</p>" +
                "<p><b>User Surname</b>   : " + userSurname + "</p>" +
                "<p><b>E-mail Address</b> : " + userEmail + "</p>";
            }
            else
            {
                strConfirm = "<h3>You about to remove the registration of the following user :</h3><br/>" +
                "<p><b>User Name</b>      : " + userName + "</p>" +
                "<p><b>User Surname</b>   : " + userSurname + "</p>" +
                "<p><b>E-mail Address</b> : " + userEmail + "</p>";
            }


            confirmUser.InnerHtml = strConfirm;

        }

        protected void Confirmed(object sender, EventArgs e)
        {
            manageQueue();
        }

        protected void NotConfirmed(object sender, EventArgs e)
        {
            Response.Redirect("registrationqueue.aspx");
        }

        protected void ConfirmationEmail(string recepientEmail, string recepientName)
        {
            try
            {

                MailMessage message = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                message.From = new MailAddress("cyberwatch88@gmail.com");
                message.To.Add(recepientEmail);
                message.Subject = "Crime-Buster Registration Confirmation.";

                string bodyMessage = "Dear " + recepientName + ",\n\nYour registration has been approved.\n You can now log into the system.\n\nIf you have not made this request please contact us.\n\nRegards,\nTeam";
                message.Body = bodyMessage;
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("cyberwatch88@gmail.com", "elitecyberwatch88");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(message);



            }
            catch (Exception ex)
            {
                //errors.InnerText = ex.StackTrace;
            }
        }

        private async void manageQueue()
        {
            switch (type)
            {
                case 1:
                    response = await client.ApiUsersConfirmuserAsync(userID);
                    break;
                case 2:
                    response = await client.ApiUsersDeactivateAsync(userID);
                    break;
            }

            if (type == 1)
            {
                if (response == 1)
                {
                    approved.Visible = true;
                    btnApprove.Visible = false;
                    ConfirmationEmail(userEmail, userName);
                }
            }
            else
            {
                if (response == 1)
                {
                    decline.Visible = true;
                    btnApprove.Visible = false;
                }
            }


        }

    }

}