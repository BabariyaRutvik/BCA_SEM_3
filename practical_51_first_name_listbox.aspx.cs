using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_51_first_name_listbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnShowFirstName_Click(object sender, EventArgs e)
        {
            // Display first item from ListBox
            lblFirstName.Text = "First Name: " + lstNames.Items[0].Text;
        }
    }
}