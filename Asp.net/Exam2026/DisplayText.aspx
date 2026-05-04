<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayText.aspx.cs" Inherits="Exam2026.DisplayText" %>

<!-- 7. Build a webpage with a TextBox and a Button. Display the entered text in a Label upon
button click.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Text</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .input {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn{
            padding: 10px 20px;
            background: #0072ff;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background: #00c6ff;
        }
        .result{
            display: block;
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

             <h2>Display Text</h2>

            <!-- TextBox -->
            <asp:TextBox ID="txtInput" runat="server" CssClass="input" placeholder="Enter text here"></asp:TextBox>

            <!-- Button -->
            <asp:Button ID="btnShow" runat="server" Text="Show Text" CssClass="btn" OnClick="btnShow_Click" />

            <!-- Label -->
            <asp:Label ID="lblOutput" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
