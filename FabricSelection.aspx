<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FabricSelection.aspx.cs" Inherits="PARFPS.FabricSelection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        /* Fabric Selection Page Styles */
        body {
            background-color: #f9f9fb;
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

        label {
            font-size: 1rem;
            color: #555;
            margin-top: 10px;
            display: block;
        }

        input[type="file"] {
            margin-top: 10px;
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
        }

        button:hover,
        input[type="submit"]:hover {
            background-color: #219150;
        }

        img {
            margin-top: 20px;
            max-width: 100%;
            border: 1px solid #dcdcdc;
            border-radius: 5px;
        }
    </style>
    <title>Fabric Selection - PARFPS</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>PARFPS</h1>
        <label for="fabricType">Select Fabric Type:</label>
        <asp:DropDownList ID="ddlFabricType" runat="server">
            <asp:ListItem>-- Select Fabric Type --</asp:ListItem>
            <asp:ListItem>Cotton</asp:ListItem>
            <asp:ListItem>Silk</asp:ListItem>
            <asp:ListItem>Polyester</asp:ListItem>
        </asp:DropDownList><br />

        <label for="fileDesign">Upload Design:</label>
        <asp:FileUpload ID="fileDesign" runat="server" /><br />

        <asp:Button ID="btnUpload" runat="server" Text="Upload Design" OnClick="btnUpload_Click" /><br />
        <asp:Image ID="imgPreview" runat="server" Visible="false" /><br />

        <asp:Button ID="btnCalculation" runat="server" Text="Go to Calculation" OnClick="btnCalculation_Click" />
    </form>
</body>
</html>
