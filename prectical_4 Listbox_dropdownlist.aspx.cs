using System;
using System.Text;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class Practical4_Listbox_Dropdown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            string language = ddlLanguages.SelectedValue;

            StringBuilder frameworks = new StringBuilder();

            foreach (ListItem item in lstFrameworks.Items)
            {
                if (item.Selected)
                {
                    frameworks.Append(item.Text + ", ");
                }
            }

            lblResult.Text = "<b>Selected Language:</b> " + language + "<br/><br/>" +
                             "<b>Selected Framework(s):</b> " + frameworks.ToString().TrimEnd(',', ' ');
        }
    }
}