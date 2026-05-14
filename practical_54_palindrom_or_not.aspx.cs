using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_54_palindrom_or_not : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCheckPalindrome_Click(object sender, EventArgs e)
        {
            string inputText = txtPhrase.Text;
            string reversedText = new string(inputText.Reverse().ToArray());
            if (string.Equals(inputText, reversedText, StringComparison.OrdinalIgnoreCase))
            {
                lblResult.Text = "The input is a palindrome.";
            }
            else
            {
                lblResult.Text = "The input is not a palindrome.";
            }
        }
    }
}