using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_52_time_validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnValidateTime_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string timeInput = txtTime.Text;
                DateTime timeValue;
                if (DateTime.TryParse(timeInput, out timeValue))
                {
                    lblResult.Text = "Valid time: " + timeValue.ToString("HH:mm");
                }
                else
                {
                    lblResult.Text = "Invalid time format. Please enter a valid time.";
                }
            }
        }
    }
}