<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_47_radio_button_choice.aspx.cs" Inherits="Exam.practical_47_radio_button_choice" %>

<!-- 47. Build a webpage with a series of RadioButtons offering different choices. Display the selected choice in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Radio Button Choice</title>
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

.radio-buttons {
    text-align: left;
    margin-bottom: 20px;
}

.radioOption {
    margin-bottom: 15px;
    font-size: 18px;
    color: #333;
}

.radioOption input {
    margin-right: 10px;
    transform: scale(1.2);
    cursor: pointer;
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
             <h2>Select Programming Language</h2>

            <div class="radio-buttons">
                <asp:RadioButton ID="rbKotlin" runat="server" GroupName="Languages" Text="Kotlin" CssClass="radioOption" />
                <asp:RadioButton ID="rbJava" runat="server" GroupName="Languages" Text="Java" CssClass="radioOption" />
                <asp:RadioButton ID="rbPython" runat="server" GroupName="Languages" Text="Python" CssClass="radioOption" />
                <asp:RadioButton ID="rbJavaScript" runat="server" GroupName="Languages" Text="JavaScript" CssClass="radioOption" />
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn" />
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
