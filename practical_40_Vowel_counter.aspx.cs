using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_40_Vowel_counter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCount_Click(object sender, EventArgs e)
        {
            string input = txtInput.Text.ToLower(); // Convert to lowercase for easier comparison
            int vowelCount = 0;
            // Loop through each character in the input string
            foreach (char c in input)
            {
                if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
                {
                    vowelCount++;
                }
            }
            // Display the result
            lblResult.Text = "Total Vowels: " + vowelCount;
        }
    }
}