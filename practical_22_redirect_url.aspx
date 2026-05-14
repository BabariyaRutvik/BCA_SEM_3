<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_22_redirect_url.aspx.cs" Inherits="Exam.practical_22_redirect_url" %>

<!-- 22. Implement a webpage with a TextBox where users can enter a URL. Add a Button that, when clicked, redirects the user to that URL.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>URL Redirect</title>
    
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

        .input-box {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
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
            color: red;
            font-weight: bold;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="container"
            >

            <h2>URL Redirect</h2>

            <!-- url textbox -->
            <asp:TextBox ID="txtUrl" runat="server" Width="300px" Placeholder="Enter URL here..." CssClass="input-box"></asp:TextBox>

            <!-- redirect button -->
             <asp:Button ID="btnGo" runat="server"
                Text="Go To Website"
                CssClass="btn"
                OnClick="btnGo_Click" />


             <!-- Result -->
            <asp:Label ID="lblResult" runat="server"
                CssClass="result">
            </asp:Label>

        </div>
    </form>
</body>
</html>
