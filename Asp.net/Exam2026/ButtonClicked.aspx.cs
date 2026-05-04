using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam2026
{
    public partial class ButtonClicked : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnChange_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Text Changed Successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Blue;
        }
    }
}