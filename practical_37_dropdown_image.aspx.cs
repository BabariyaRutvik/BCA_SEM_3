using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_37_dropdown_image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ddlImages_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected image URL from the DropDownList
            string selectedImageUrl = ddlImages.SelectedValue;
            // Set the Image control's ImageUrl property to display the selected image
            imgDisplay.ImageUrl = selectedImageUrl;
        }

    }
}