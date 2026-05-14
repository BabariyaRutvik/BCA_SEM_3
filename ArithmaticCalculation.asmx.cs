using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

// 10. Create a Web Service for all Arithmetic operations.
namespace Exam
{
    /// <summary>
    /// Summary description for ArithmaticCalculation
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ArithmaticCalculation : System.Web.Services.WebService
    {

        [WebMethod]
        public int Add(int a, int b)
        {
            return a + b;
        }
        [WebMethod]
        public int Subtract(int a, int b) {
            return a - b;
        }
        [WebMethod]
        public int Multiply(int a, int b) {
            return a * b;
        }
        [WebMethod]
        public double Divide(int a, int b) {
            if (b == 0)
            {
                throw new ArgumentException("Divisor cannot be zero.");
            }
            return (double)a / b;
        }
    }
}
