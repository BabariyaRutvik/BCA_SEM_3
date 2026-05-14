using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class _3_Email_Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnValidate_Click(object sender, EventArgs e)
        {
            // Hide result initially
            lblResult.Visible = false;
            lblResult.Text = "";

            // Check validation
            if (Page.IsValid)
            {
                string email = txtEmail.Text.Trim();

                // Show result only when valid
                lblResult.Visible = true;
                lblResult.Text = "<b>Valid Email Address:</b> " + email;
            }
        }
    }
}