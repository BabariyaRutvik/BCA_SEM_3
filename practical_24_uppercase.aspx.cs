using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_24_uppercase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConvert_Click(object sender, EventArgs e)
        {
            // Get the input text from the TextBox
            string inputText = txtInput.Text;
            // Convert the input text to uppercase
            string upperCaseText = inputText.ToUpper();
            // Display the uppercase text in the Label
            lblResult.Text = upperCaseText;
        }
    }
}