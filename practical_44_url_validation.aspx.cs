using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_44_url_validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnValidate_Click(object sender, EventArgs e)
        {
            string url = txtUrl.Text;
            // Validate the URL format
            if (url.StartsWith("http://") || url.StartsWith("https://"))
            {
                lblResult.Text = "Valid URL";
                
            }
            else
            {
                lblResult.Text = "Invalid URL";
            }
        }
    }
}