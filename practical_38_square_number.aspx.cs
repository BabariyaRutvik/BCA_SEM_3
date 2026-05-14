using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_38_square_number : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // convert the input to a number
             int number = Convert.ToInt32(txtNumber.Text);


            // now calucluating square
            int square = number * number;

            // display the result in the label
            lblResult.Text = "Square of " + number + " is: " + square.ToString();

        }
    }
}