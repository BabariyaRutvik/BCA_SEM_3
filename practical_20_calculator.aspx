<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_20_calculator.aspx.cs" Inherits="Exam.practical_20_calculator" %>

<!-- 20. Build a simple calculator with 
    TextBoxes for two operands, a DropdownList 
    for the operation (+, -, *, /), and a Button to calculate the result. 
    Display the result in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Calculator</title>
    <style>
        body{
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #ff9966, #ff5e62);
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
            width: 350px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .input-box{
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }
        .dropdown{
             width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        .btn{
            width: 100%;
            padding: 12px;
            background: #ff6a00;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background: #e65c00;
        }
        .result {
            margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-weight: bold;
            display: block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Simple Calculator</h2>

            <!-- first number input -->
            <asp:TextBox ID="txtOperand1" runat="server" Placeholder="Enter first number" CssClass="input-box"></asp:TextBox>

            <!-- second number input -->
            <asp:TextBox ID="txtOperand2" runat="server" Placeholder="Enter second number" CssClass="input-box"></asp:TextBox>


            <!-- operation selection -->

            <asp:DropDownList ID="ddlOperation" runat="server" CssClass="dropdown">
                
                <asp:ListItem Text="Addition (+)" Value="+" />
                <asp:ListItem Text="Subtraction (-)" Value="-" />
                <asp:ListItem Text="Multiplication (*)" Value="*" />
                <asp:ListItem Text="Division (/)" Value="/" />

                </asp:DropDownList>

              <!-- Button -->
            <asp:Button ID="btnCalculate" runat="server"
                Text="Calculate"
                CssClass="btn"
                OnClick="btnCalculate_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server"
                CssClass="result"></asp:Label>

        </div>
    </form>
</body>
</html>
