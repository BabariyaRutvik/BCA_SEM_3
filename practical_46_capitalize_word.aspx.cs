using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_46_capitalize_word : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCapitalize_Click(object sender, EventArgs e)
        {
            String sentence = txtSentence.Text.ToLower();

            TextInfo textInfo = CultureInfo.CurrentCulture.TextInfo;

            String capitalizedSentence = textInfo.ToTitleCase(sentence);

            lblResult.Text = capitalizedSentence;
        }
    }
}