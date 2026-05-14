<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_12_ViewStateCounter.aspx.cs" Inherits="Exam.practical_12_ViewStateCounter" %>

<!-- 12.Create a webpage that stores a simple 
    counter value in ViewState and displays it. 
    Each time the page loads (postback), increment and display the counter.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ViewState Counter</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 350px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            border: none;
            border-radius: 6px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn:hover{
             background: #e74c50;
        }
        .label {
            margin-top: 20px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            display: block;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>ViewState Counter</h2>

        <!-- Button -->
        <asp:Button ID="btnPostBack" runat="server"
            Text="Increase Counter"
            CssClass="btn"
            OnClick="btnPostBack_Click" />

        <!-- Label -->
        <asp:Label ID="lblCounter" runat="server"
            CssClass="label">
        </asp:Label>

        </div>
    </form>
</body>
</html>
