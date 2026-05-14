using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_26_dropdown_country : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnShowCountry_Click(object sender, EventArgs e)
        {
            // Get the selected country from the DropDownList
            string selectedCountry = ddlCountries.SelectedItem.Text;
            // Display the selected country in the Label
            lblSelectedCountry.Text = "Selected Country: " + selectedCountry;
        }

    }
}