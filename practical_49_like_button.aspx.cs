using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_49_like_button : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLike_Click(object sender, EventArgs e)
        {
            // Get current likes
            int likes = Convert.ToInt32(ViewState["Likes"]);

            // Increase likes
            likes++;

            // Save updated value
            ViewState["Likes"] = likes;

            // Display result
            lblLikeCount.Text = "Likes: " + likes;
        }
    }
}