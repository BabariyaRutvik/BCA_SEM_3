<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_23_panel.aspx.cs" Inherits="Exam.practical_23_panel" %>
<!-- 23. Design a webpage with a Panel control. Add a Button that, when clicked, makes the Panel visible or invisible.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Panel Visibility Example</title>
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
        .btn{
             width: 100%;
            padding: 12px;
            background: #4A00E0;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            margin-bottom: 20px;
        }
            .btn:hover {
                background: #3a00b0;
            }
        .panel-style {
            padding: 20px;
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
          
            <h2>Panel Visibility Example</h2>

            <!-- button-->
             <asp:Button ID="btnToggle" runat="server"
                Text="Show / Hide Panel"
                CssClass="btn"
                OnClick="btnToggle_Click" />

            <!-- panel-->
            <asp:Panel ID="pnlMessage" runat="server"
                CssClass="panel-style">

                Welcome to ASP.NET Panel Control!

            </asp:Panel>
        </div>
    </form>
</body>
</html>
