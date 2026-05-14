<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_9_compareValidator.aspx.cs" Inherits="Exam.practical_9_compareValidator" %>

<!--11. 
    Design a webpage with two TextBoxes for entering a password and a confirmation password. Use a CompareValidator to ensure they match. Display the validation result.-->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Comparison Validation</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .input-box {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box; /* Ensures padding doesn't break width */
        }

        .error {
            color: #e74c3c;
            font-size: 13px;
            display: block;
            margin-top: 5px;
            font-weight: 500;
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
            transition: background 0.3s;
        }

        .btn:hover {
            background: #5a67d8;
        }

        .result-label {
            margin-top: 15px;
            padding: 12px;
            background: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
            border-radius: 8px;
            font-weight: bold;
            text-align: center;
            display: block; /* Label will only render if Visible="true" in C# */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Secure Access</h2>

            <!-- Password Field -->
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server"
                    CssClass="input-box"
                    TextMode="Password"
                    Placeholder="Enter Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                    ControlToValidate="txtPassword"
                    ErrorMessage="Password is required"
                    CssClass="error"
                    Display="Dynamic"
                    ValidationGroup="vg1" />
            </div>

            <!-- Confirm Password Field -->
            <div class="form-group">
                <asp:TextBox ID="txtConfirm" runat="server"
                    CssClass="input-box"
                    TextMode="Password"
                    Placeholder="Confirm Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvConfirm" runat="server"
                    ControlToValidate="txtConfirm"
                    ErrorMessage="Confirmation is required"
                    CssClass="error"
                    Display="Dynamic"
                    ValidationGroup="vg1" />

                <asp:CompareValidator ID="cvPassword" runat="server"
                    ControlToValidate="txtConfirm"
                    ControlToCompare="txtPassword"
                    ErrorMessage="Passwords do not match!"
                    CssClass="error"
                    Display="Dynamic"
                    ValidationGroup="vg1" />
            </div>

            <!-- Submit Button -->
            <asp:Button ID="btnCheck" runat="server"
                Text="Verify Passwords"
                CssClass="btn"
                OnClick="btnCheck_Click"
                ValidationGroup="vg1" />

            <!-- Success Message (Hidden by default) -->
            <asp:Label ID="lblResult" runat="server" 
                CssClass="result-label" 
                Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>