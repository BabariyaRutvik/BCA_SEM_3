<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_40_Vowel_counter.aspx.cs" Inherits="Exam.practical_40_Vowel_counter" %>

<!-- 40 . Design a webpage with a TextBox for 
    entering a piece of text. Add a Button that, 
    when clicked, counts the number of vowels (a, e, i, o, u) 
    in the text and displays the count.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vowel Counter</title>
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
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Title -->
            <h2>Vowel Counter</h2>

            <!-- text input -->
            <asp:TextBox ID="txtInput" CssClass="input-box" runat="server" TextMode="MultiLine" Rows="5" Columns="40" placeholder="Enter your text here..."></asp:TextBox>

            <!-- Button -->
            <asp:Button ID="btnCount"  runat="server" Text="Count Vowels" CssClass="btn" OnClick="btnCount_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
