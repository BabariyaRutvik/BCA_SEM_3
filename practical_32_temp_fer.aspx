<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_32_temp_fer.aspx.cs" Inherits="Exam.practical_32_temp_fer" %>

<!-- 32. Implement a webpage with a TextBox for entering a temperature in Celsius. Add a Button that, when clicked, converts it to Fahrenheit and displays the result in a Label. (Formula: F = (C * 9/5) + 32).-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature to Fahrenheit</title>
    <style>
        body{
             font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #36d1dc, #5b86e5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container{
            background: white;
            padding: 30px;
            border-radius: 12px;
            width: 420px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        .h2{
            margin-bottom:25px;
            color:#333;
        }
        .input-box {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-bottom: 15px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #5b86e5;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #4a75d1;
        }

        .result {
            display: block;
            margin-top: 15px;
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
        <div  class="container">
            <h2>Temperature to Fahrenheit</h2>

            <!-- celcius input -->
            <asp:TextBox ID="txtCelsius" runat="server" CssClass="input-box" placeholder="Enter temperature in Celsius"></asp:TextBox>

            <!-- button -->
            <asp:Button ID="btnConvert" runat="server" Text="Convert" CssClass="btn" OnClick="btnConvert_Click" />
           
            <!-- result label -->
            <asp:Label ID="lblFahrenheit" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
