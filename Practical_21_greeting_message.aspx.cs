using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class Practical_21_greeting_message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int hour = DateTime.Now.Hour;

            if(hour < 12)
            {
                lblGreeting.Text = "Good Morning!";
            }
            else if(hour < 17)
            {
                lblGreeting.Text = "Good Afternoon!";
            }
            else
            {
                lblGreeting.Text = "Good Evening!";
            }
        }
    }
}