using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_47_radio_button_choice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string selectedOption = string.Empty;
            if (rbKotlin.Checked)
            {
                selectedOption = rbKotlin.Text;
            }
            else if (rbJava.Checked)
            {
                selectedOption = rbJava.Text;
            }
            else if (rbPython.Checked)
            {
                selectedOption = rbPython.Text;
            }
            else if (rbJavaScript.Checked)
            {
                selectedOption = rbJavaScript.Text;
            }

            if (string.IsNullOrEmpty(selectedOption))
            {
                lblResult.Text = "Please select an option.";
            }
            else
            {
                lblResult.Text = "Selected Option: " + selectedOption;
            }
        }
    }
}