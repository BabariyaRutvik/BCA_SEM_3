using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_29_listbox_files : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCount_Click(object sender, EventArgs e)
        {
            // Get the number of items in the ListBox
            int fileCount = ListBoxFiles.Items.Count;
            // Display the file count in the Label
            lblResult.Text = "Number of Files: " + fileCount.ToString();
        }
    }
}