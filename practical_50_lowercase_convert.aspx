<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_50_lowercase_convert.aspx.cs" Inherits="Exam.practical_50_lowercase_convert" %>

<!-- 50 . Create a webpage with a TextBox for entering text. Add a Button that, when clicked, converts the entered text to lowercase and displays it in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lowercase Converter</title>
   
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
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
        .input {
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
            background: #ff6f91;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background: #e55d87;
        }
        .result {
             display: block; 
             margin-top: 20px; 
             padding: 12px; 
             background: #f1f3f6; 
             border-radius: 8px; 
             font-weight:bold;
         }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Lowercase Converter</h2>

            <!-- TextBox for input -->
            <asp:TextBox ID="txtInput" runat="server" CssClass="input"></asp:TextBox>
            <!-- Button to convert text to lowercase -->
            <asp:Button ID="btnConvert" runat="server" Text="Convert to Lowercase" CssClass="btn" OnClick="btnConvert_Click" />
            <!-- Label to display the result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
