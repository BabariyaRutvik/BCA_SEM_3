using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class _2nd_Practical_Odd_Even_Number : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCheck_Click(object sender, EventArgs e)
        {
            int number;
            if (int.TryParse(txtNumber.Text.Trim(), out number))
            {
                if (number % 2 == 0)
                {
                    lblResult.Text = "<b>" + number + " is an Even Number.</b>";
                }
                else
                {
                    lblResult.Text = "<b>" + number + " is an Odd Number.</b>";
                }
            }
            else
            {
                lblResult.Text = "<b>Please enter a valid integer.</b>";
            }
        }

    }
}