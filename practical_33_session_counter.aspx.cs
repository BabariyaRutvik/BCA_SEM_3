using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_33_session_counter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Count"]== null)
            {
                Session["Count"] = 0;
            }
            lblCount.Text = "Button Clicked Count: " + Session["Count"].ToString();
        }
        protected void btnClickMe_Click(object sender, EventArgs e)
        {
            int count = Convert.ToInt32(Session["Count"]);

            count++;

            Session["Count"] = count;

            lblCount.Text = "Button Click Count: " + count;


        }
    }
    
}