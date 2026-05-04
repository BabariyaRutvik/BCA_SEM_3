<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComparePassword.aspx.cs" Inherits="Exam2026.ComparePassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Validation</title>

    <style>
        body {
            font-family: Arial;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 25px;
            border-radius: 10px;
            width: 350px;
            text-align: center;
            box-shadow: 0 6px 18px rgba(0,0,0,0.2);
        }

        h2 {
            margin-bottom: 15px;
        }

        .input {
            width: 90%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            width: 95%;
            padding: 10px;
            background: #ff7e5f;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background: #e5674d;
        }

        .error {
            color: red;
            font-size: 13px;
            display: block;
        }

        .result {
            margin-top: 15px;
            font-weight: bold;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <h2>Password Match Check</h2>

            <!-- Password -->
            <asp:TextBox ID="txtPassword" runat="server"
                CssClass="input" TextMode="Password"
                placeholder="Enter Password"></asp:TextBox>

            <!-- Confirm Password -->
            <asp:TextBox ID="txtConfirm" runat="server"
                CssClass="input" TextMode="Password"
                placeholder="Confirm Password"></asp:TextBox>

            <!-- Compare Validator -->
            <asp:CompareValidator ID="cvPassword" runat="server"
                ControlToValidate="txtConfirm"
                ControlToCompare="txtPassword"
                ErrorMessage="Passwords do not match"
                CssClass="error"
                Display="Dynamic" />

            <br />

            <!-- Button -->
            <asp:Button ID="btnCheck" runat="server"
                Text="Check" CssClass="btn"
                OnClick="btnCheck_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>

        </div>

    </form>
</body>
</html>