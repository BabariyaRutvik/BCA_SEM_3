using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_53_month_day : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnShowDays_Click(object sender, EventArgs e)
        {
            String month = ddlMonths.SelectedValue;

            int days = 0;

            switch (month)
            {
                case "January":
                case "March":
                case "May":
                case "July":
                case "August":
                case "October":
                case "December":
                    days = 31;
                    break;
                case "April":
                case "June":
                case "September":
                case "November":
                    days = 30;
                    break;
                case "February":
                    days = 28; // Not accounting for leap years
                    break;
            }
            lblResult.Text = month + " Days";
        }
    }
}