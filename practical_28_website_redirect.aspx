<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_28_website_redirect.aspx.cs" Inherits="Exam.practical_28_website_redirect" %>

<!-- 28. Create a webpage with a TextBox for entering a website name. Add a Button that, when clicked, opens that website in a new browser tab or window using Response.Redirect().-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Website Redirect</title>
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
             color:red; 
             font-weight:bold; 
             display:block; 
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Website Redirect</h2>

            <!-- website input -->
            <asp:TextBox ID="TxtWebsite" runat="server" CssClass="input-box" Placeholder="Enter website URL (e.g., https://www.google.com)"></asp:TextBox>

            <!-- redirect button -->
            <asp:Button ID="BtnRedirect" runat="server" Text="Go to Website" CssClass="btn" OnClick="BtnRedirect_Click" />

            <!-- result label -->
            <asp:Label ID="LblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
