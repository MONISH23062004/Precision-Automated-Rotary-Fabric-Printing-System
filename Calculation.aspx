<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculation.aspx.cs" Inherits="PARFPS.Calculation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        /* Global styles */
        body {
            background-color: #f3f6f9;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column; /* Stack content vertically */
        }

        /* Form container styles */
        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
            margin-top: 20px; /* Ensure the form is centered */
        }

        /* Title inside the form */
        .form-title {
            color: #34495e;
            font-size: 2rem;
            margin-bottom: 20px; /* Margin to separate the title from inputs */
        }

        label {
            font-size: 1rem;
            color: #555;
            display: block;
            margin-top: 10px;
        }

        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Green button styles */
        button {
            background-color: #27ae60; /* Green color */
            color: white;
            font-size: 1rem;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 30px; /* Increased margin to bring button a little lower */
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #219150; /* Darker green on hover */
        }
    </style>
    <title>PARFPS - Calculation</title>
</head>
<body>
    <!-- Form Section -->
    <form id="form1" runat="server">
        <!-- Title inside the form -->
        <div class="form-title">PARFPS - Calculation</div>

        <!-- Input fields for Length and Width -->
        <label for="txtLength">Length:</label>
        <asp:TextBox ID="txtLength" runat="server"></asp:TextBox><br />

        <label for="txtWidth">Width:</label>
        <asp:TextBox ID="txtWidth" runat="server"></asp:TextBox><br />

        <!-- Green Button -->
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" 
                    style="background-color: #27ae60; color: white; border-radius: 5px; padding: 10px 20px; font-size: 1rem; border: none;" />
    </form>
</body>
</html>
