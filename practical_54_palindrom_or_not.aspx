<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_54_palindrom_or_not.aspx.cs" Inherits="Exam.practical_54_palindrom_or_not" %>

<!-- 54. Create a webpage with a TextBox for entering a phrase. Add a Button that, when clicked, checks if the phrase is a palindrome (reads the same backward as forward) and displays the result.-->
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Palindrome Checker</title>
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

            <h2>Palindrome Checker</h2>

            <!-- textinput -->
            <asp:TextBox ID="txtPhrase" runat="server" CssClass="input-box" placeholder="Enter a phrase"></asp:TextBox>
            <!-- button -->
            <asp:Button ID="btnCheckPalindrome" runat="server" Text="Check" CssClass="btn" OnClick="btnCheckPalindrome_Click" />
            <!-- label to display result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
