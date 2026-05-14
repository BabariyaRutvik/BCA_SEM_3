<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_34_session_greeting.aspx.cs" Inherits="Exam.practical_34_session_greeting" %>

<!-- 34. Build a webpage with a TextBox for entering a name. 
    Store this name in a 
    Session variable and display a personalized greeting
    (e.g., "Welcome, [Name]!") on subsequent page loads within the session.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session Greeting</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
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

        .input-box {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
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

            <h2>Session Greetinngs</h2>

                <asp:TextBox ID="txtName" runat="server" CssClass="input-box" placeholder="Enter your name"></asp:TextBox>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click" />
    
                <asp:Label ID="lblGreeting" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
