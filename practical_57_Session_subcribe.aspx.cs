using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_57_Session_subcribe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check subscription status
            if (Session["Subscribed"] != null)
            {
                lblMessage.Text = "You are already subscribed!";
            }
            else
            {
                lblMessage.Text = "You are not subscribed.";
            }

        }
        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            // Set subscription status in session
            Session["Subscribed"] = true;
            lblMessage.Text = "Thank you for subscribing!";
        }
    }
}