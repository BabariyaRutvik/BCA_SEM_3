using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_25_wordCount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCount_Click(object sender, EventArgs e)
        {
            // Get the input text from the TextBox
            string inputText = txtInput.Text;
            // Split the input text into words using space as a delimiter
            string[] words = inputText.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
            // Count the number of words
            int wordCount = words.Length;
            // Display the word count in the Label
            lblResult.Text = "Word Count: " + wordCount.ToString();
        }
    }
}