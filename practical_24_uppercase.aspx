<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_24_uppercase.aspx.cs" Inherits="Exam.practical_24_uppercase" %>

<!-- 24. Create a webpage with a TextBox. Add a Button that, when clicked, converts the entered text to uppercase and displays it in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Uppercase Converter</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
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
            width: 400px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .input-box {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .btn {
             width: 100%;
            padding: 12px;
            background: #ff6f61;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background: #e65c50;
        }
        .result{
             margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            display:block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Uppercase Converter</h2>

            <!-- textbox -->
            <asp:TextBox ID="txtInput" runat="server" CssClass="input-box" placeholder="Enter text here"></asp:TextBox>

            <!-- Button -->
            <asp:Button ID="btnConvert" runat="server"
                Text="Convert to Uppercase"
                CssClass="btn"
                OnClick="btnConvert_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server"
                CssClass="result">
            </asp:Label>

        </div>
    </form>
</body>
</html>
