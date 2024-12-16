using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PARFPS
{
    public partial class Calculate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FabricRequired"] != null && Session["InkRequired"] != null && Session["TotalCost"] != null)
            {
                double fabric = (double)Session["FabricRequired"];
                double ink = (double)Session["InkRequired"];
                double cost = (double)Session["TotalCost"];

                lblResult.Text = $"Fabric Required: {fabric} units<br/>Ink Required: {ink} units<br/>Total Cost: ${cost}";
            }
        }
    }
}
