using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class practical_55_checkbox_days : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnShow_Click(object sender, EventArgs e)
        {
            String selectedDays = "";

            if (chkMonday.Checked)
            {
                selectedDays += "Monday ";
            }
            if (chkTuesday.Checked)
            {
                selectedDays += "Tuesday ";
            }
            if (chkWednesday.Checked)
            {
                selectedDays += "Wednesday ";
            }
            if (chkThursday.Checked)
            {
                selectedDays += "Thursday ";
            }
            if (chkFriday.Checked)
            {
                selectedDays += "Friday ";
            }
            if (chkSaturday.Checked)
            {
                selectedDays += "Saturday ";
            }
            if (chkSunday.Checked)
            {
                selectedDays += "Sunday ";
            }
           // remove last comma and space
           if (selectedDays.Length > 0)
            {
                selectedDays = selectedDays.TrimEnd(' ');
                lblResult.Text = "Selected Days: " + selectedDays;
            }
            else
            {
                lblResult.Text = "No days selected.";
            }
        }
    }
}