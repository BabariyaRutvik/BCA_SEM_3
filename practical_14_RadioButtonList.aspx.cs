using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_14_RadioButtonList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnShow_Click(object sender, EventArgs e)
        {
            lblResult.Text = "My Favorite Programming Language is: "
                              + rblLanguages.SelectedValue;
        }
    }
}