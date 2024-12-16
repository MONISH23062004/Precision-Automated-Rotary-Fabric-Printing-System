using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PARFPS
{
    public partial class FabricSelection : System.Web.UI.Page
    {
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            // Check if a file has been selected
            if (fileDesign.HasFile)
            {
                // Get the full physical path for the 'Uploads' folder
                string uploadFolder = Server.MapPath("~/Uploads/");

                // Check if the 'Uploads' folder exists. If not, create it.
                if (!System.IO.Directory.Exists(uploadFolder))
                {
                    System.IO.Directory.CreateDirectory(uploadFolder);
                }

                // Save the uploaded file in the 'Uploads' folder
                string filePath = System.IO.Path.Combine(uploadFolder, fileDesign.FileName);
                fileDesign.SaveAs(filePath);

                // Display the uploaded image
                imgPreview.ImageUrl = "~/Uploads/" + fileDesign.FileName;
                imgPreview.Visible = true;
            }
        }

        protected void btnCalculation_Click(object sender, EventArgs e)
        {
            Response.Redirect("Calculation.aspx");
        }
    }
}
