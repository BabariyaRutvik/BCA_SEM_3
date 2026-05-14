using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_36_trim_text : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnTrim_Click(object sender, EventArgs e)
        {
            // Get the input text from the TextBox
            string inputText = txtInput.Text;
            // Trim leading and trailing whitespace from the input text
            string trimmedText = inputText.Trim();
            // Display the trimmed text in the Label
            lblResult.Text = trimmedText;
        }
    }
}