using System;

namespace Exam
{
    public partial class practical_9_compareValidator : System.Web.UI.Page
    {
        protected void btnCheck_Click(object sender, EventArgs e)
        {
            // Always reset first
            lblResult.Text = "";

            if (Page.IsValid)
            {
                lblResult.Text = "Validation Successful! The values match.";
                lblResult.Visible = true;
            }
            else
            {

                lblResult.Text = "";
            }
        }
    }
}