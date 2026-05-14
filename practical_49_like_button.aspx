<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_49_like_button.aspx.cs" Inherits="Exam.practical_49_like_button" %>

<!-- 48. Implement a webpage with a simple "Like" button. Use ViewState to keep track of the number of likes and display the count.-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Like Button</title>
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
        .btn {
            width: 100%;
            padding: 12px;
            background: #4caf50;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background: #45a049;
        }
        .result {
            display: block;
            margin-top: 20px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Like Button</h2>

            <!-- like button -->
            <asp:Button ID="btnLike" runat="server" Text="Like" CssClass="btn" OnClick="btnLike_Click" />

            <!-- like count label -->
            <asp:Label ID="lblLikeCount" runat="server" CssClass="result"></asp:Label>
            </div>
        </form>
    </body>
</html>
