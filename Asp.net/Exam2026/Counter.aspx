<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Counter.aspx.cs" Inherits="Exam2026.Counter" %>

<!-- 6. Implement a simple counter that increments each time a button is clicked.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Counter</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .btn {
            padding: 10px 20px;
            background: #ff5e62;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background: #ff9966;
        }
         .counter {
            font-size: 22px;
            font-weight: bold;
            margin-top: 20px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Simple Counter</h2>

             <!-- Button -->
            <asp:Button ID="btnCount" runat="server" Text="Click Me" CssClass="btn" OnClick="btnCount_Click" />

            <!-- Label -->
            <asp:Label ID="lblCounter" runat="server" CssClass="counter" Text="0"></asp:Label>
        </div>
    </form>
</body>
</html>
