using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


namespace PARFPS
{
    public partial class Home : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            string connString = ConfigurationManager.ConnectionStrings["mycon"]?.ConnectionString;
            if (string.IsNullOrEmpty(connString))
            {
                throw new InvalidOperationException("Connection string is missing or empty.");
            }

            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();

                // Update the column name to 'Passwordhashed' in the SQL query
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM dbo.user_information WHERE Username = @username AND Passwordhashed = @password", conn);

                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    Response.Redirect("FabricSelection.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Login!');</script>");
                }
            }
        }




        protected void btnNewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewUser.aspx");
        }
    }
}
