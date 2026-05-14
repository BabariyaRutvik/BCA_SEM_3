using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Hide result initially
            lblResult.Visible = false;
            lblResult.Text = "";
            // Check validation
            if (Page.IsValid)
            {
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text.Trim();
                // Show result only when valid
                lblResult.Visible = true;
                lblResult.Text = "<b>Registration Successful!</b><br/>" +
                                 "Name: " + name + "<br/>" +
                                 "Email: " + email + "<br/>" +
                                 "Password: " + password;
            }
            else
            {
                lblResult.Text = "";
            }
        }
    }
}