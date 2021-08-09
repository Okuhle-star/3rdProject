using CrimeBusterSpace;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Elite_Programmers_Frontend
{
    public partial class registration : System.Web.UI.Page
    {
        Client client = new Client();
        bool idUsed;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtContNum.MaxLength = 10;
            if (identitySelection.SelectedValue.Equals("ID"))
            {
                txtID.MaxLength = 13;
                idUsed = true;
            }
            else
            {
                idUsed = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtPass.Value != txtConfPass.Value)
            {
                errors.InnerText = "Password fields do not match!";
            }
            else if (txtContNum.Value.Length != 10)
            {
                errors.InnerText = "Please provide a 10 digit South African Cellphone number starting with 0";
            }
            else
            {
                if (idUsed)
                {
                    if (txtID.Value.Length != 13)
                    {
                        errors.InnerText = "Please provide a 13 digit South African ID Number";
                    }
                    else
                    {
                        register();
                    }
                }
                else
                {
                    register();
                }
            }
        }
        async void register()
        {
            var DoB = txtDoB.Value;
            DateTime DateOfBirth = Convert.ToDateTime(DoB);
            if (idUsed)
            {
                string gender = Gender.SelectedValue;
                DateTimeOffset dob = Convert.ToDateTime(txtDoB.Value);

                var reg = await client.ApiUsersPostAsync(txtFirstName.Value, txtLastName.Value, txtEmail.Value, txtID.Value, gender, "South African ID Used", txtHomeAdd.Value, dob, txtContNum.Value, txtConfPass.Value);

                if (reg == 1)
                {
                    registrationInput.Visible = false;
                    btnSubmit.Visible = false;
                    identitySelection.Visible = false;
                    errors.InnerHtml = "<p style='color:#00ff00;'>Registration Successful!<span><br/></span>You will receive a notification once your payment has been processed.</p>";
                }
                else
                {
                    errors.InnerText = "Registration failed. Please contact us.";
                }
            }
            else
            {
                string gender = Gender.SelectedValue;
                DateTimeOffset dob = Convert.ToDateTime(txtDoB.Value);
                var reg = await client.ApiUsersPostAsync(txtFirstName.Value, txtLastName.Value, txtEmail.Value, "Passport Number used", gender, txtID.Value, txtHomeAdd.Value, dob, txtContNum.Value, txtConfPass.Value);

                if (reg == 1)
                {
                    registrationInput.Visible = false;
                    errors.InnerHtml = "<p style='color:#00ff00;'>Registration Successful!<span><br/></span>You will receive a notification once your payment has been processed.</p>";
                }
                else
                {
                    errors.InnerText = "Registration failed. Please contact us.";
                }
            }

            //returns an integer

        }
    }
}