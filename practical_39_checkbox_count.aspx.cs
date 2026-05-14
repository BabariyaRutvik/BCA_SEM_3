using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_39_checkbox_count : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCount_Click(object sender, EventArgs e)
        {
            int count = 0;

            // Check each checkbox
            if (chkOption1.Checked)
                count++;

            if (chkOption2.Checked)
                count++;

            if (chkOption3.Checked)
                count++;

            if (chkOption4.Checked)
                count++;

            // Display result
            lblResult.Text = "Total Checked Options: " + count;
        }
    }
}