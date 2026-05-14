using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_31_simple_quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtAnswer.Text.Trim() == "4")
            {
                lblResult.Text = "Correct!";
                lblResult.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                lblResult.Text = "Incorrect! Try again.";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
           
        }

    }
}