<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Exam2026.Registration" %>

<!-- 8.Develop a Registration Form with all Validation Controls. -->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #11998e, #38ef7d);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.2);
            text-align: center;
            width: 350px;
        }

        h2 {
            margin-bottom: 15px;
            color: #333;
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
            background: #11998e;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background: #0d7a6f;
        }

        .error {
            color: red;
            font-size: 13px;
            display: block;
        }

        .result {
            margin-top: 15px;
            font-size: 16px;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Registration Form</h2>

            <!-- Name -->
            <asp:TextBox ID="txtName" runat="server" CssClass="input" placeholder="Enter your name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server"
                ControlToValidate="txtName"
                ErrorMessage="Name is required"
                CssClass="error" Display="Dynamic" />

            <!-- Age -->
            <asp:TextBox ID="txtAge" runat="server" CssClass="input" placeholder="Enter your age"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAge" runat="server"
                ControlToValidate="txtAge"
                ErrorMessage="Age is required"
                CssClass="error" Display="Dynamic" />
            <asp:RangeValidator ID="rvAge" runat="server"
                ControlToValidate="txtAge"
                MinimumValue="18"
                MaximumValue="60"
                Type="Integer"
                ErrorMessage="Age must be between 18 and 60"
                CssClass="error" Display="Dynamic" />

            <!-- Email -->
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Enter your email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required"
                CssClass="error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                ErrorMessage="Invalid Email Format"
                CssClass="error" Display="Dynamic" />

            <!-- Password -->
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input"
                TextMode="Password" placeholder="Enter password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required"
                CssClass="error" Display="Dynamic" />

            <!-- Confirm Password -->
            <asp:TextBox ID="txtConfirm" runat="server" CssClass="input"
                TextMode="Password" placeholder="Confirm password"></asp:TextBox>
            <asp:CompareValidator ID="cvPassword" runat="server"
                ControlToValidate="txtConfirm"
                ControlToCompare="txtPassword"
                ErrorMessage="Passwords do not match"
                CssClass="error" Display="Dynamic" />

            <br />

            <!-- Button -->
            <asp:Button ID="btnRegister" runat="server" Text="Register"
                CssClass="btn" OnClick="btnRegister_Click" />

            <!-- Validation Summary -->
            <asp:ValidationSummary ID="vsSummary" runat="server" CssClass="error" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>

        </div>
    </form>
</body>
</html>