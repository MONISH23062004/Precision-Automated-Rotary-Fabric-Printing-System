<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PARFPS.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        /* Home Page Styles */
        body {
            background-color: #eef2f7;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        h1 {
            color: #34495e;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        label {
            font-size: 1rem;
            color: #555;
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #dcdcdc;
            border-radius: 5px;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #27ae60;
            outline: none;
        }

        button,
        input[type="submit"] {
            background-color: #27ae60;
            color: white;
            font-size: 1rem;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
            transition: background-color 0.3s;
            display: inline-block;
        }

        button:hover,
        input[type="submit"]:hover {
            background-color: #219150;
        }
    </style>
    <title>Home - PARFPS</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>PARFPS</h1>
        <label>Username:</label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
        <label>Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />
        <asp:Button ID="btnNewUser" runat="server" Text="New User" OnClick="btnNewUser_Click" />
    </form>
</body>
</html>
