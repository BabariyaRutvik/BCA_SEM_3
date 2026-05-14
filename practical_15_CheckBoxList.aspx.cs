using System;
using System.Collections.Generic;
using System.Text;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_17_CheckBoxList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            StringBuilder result = new StringBuilder();

            List<string> selectedItems = new List<string>();

            foreach (ListItem item in chkHobbies.Items)
            {
                if (item.Selected)
                {
                    selectedItems.Add(item.Value);
                }
            }

            if (selectedItems.Count > 0)
            {
                result.Append("Selected Hobbies: ");

                result.Append(string.Join(", ", selectedItems));

                lblResult.Text = result.ToString();
            }
            else
            {
                lblResult.Text = "No hobby selected.";
            }
        }
    }
}