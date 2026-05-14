<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_36_trim_text.aspx.cs" Inherits="Exam.practical_36_trim_text" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trim Text</title>

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
            background: white;
            padding: 30px;
            border-radius: 12px;
            width: 400px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h2 {
            margin-bottom: 25px;
            color: #333;
        }
        .btn{
             width: 100%;
            padding: 12px;
            background: #ff5e62;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover{
            background: #e0484d;
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
            word-wrap: break-word;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Trim Text</h2>

            <!-- TextBox for input -->
            <asp:TextBox ID="txtInput" runat="server" CssClass="input-box" TextMode="MultiLine" Rows="5" Placeholder="Enter text with leading and trailing spaces..."></asp:TextBox>
            <br /><br />
            <!-- Button to trim text -->
            <asp:Button ID="btnTrim" runat="server" Text="Trim Text" CssClass="btn" OnClick="btnTrim_Click" />
            <br /><br />
            <!-- Label to display result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
