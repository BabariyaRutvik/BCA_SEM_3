using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_32_temp_fer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConvert_Click(object sender, EventArgs e)
        {
            double celcius = Convert.ToDouble(txtCelsius.Text);

            double fahrenheit = (celcius * 9 / 5) + 32;

            lblFahrenheit.Text = celcius + " °C = " + fahrenheit + " °F";
        }
    }
}