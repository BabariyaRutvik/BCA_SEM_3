using System;

namespace Exam
{
    public partial class practical_20_calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtOperand1.Text);
            double num2 = Convert.ToDouble(txtOperand2.Text);

            string operation = ddlOperation.SelectedValue;

            double result = 0;

            switch (operation)
            {
                case "+":
                    result = num1 + num2;
                    break;

                case "-":
                    result = num1 - num2;
                    break;

                case "*":
                    result = num1 * num2;
                    break;

                case "/":
                    if (num2 != 0)
                    {
                        result = num1 / num2;
                    }
                    else
                    {
                        lblResult.Text = "Cannot divide by zero.";
                        return;
                    }
                    break;
            }

            lblResult.Text = "Result = " + result;
        }
    }
}