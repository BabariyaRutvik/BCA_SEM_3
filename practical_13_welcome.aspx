<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_13_welcome.aspx.cs" Inherits="Exam.practical_13_welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #36d1dc, #5b86e5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 400px;
            text-align: center;
        }
         h2 {
            color: #333;
        }

        .info {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
            color: #444;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Welcome User</h2>

        <asp:Label ID="lblSession" runat="server" CssClass="info"></asp:Label>
        <br /><br />

        <asp:Label ID="lblCookie" runat="server" CssClass="info"></asp:Label>
        </div>
    </form>
</body>
</html>
