<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="PARFPS.NewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Form container */
        form {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        /* Page title styling */
        h1 {
            text-align: center;
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        /* Label styling */
        label {
            display: block;
            font-size: 14px;
            color: #555;
            margin-bottom: 5px;
        }

        /* Input styling */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        /* Button container */
        .button-container {
            text-align: center; /* Center-align the button */
        }

        /* Button styling */
        .green-button {
            background-color: green; /* Green button */
            color: white;
            font-size: 14px;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            width: auto;
        }

        .green-button:hover {
            background-color: #218838;
        }

        /* Error or popup messages */
        .message {
            color: #d9534f; /* Red for error messages */
            font-size: 12px;
            text-align: center;
            margin-top: 10px;
        }
    </style>
    <title>New User Registration</title>
    <script type="text/javascript">
        function showPopup(message) {
            alert(message);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>PARFPS</h1>
        <label>Username:</label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required!" CssClass="message" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        
        <label>Email:</label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required!" CssClass="message" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        
        <label>Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" CssClass="message" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        
        <label>Re-type Password:</label>
        <asp:TextBox ID="txtRetypePassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvRetypePassword" runat="server" ControlToValidate="txtRetypePassword" ErrorMessage="Please re-type your password!" CssClass="message" Display="Dynamic"></asp:RequiredFieldValidator>
        <br /><br />
        
        <!-- Centered button -->
        <div class="button-container">
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="green-button" />
        </div>
    </form>
</body>
</html>
