using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam2026
{
    public partial class ComparePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCheck_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblResult.Text = "Passwords match ";
                lblResult.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblResult.Text = "Passwords do not match";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}