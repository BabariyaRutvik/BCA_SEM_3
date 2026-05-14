using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_30_change_panel_color : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnChange_Click(object sender, EventArgs e)
        {
            try
            {
                pnlColor.BackColor = System.Drawing.ColorTranslator.FromHtml(textColor.Text);
                lblResult.Text = "Color changed successfully!";
                lblResult.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                lblResult.Text = "Invalid color format!";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}