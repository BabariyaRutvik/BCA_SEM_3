using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_34_session_greeting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // display greeting every page load
            if (Session["Username"] != null)
            {
                lblGreeting.Text = "Welcome, " + Session["Username"].ToString() + "!";
            }


        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Store the username in session
            Session["Username"] = txtName.Text;


            // Display the greeting message
            lblGreeting.Text = "Welcome, " + Session["Username"].ToString() + "!";
        }
    }
}