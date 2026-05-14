using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_22_redirect_url : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGo_Click(object sender, EventArgs e)
        {
            String url = txtUrl.Text;

            // adding http:// if not present
            if (!url.StartsWith("http://") && !url.StartsWith("https://"))
            {
                url = "http://" + url;
            }
            try
            {
                Response.Redirect(url);
            }
            catch
            {
                lblResult.Text = "Invalid URL!";
            }
        }

    }
}