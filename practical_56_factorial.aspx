<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_56_factorial.aspx.cs" Inherits="Exam.practical_56_factorial" %>

<!-- 56. Design a webpage with a TextBox for 
    entering a number. Add a Button 
    that, when clicked, calculates its factorial 
    (for a small non-negative integer) and displays the result.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Factorial Number</title>
   <style>
       body{
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
            width: 420px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        h2 {
            margin-bottom: 25px;
            color: #333;
        }
        .input-box{
             width: 100%;
            padding: 12px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 16px;
            margin-bottom: 20px;
            box-sizing: border-box;
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

        .result {
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

            <h2>Factorial</h2>

            <!-- number input -->
            <asp:TextBox ID="txtNumber" runat="server" CssClass="input-box" placeholder="Enter a non-negative integer"></asp:TextBox>
            <br /><br />
            <!-- calculate button -->
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate Factorial" CssClass="btn" OnClick="btnCalculate_Click" />
            <br /><br />
            <!-- result display -->
            <asp:Label ID="lblResult" runat="server" CssClass="result-label"></asp:Label>
        </div>
    </form>
</body>
</html>
