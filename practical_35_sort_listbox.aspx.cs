using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_35_sort_listbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSort_Click(object sender, EventArgs e)
        {
            // getiing all items
             var items = lstItems.Items.Cast<ListItem>()
                         .OrderBy(x => x.Text).ToList();

            // clear the old items
            lstItems.Items.Clear();

            // add sorted items back to the ListBox
            foreach (ListItem item in items)
            {
                lstItems.Items.Add(item);
            }
            lblResult.Text = "Items sorted successfully!";
        }
    }
}