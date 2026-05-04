using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam2026
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Check if all validations are passed
            if (Page.IsValid)
            {
                string name = txtName.Text;
                string age = txtAge.Text;
                string email = txtEmail.Text;

                // Display success message
                lblResult.Text = "Registration Successful!<br/>" +
                                 "Name: " + name + "<br/>" +
                                 "Age: " + age + "<br/>" +
                                 "Email: " + email;

                lblResult.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                // Optional (validation controls already show errors)
                lblResult.Text = "Please correct the errors above.";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}