using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace PARFPS
{
    public partial class NewUser : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string retypePassword = txtRetypePassword.Text.Trim();

            if (password != retypePassword)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "showPopup('Passwords do not match.');", true);
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Check if username already exists
                string checkUserQuery = "SELECT COUNT(*) FROM user_information WHERE Username = @Username";
                using (SqlCommand cmd = new SqlCommand(checkUserQuery, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    int count = (int)cmd.ExecuteScalar();
                    if (count > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "showPopup('User already exists.');", true);
                        return;
                    }
                }

                // Insert new user
                string insertQuery = "INSERT INTO user_information (Username, Email, Passwordhashed) VALUES (@Username, @Email, @Password)";
                using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.ExecuteNonQuery();
                }

                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "showPopup('Registration successful!');", true);
                Response.Redirect("Home.aspx"); // Redirect to the home page
            }
        }
    }
}
