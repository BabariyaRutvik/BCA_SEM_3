<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_38_square_number.aspx.cs" Inherits="Exam.practical_38_square_number" %>

<!-- 38. Develop a webpage with a TextBox for entering a number. Add a Button that, when clicked, calculates the square of the number and displays it in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Square Number</title>
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
        .input-box{
             width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-bottom: 20px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .btn {
             width: 100%;
            padding: 12px;
            background: #185a9d;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
            .btn:hover {
                background: #14497d;
            }
        .result {
            margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            display: block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

             <h2>Square Number</h2>
            <!-- number text input-->

            <asp:TextBox ID="txtNumber" runat="server" CssClass="input-box" placeholder="Enter a number"></asp:TextBox>

            <!-- calculate button-->
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate Square" CssClass="btn" OnClick="btnCalculate_Click" />

            <!-- lebel -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
