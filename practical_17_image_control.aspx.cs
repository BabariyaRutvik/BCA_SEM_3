using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_17_image_control : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnChangeImage_Click(object sender, EventArgs e)
        {
            ImageDisplay.ImageUrl = "~/img2.jpg"; 
        }
    }
}