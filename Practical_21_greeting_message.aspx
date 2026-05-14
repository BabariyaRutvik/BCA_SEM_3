<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practical_21_greeting_message.aspx.cs" Inherits="Exam.Practical_21_greeting_message" %>

<!-- 21. Create a webpage that displays a greeting message that changes based on the time of day (e.g., "Good Morning!", "Good Afternoon!").-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Greeting Message</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .message {
            display: block;
            margin-top: 20px;
            font-size: 18px;
            color: #555;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Greeting Message</h2>

            <asp:Label ID="lblGreeting" runat="server"
                CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
