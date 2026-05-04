using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam2026
{
    public partial class Counter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialize counter only first time
            if (!IsPostBack)
            {
                ViewState["Counter"] = 0;
                lblCounter.Text = "Counter: 0";
            }
        }
        protected void btnCount_Click(object sender, EventArgs e)
        {
            int counter = (int)ViewState["Counter"];
            counter++;

            ViewState["Counter"] = counter;

            lblCounter.Text = "Counter: " + counter.ToString();
        }
    }
}