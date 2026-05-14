<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_44_url_validation.aspx.cs" Inherits="Exam.practical_44_url_validation" %>

<!-- 44. Design a webpage with a TextBox for entering 
    a website URL. Add a Button that, when clicked, 
    checks if the URL starts with "http://" or "https://" and displays "Valid URL" 
    or "Invalid URL" in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>URL Validation</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #89f7fe, #66a6ff);
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
            width: 450px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h2 {
            margin-bottom: 25px;
            color: #333;
        }
        .input-box {
            width: 100%;
            padding: 12px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 16px;
            margin-bottom: 20px;
        }
        .btn {
            width: 100%;
            padding: 12px;
            background: #4caf50;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background: #45a049;
        }
        .result{
            display: block; 
            margin-top: 20px; 
            padding: 12px; 
            background: #f1f3f6; 
            border-radius: 8px; 
            font-size: 18px; 
            font-weight: bold; 
            color: #333;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>URL Validation</h2
                >
            <!-- URL Input -->
            <asp:TextBox ID="txtUrl" runat="server" CssClass="input-box" Placeholder="Enter website URL"></asp:TextBox>

            <!-- Validate Button -->
            <asp:Button ID="btnValidate" runat="server" Text="Validate URL" CssClass="btn" OnClick="btnValidate_Click" />

            <!-- result Label -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
