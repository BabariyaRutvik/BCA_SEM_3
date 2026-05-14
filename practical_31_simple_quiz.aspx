<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_31_simple_quiz.aspx.cs" Inherits="Exam.practical_31_simple_quiz" %>

<!-- 31. Design a webpage with a simple quiz question (e.g., "What is 2 + 2?"). Include a TextBox for the answer and a Button to submit. Display "Correct!" or "Incorrect!" in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Quiz</title>
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
            width: 400px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h2 {
            margin-bottom: 25px;
            color: #333;
        }
        .question{
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #444;
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
            background: #ff5e62;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #e0484d;
        }

        .result {
            display: block;
            margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Simple Quiz</h2>

            <div class="question">
                What is 2 + 2
            </div>


            <!-- answer your textbox-->
            <asp:TextBox ID="txtAnswer" runat="server" CssClass="input-box" placeholder="Enter your answer here"></asp:TextBox>

             <!-- Button -->
            <asp:Button ID="btnSubmit" runat="server"
                Text="Submit Answer"
                CssClass="btn"
                OnClick="btnSubmit_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server"
                CssClass="result">
            </asp:Label>
        </div>
    </form>
</body>
</html>
