using System;

namespace Exam
{
    public partial class _1st_Practical_Student_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = txtID.Text.Trim();
            string name = txtName.Text.Trim();
            string location = txtLocation.Text.Trim();

            lblResult.Text = "<b>Student Details:</b><br/><br/>" +
                             "<b>ID:</b> " + id + "<br/>" +
                             "<b>Name:</b> " + name + "<br/>" +
                             "<b>Location:</b> " + location;
        }
    }
}