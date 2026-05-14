<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_7_display_text.aspx.cs" Inherits="Exam.practical_7_display_text" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Text</title>
    <style>
        body{
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #a18cd1, #fbc2eb);
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
            width: 350px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h2{
            margin-bottom:20px;
            color:#333;
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
            background: #6a11cb;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
        }

        .btn:hover {
            background: #2575fc;
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

             <h2>Display Entered Text</h2>

        <!-- TextBox -->
        <asp:TextBox ID="txtInput" runat="server"
            CssClass="input-box"
            Placeholder="Enter something"></asp:TextBox>

        <!-- Button -->
        <asp:Button ID="btnShow" runat="server"
            Text="Show Text"
            CssClass="btn"
            OnClick="btnShow_Click" />

        <!-- Label -->
        <asp:Label ID="lblOutput" runat="server"
            CssClass="label"></asp:Label>
        </div>
    </form>
</body>
</html>
