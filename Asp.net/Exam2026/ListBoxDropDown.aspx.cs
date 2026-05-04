using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam2026
{
    public partial class ListBox_DropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String selectedLanguage = "";

            foreach (var item in lstProgrammingLanguages.Items)
            {
                if (((System.Web.UI.WebControls.ListItem)item).Selected)
                {
                    selectedLanguage += ((System.Web.UI.WebControls.ListItem)item).Text + " ";
                }
            }

            // Get selected framework
            string framework = ddlFrameworks.SelectedItem != null ? ddlFrameworks.SelectedItem.Text : "";

            lblResult.Text = "Languages: " + selectedLanguage + "<br/>Framework: " + framework;
        }
    }
}