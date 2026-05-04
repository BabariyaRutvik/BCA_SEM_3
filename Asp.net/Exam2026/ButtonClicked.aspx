<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonClicked.aspx.cs" Inherits="Exam2026.ButtonClicked" %>

<!-- 5. Create a button that, when clicked, changes the text of a Label.-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Label Text</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        .container {
            background-color: #fff;
            padding: 22px;
            border-radius: 8px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
            max-width: 420px;
            margin: 36px auto;
            border: 1px solid rgba(0,0,0,0.03);
        }
        h2 {
            text-align: center;
            color: #222;
            margin: 0 0 18px 0;
            font-size: 20px;
            font-weight: 600;
        }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .label-text {
            display: block;
            margin-top: 20px;
            font-size: 16px;
            color: #444;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

             <h2>Change Label Text</h2>

            <!-- Button -->
            <asp:Button ID="btnChange" runat="server" Text="Click Me" CssClass="btn" OnClick="btnChange_Click" />

            <!-- Label -->
            <asp:Label ID="lblMessage" runat="server" CssClass="label-text" Text="Original Text"></asp:Label>
        </div>
    </form>
</body>
</html>
