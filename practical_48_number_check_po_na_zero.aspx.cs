using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_48_number_check_po_na_zero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCheck_Click(object sender, EventArgs e)
        {
            int number = Convert.ToInt32(txtNumber.Text);
            if (number > 0)
            {
                lblResult.Text = "The number is positive.";
            }
            else if (number < 0)
            {
                lblResult.Text = "The number is negative.";
            }
            else
            {
                lblResult.Text = "The number is zero.";
            }
        }
    }
}