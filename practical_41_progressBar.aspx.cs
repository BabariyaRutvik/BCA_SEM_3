using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_41_progressBar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["progress"] = 0;
            }
        }
        protected void btnIncrease_Click(object sender, EventArgs e)
        {
            int progress = Convert.ToInt32(Session["progress"]);

            // increasingg the progress
            progress += 10;

            // limit to 100
            if (progress > 100)
            {
                progress = 100;
            }
            // Store updated progress in session
            Session["progress"] = progress;

            // Update the progress bar and label
            progressBar.Style["width"] = progress + "%";
            progressBar.InnerHtml = progress + "%";


            // displaying the result in label
            lblProgress.Text = "Progress: " + progress + "%";
        }
    }
}