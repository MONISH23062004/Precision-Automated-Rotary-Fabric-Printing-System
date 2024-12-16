using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PARFPS
{
    public partial class Calculation : System.Web.UI.Page
    {
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double length = Convert.ToDouble(txtLength.Text);
            double width = Convert.ToDouble(txtWidth.Text);

            double fabricRequired = length * width;
            double inkRequired = fabricRequired * 0.05; 
            double totalCost = fabricRequired * 10 + inkRequired * 2;

            // Storing the values in session
            Session["FabricRequired"] = fabricRequired;
            Session["InkRequired"] = inkRequired;
            Session["TotalCost"] = totalCost;

            // Redirect to Calculate.aspx
            Response.Redirect("Calculate.aspx");
        }
    }
}
