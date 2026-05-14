using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_12_ViewStateCounter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // first time opage load
            if (!IsPostBack)
            {
                ViewState["Counter"] = 0;
                lblCounter.Text = "Counter Value: 0";
            }
            

        }
        protected void btnPostBack_Click(object sender, EventArgs e)
        {
            // incrementing the counter value on each postback
            int counter = (int)ViewState["Counter"];

            counter++;
            ViewState["Counter"] = counter;
            lblCounter.Text = "Counter Value: " + counter.ToString();
        }
    }
}