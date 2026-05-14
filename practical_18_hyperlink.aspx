<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_18_hyperlink.aspx.cs" Inherits="Exam.practical_18_hyperlink" %>

<!-- 18. Create a webpage with a HyperLink control that directs users to an external website (e.g., Google). Ensure the link opens in a new tab.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hyperlink Example</title>
    <style>
        body{
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #ff6a00, #ee0979);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container{
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .link {
            display: inline-block;
            padding: 12px 20px;
            background: #0072ff;
            color: white;
            border-radius: 6px;
            font-size: 16px;
            text-decoration: none;
            transition: background 0.3s ease;
        }
            .link:hover {
                background: #0056b3;
            }
                
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Hyperlink Example</h2>

            <asp:HyperLink ID="HyperLink1" CssClass="link" runat="server" NavigateUrl="https://www.google.com" Text="Go to Google" Target="_blank"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
