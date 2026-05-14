using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_50_lowercase_convert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConvert_Click(object sender, EventArgs e)
        {
            string inputText = txtInput.Text;
            string lowerCaseText = inputText.ToLower();
            lblResult.Text = "Lowercase: " + lowerCaseText;
        }
    }
}