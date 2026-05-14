using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_28_website_redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnRedirect_Click(object sender, EventArgs e)
        {
            // Redirect the user to the specified website
            string websiteUrl = TxtWebsite.Text.Trim();
            if (!string.IsNullOrEmpty(websiteUrl))
            {
                if (!websiteUrl.StartsWith("http://") && !websiteUrl.StartsWith("https://"))
                {
                    websiteUrl = "https://" + websiteUrl;
                }
                Response.Redirect(websiteUrl);
            }
            else
            {
                LblResult.Text = "Please enter a valid website URL.";
            }
        }
    }
}