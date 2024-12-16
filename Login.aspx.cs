using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Web;
using System.Web.Services;

namespace PARFPS
{
    public partial class Login : System.Web.UI.Page
    {
        // Button click event to redirect after successful login
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        // WebMethod to fetch nearby Wi-Fi devices
        [WebMethod]
        public static List<string> GetWifiDevices()
        {
            List<string> wifiDevices = new List<string>();

            try
            {
                ProcessStartInfo startInfo = new ProcessStartInfo
                {
                    FileName = "netsh",
                    Arguments = "wlan show networks mode=bssid",
                    RedirectStandardOutput = true,
                    UseShellExecute = false,
                    CreateNoWindow = true
                };

                using (Process process = Process.Start(startInfo))
                using (StreamReader reader = process.StandardOutput)
                {
                    string output = reader.ReadToEnd();
                    if (process.ExitCode != 0)
                    {
                        throw new Exception($"Netsh command failed with exit code {process.ExitCode}");
                    }

                    var lines = output.Split(new[] { "\r\n", "\n" }, StringSplitOptions.RemoveEmptyEntries);
                    foreach (var line in lines)
                    {
                        if (line.Trim().StartsWith("SSID"))
                        {
                            int colonIndex = line.IndexOf(":");
                            if (colonIndex > -1 && colonIndex + 1 < line.Length)
                            {
                                string ssid = line.Substring(colonIndex + 1).Trim();
                                wifiDevices.Add(ssid);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error to a file
                File.WriteAllText(HttpContext.Current.Server.MapPath("~/errorlog.txt"), ex.ToString());
                wifiDevices.Add($"Error: {ex.Message}");
            }

            return wifiDevices;
        }
    }
}
