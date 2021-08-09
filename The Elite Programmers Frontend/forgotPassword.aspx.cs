using CrimeBusterSpace;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Elite_Programmers_Frontend
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        private static string recepientEmail;
        private static int intOTP;
        Client client = new Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            verifyOTP.Visible = false;
            newPassword.Visible = false;
            btnSubmitEmail.Visible = true;
            btnResetPass.Visible = false;
            btnSubmitNewPassword.Visible = false;
        }

        protected void ResetPassword(object sender, EventArgs e)
        {
            recepientEmail = txtEmail.Value;
            verifyEmail();
        }

        protected void SubmitOTP(object sender, EventArgs e)
        {
            int providedOTP = Convert.ToInt32(txtOTP.Value);
            bool otpVerified = false;
            if (providedOTP == intOTP)
            {
                otpVerified = true;
            }

            if (otpVerified)
            {
                errors.InnerHtml = "<p style='color:#FED000'>OTP verified</p>";
                verifyOTP.Visible = false;
                newPassword.Visible = true;
                btnSubmitEmail.Visible = false;
                btnResetPass.Visible = false;
                btnSubmitNewPassword.Visible = true;
            }
            else
            {
                errors.InnerHtml = "<p style='color:#FED000'>OTP verification failed!</p>";
            }
        }

        protected void SubmitNewPassword(object sender, EventArgs e)
        {
            SetNewPassword();
        }

        protected async void verifyEmail()
        {
            var test = await client.ApiResetpassesPasswordotpAsync(txtEmail.Value, DateTimeOffset.Now);
            if (test != 0)
            {

                try
                {
                    recepientEmail = txtEmail.Value;

                    MailMessage message = new MailMessage();
                    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                    message.From = new MailAddress("cyberwatch88@gmail.com");
                    message.To.Add(recepientEmail);
                    message.Subject = "Crime-Buster Reset Password.";
                    var OTP = await client.ApiResetpassesPasswordotpAsync(recepientEmail, DateTimeOffset.Now);
                    intOTP = Convert.ToInt32(OTP);
                    string strOTP = Convert.ToString(intOTP);
                    string bodyMessage = "Dear Crime-Buster member,\n\nThe OTP for resetting your is " + strOTP + ".\n\nIf you have not made this request please contact us immediately.\n\nRegards,\nTeam";
                    message.Body = bodyMessage;
                    SmtpServer.Port = 587;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("cyberwatch88@gmail.com", "elitecyberwatch88");
                    SmtpServer.EnableSsl = true;
                    SmtpServer.Send(message);

                    errors.Visible = true;
                    errors.InnerHtml = "<p style='color:#FED000'>Your password reset code has been sent to your email</p>";
                    resetRequest.Visible = false;
                    verifyOTP.Visible = true;
                    btnSubmitEmail.Visible = false;
                    btnResetPass.Visible = true;
                    btnSubmitNewPassword.Visible = false;

                }
                catch (Exception ex)
                {
                    errors.InnerText = ex.StackTrace;
                }
            }
            else
            {
                errors.InnerHtml = "<p style='color:#FED000'>Password reset failed. Provided details are incorrect!</p>";
            }
        }

        protected async void SetNewPassword()
        {
            if (txtPass.Value.Equals(txtConfPass.Value))
            {
                var stat = await client.ApiResetpassesResetpasswordAsync(recepientEmail, txtPass.Value, intOTP, DateTimeOffset.Now);
                int status = Convert.ToInt32(stat);
                if (status == 1)
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    errors.InnerHtml = "<p style='color:#FED000'>There was a mistake with updating your password.<br/>Contact us to resolve the issue!</p>";
                }
            }
            else
            {
                errors.InnerHtml = "<p style='color:#FED000'>Passwords do not match!</p>";
            }
        }


    }
}