using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam2026
{
    public partial class EmailValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnValidate_Click(object sender, EventArgs e)
        {
            // Always clear previous result first
            lblResult.Text = "";

            if (Page.IsValid)
            {
                lblResult.Text = "The email address is valid.";
                lblResult.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                // Optional: you can hide or show invalid message
                lblResult.Text = "The email address is invalid.";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}