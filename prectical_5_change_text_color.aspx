<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prectical_5_change_text_color.aspx.cs" Inherits="Exam.prectical_5_change_text_color" %>

<!-- 5.Create a button that, when clicked, changes the text of a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Label Text</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
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
            margin-bottom: 20px;
            color: #333;
        }
        .btn{
            width: 100%;
            padding: 12px;
            background: #4facfe;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
        }
        .btn:hover {
            background: #00f2fe;
        }
       .label {
            display: block;
            margin-top: 20px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Change Label Text</h2>

             <!-- Button -->
        <asp:Button ID="btnChange" runat="server"
            Text="Click Me"
            CssClass="btn"
            OnClick="btnChange_Click" />

        <!-- Label -->
        <asp:Label ID="lblMessage" runat="server"
            CssClass="label"
            Text="Initial Text"></asp:Label>
        </div>
    </form>
</body>
</html>
