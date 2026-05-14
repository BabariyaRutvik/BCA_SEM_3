<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Exam.RegistrationForm" %>

<!-- 8. Develop a Registration Form with all Validation Controls.-->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            width: 380px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 12px;
        }

        .input-box {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .error {
            color: red;
            font-size: 12px;
            display: block;
            margin-top: 3px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #5a67d8;
        }

        .result {
            margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-weight: bold;
            text-align: center;
            display:block;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
<div class="container">

    <h2>Registration Form</h2>

    <!-- Name -->
    <div class="form-group">
        <asp:TextBox ID="txtName" runat="server" CssClass="input-box" Placeholder="Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Name is required"
            CssClass="error"
            Display="Dynamic" />
    </div>

    <!-- Email -->
    <div class="form-group">
        <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Email"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required"
            CssClass="error"
            Display="Dynamic" />

        <asp:RegularExpressionValidator ID="revEmail" runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Invalid Email Format"
            CssClass="error"
            Display="Dynamic"
            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" />
    </div>

    <!-- Age -->
    <div class="form-group">
        <asp:TextBox ID="txtAge" runat="server" CssClass="input-box" Placeholder="Age"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvAge" runat="server"
            ControlToValidate="txtAge"
            ErrorMessage="Age is required"
            CssClass="error"
            Display="Dynamic" />

        <asp:RangeValidator ID="rvAge" runat="server"
            ControlToValidate="txtAge"
            MinimumValue="18"
            MaximumValue="60"
            Type="Integer"
            ErrorMessage="Age must be between 18 and 60"
            CssClass="error"
            Display="Dynamic" />
    </div>

    <!-- Password -->
    <div class="form-group">
        <asp:TextBox ID="txtPassword" runat="server"
            CssClass="input-box"
            TextMode="Password"
            Placeholder="Enter Password"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
            ControlToValidate="txtPassword"
            ErrorMessage="Password required"
            CssClass="error"
            Display="Dynamic" />
    </div>

    <!-- Confirm Password -->
    <div class="form-group">
        <asp:TextBox ID="txtConfirm" runat="server"
            CssClass="input-box"
            TextMode="Password"
            Placeholder="Confirm Password"></asp:TextBox>

        <asp:CompareValidator ID="cvPassword" runat="server"
            ControlToValidate="txtConfirm"
            ControlToCompare="txtPassword"
            ErrorMessage="Passwords do not match"
            CssClass="error"
            Display="Dynamic" />
    </div>

    <!-- Button -->
    <asp:Button ID="btnRegister" runat="server"
        Text="Register"
        CssClass="btn"
        OnClick="btnRegister_Click" />

    <!-- Summary -->
    <asp:ValidationSummary ID="vsSummary" runat="server"
        CssClass="error" />

    <!-- Result -->
    <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>

</div>
</form>
</body>
</html>