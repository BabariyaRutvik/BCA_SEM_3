using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_56_factorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            int number;
            if (int.TryParse(txtNumber.Text, out number) && number >= 0)
            {
                long factorial = CalculateFactorial(number);
                lblResult.Text = "Factorial of " + number + " is: " + factorial;
            }
            else
            {
                lblResult.Text = "Please enter a valid non-negative integer.";
            }
        }

        private long CalculateFactorial(int number)
        {
            if (number == 0 || number == 1)
                return 1;

            long result = 1;
            for (int i = 2; i <= number; i++)
            {
                result *= i;
            }
            return result;
        }
    }
}