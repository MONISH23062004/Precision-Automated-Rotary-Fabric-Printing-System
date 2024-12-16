<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PARFPS.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        /* Login Page Styles */
        body {
            background-color: #eef2f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
            position: relative;
        }

        h1 {
            color: #2c3e50;
            font-size: 1.8rem;
            margin-bottom: 20px;
        }

        input[type="submit"] {
            background-color: #27ae60;
            color: white;
            font-size: 1rem;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #219150;
        }

        .wifi-image {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 30px;
            height: 30px;
            cursor: pointer;
        }

        #wifiDevices {
            margin-top: 20px;
            text-align: left;
            padding: 10px;
            background: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            max-height: 200px;
            overflow-y: auto;
        }
    </style>

    <script>
        // Function to fetch nearby Wi-Fi networks
        function fetchNearbyWifi() {
            $.ajax({
                type: "POST",
                url: '<%= ResolveUrl("~/Login.aspx/GetWifiDevices") %>', // Corrected URL resolution
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var wifiDevices = response.d;
                    var wifiListHtml = "<ul>";
                    wifiDevices.forEach(function (device) {
                        wifiListHtml += "<li>" + device + "</li>";
                    });
                    wifiListHtml += "</ul>";
                    $("#wifiDevices").html(wifiListHtml);
                },
                error: function (xhr, status, error) {
                    console.error("Error fetching Wi-Fi networks:", xhr.responseText);
                    $("#wifiDevices").html("<p style='color: red;'>Error fetching Wi-Fi networks</p>");
                }
            });
        }
    </script>

    <title>Login - PARFPS</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>PARFPS</h1>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

        <!-- Wi-Fi Image for fetching nearby Wi-Fi networks -->
        <img src="Image/wifi.png" alt="Wi-Fi" class="wifi-image" onclick="fetchNearbyWifi();" />
        <div id="wifiDevices">
            <!-- Wi-Fi networks will be dynamically populated here -->
        </div>
    </form>
</body>
</html>
