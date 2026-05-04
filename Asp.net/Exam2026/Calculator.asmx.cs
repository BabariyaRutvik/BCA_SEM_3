using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Exam2026
{
    /// <summary>
    /// Summary description for Calculator
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Calculator : System.Web.Services.WebService
    {
        [WebMethod]
        public int Add(int a, int b)
        {
            return a + b;
        }
        [WebMethod]
        public void Subtract(int a, int b, out int result)
        {
            result = a - b;
        }
        [WebMethod]
        public void Multiply(int a, int b, out int result)
        {
            result = a * b;
        }
        [WebMethod]
        public double Divide(int a, int b)
        {
            if (b == 0)
            {
              return 0;  
            }
            return (double)a / b;
            
        }

    }
}
