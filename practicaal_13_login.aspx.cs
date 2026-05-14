using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practicaal_13_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            if (username == "Rutvik" && password == "1234")
            {
               // storing the session
                Session["Username"] = username;

                // Storing the cookies
                Response.Cookies["Username"].Value = username;
                Response.Cookies["Username"].Expires = DateTime.Now.AddMinutes(10);

                // Redirecting
                Response.Redirect("practical_13_welcome.aspx");
            }
            else
            {
                lblResult.Text = "Invalid username or password.";
            }
        }

    }
}