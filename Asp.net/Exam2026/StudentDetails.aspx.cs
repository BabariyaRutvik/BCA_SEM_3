using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Exam2026
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String name = txtStudentName.Text;
            String id = txtStudentID.Text;
            String location = txtStudentLocation.Text;


            lblResult.Text = "Student Name: " + name + "<br />" +
                                     "Student ID: " + id + "<br />" +
                                     "Student Location: " + location;
        }
    }
}