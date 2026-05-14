<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_48_number_check_po_na_zero.aspx.cs" Inherits="Exam.practical_48_number_check_po_na_zero" %>

<!--48. Design a webpage with a TextBox for entering a number. Add a Button that, when clicked, determines if the number is positive, negative, or zero and displays the result. -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Positive , Negative and Zero Number</title>
    <style>
      body {
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #89f7fe, #66a6ff);
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

.input-box {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 16px;
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
    font-size: 18px;
    font-weight: bold;
    color: #333;
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Number Chacker</h2>

            <!-- number input -->
            <asp:TextBox ID="txtNumber" runat="server" CssClass="input-box" placeholder="Enter a number"></asp:TextBox>

            <!-- check button -->
            <asp:Button ID="btnCheck" runat="server" Text="Check Number" CssClass="btn" OnClick="btnCheck_Click" />

            <!-- result label -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
