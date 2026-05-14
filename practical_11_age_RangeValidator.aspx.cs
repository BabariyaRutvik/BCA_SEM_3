using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class praactical_11_age_RangeValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnValidate_Click(object sender, EventArgs e)
        {
            // hiding first the result label
            lblResult.Style["display"] = "none";
            lblResult.Text = "";

            if (Page.IsValid)
            {
                lblResult.Text = "Valid Age Entered!";
                lblResult.Style["display"] = "block"; ;
            }
            
        }
    }
}