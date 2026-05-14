<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_57_Session_subcribe.aspx.cs" Inherits="Exam.practical_57_Session_subcribe" %>

<!-- 57. Implement a webpage with a simple "Subscribe" button. Use a Session variable to track if the user has subscribed during the current session and display a different message based on the subscription status. -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Subscribe Page</title>

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
            width: 420px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #ff6f61;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 18px;
            cursor: pointer;
        }

        .btn:hover {
            background: #e65b50;
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

            <h2>Subscription Page</h2>

            <!-- Subscribe Button -->
            <asp:Button ID="btnSubscribe" runat="server"
                Text="Subscribe"
                CssClass="btn"
                OnClick="btnSubscribe_Click" />

            <!-- Result -->
            <asp:Label ID="lblMessage" runat="server"
                CssClass="result">
            </asp:Label>

        </div>

    </form>
</body>
</html>