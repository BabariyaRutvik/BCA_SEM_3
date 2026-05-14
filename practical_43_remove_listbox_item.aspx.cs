using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_43_remove_listbox_item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            string removedItem = lstfiles.SelectedItem.Text;
            // checking if any item is selected in the listbox
            if (lstfiles.SelectedIndex != -1)
            {
                lstfiles.Items.Remove(lstfiles.SelectedItem);

                lblResult.Text = $"Selected item '{removedItem}' removed successfully.";
            }
        }
    }
}