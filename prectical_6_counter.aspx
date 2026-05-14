
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prectical_6_counter.aspx.cs" Inherits="Exam.prectical_6_counter" %>

<!-- 6. Implement a simple counter that increments each time a button is clicked.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Counter</title>

    <style>
        body{
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #ffecd2, #fcb69f);
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
            width: 320px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h2{
            margin-bottom:20px;
            color:#333;
        }
        .btn{
            width: 100%;
            padding: 12px;
            background: #ff7e5f;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
        }
        .btn:hover{
            background:#eb5e3c;
        }
         .label {
            display: block;
            margin-top: 20px;
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
             <!-- Button -->
        <asp:Button ID="btnCount" runat="server"
            Text="Click Me"
            CssClass="btn"
            OnClick="btnCount_Click" />

             <!-- Label -->
        <asp:Label ID="lblCount" runat="server"
            CssClass="label"
            Text="Count: 0"></asp:Label>
        </div>
    </form>
</body>
</html>
