using System;

namespace Exam
{
    public partial class practical_13_welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Session Check
            if (Session["Username"] != null)
            {
                lblSession.Text = "Session Username: " + Session["Username"].ToString();
            }
            else
            {
                lblSession.Text = "No Session Found!";
            }

            // Cookie Check
            if (Request.Cookies["Username"] != null)
            {
                lblCookie.Text = "Cookie Username: " + Request.Cookies["Username"].Value;
            }
            else
            {
                lblCookie.Text = "No Cookie Found!";
            }
        }
    }
}