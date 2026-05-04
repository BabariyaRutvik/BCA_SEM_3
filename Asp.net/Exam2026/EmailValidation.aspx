<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailValidation.aspx.cs" Inherits="Exam2026.EmailValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email Validation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        .container {
            background-color: #fff;
            padding: 22px;
            border-radius: 8px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
            max-width: 420px;
            margin: 36px auto;
            border: 1px solid rgba(0,0,0,0.03);
        }
        h2 {
           text-align: center;
           color: #222;
           margin: 0 0 18px 0;
           font-size: 20px;
           font-weight: 600;
        }
        .form-row {
            margin-bottom: 10px;
        }
        .container label.field-label {
            display: block;
            margin-bottom: 6px;
            font-size: 13px;
            color: #444;
        }
        .container input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .btn{
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .result {
            display: block;
            margin-top: 10px;
            font-size: 14px;
            color: #333;
        }

           
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Email Validation</h2>
            <div class="form-row">
                <label class="field-label" for="txtEmail">Enter your email address:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>
               
                <!-- Regular Expression Validator -->
            <asp:RegularExpressionValidator 
                ID="revEmail" 
                runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Invalid Email Format"
                CssClass="error"
                Display="Dynamic"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$">
            </asp:RegularExpressionValidator>
                </div>

            <div class="form-row">
                <asp:Button ID="btnValidate" runat="server" Text="Validate" OnClick="btnValidate_Click" CssClass="btn"></asp:Button>
            </div>

            <div class="form-row">
                <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
            </div>


        </div>
    </form>
</body>
</html>
