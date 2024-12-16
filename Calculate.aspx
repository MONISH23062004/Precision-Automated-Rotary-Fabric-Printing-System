<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculate.aspx.cs" Inherits="PARFPS.Calculate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        /* Calculate Page Styles */
        body {
            background-color: #e9edf0;
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
            width: 400px;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        #lblResult {
            color: #27ae60;
            font-size: 1.2rem;
            line-height: 1.5;
            margin-top: 20px;
        }

        #btnPrint {
            margin-top: 20px;
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
        }

        #btnPrint:hover {
            background-color: #2980b9;
        }
    </style>
    <title>Calculation Result</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Calculation Result Heading inside the form -->
        <h1>Calculation Result</h1>

        <!-- Displaying the result inside a Label -->
        <asp:Label ID="lblResult" runat="server" />

        <!-- Print Button -->
        <asp:Button ID="btnPrint" runat="server" Text="Print" OnClientClick="window.print(); return false;" />
    </form>
</body>
</html>
