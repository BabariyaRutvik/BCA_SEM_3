<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_58_message_delayed.aspx.cs" Inherits="Exam.practical_58_message_delayed" %>

<!-- 58. Create a webpage with a TextBox for entering a short message. Add a Button that, when clicked, 
    displays the message character by character with a small delay (you might need basic JavaScript for this, but keep it simple). -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Message Delay Display</title>

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
            width: 450px;
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
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 16px;
            margin-bottom: 20px;
            box-sizing: border-box;
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
            min-height: 40px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }
    </style>

    <script>
        function displayMessage() {

            var text = document.getElementById('<%= txtMessage.ClientID %>').value;
            var label = document.getElementById('<%= lblMessage.ClientID %>');

            label.innerHTML = "";

            let i = 0;

            function typeCharacter() {
                if (i < text.length) {
                    label.innerHTML += text.charAt(i);
                    i++;
                    setTimeout(typeCharacter, 200);
                }
            }

            typeCharacter();

            return false;
        }
    </script>

</head>

<body>
    <form id="form1" runat="server">

        <div class="container">

            <h2>Message Display with Delay</h2>

            <!-- TextBox -->
            <asp:TextBox ID="txtMessage" runat="server"
                CssClass="input-box"
                Placeholder="Enter your message">
            </asp:TextBox>

            <!-- Button -->
            <asp:Button ID="btnShow" runat="server"
                Text="Display Message"
                CssClass="btn"
                OnClientClick="return displayMessage();" />

            <!-- Result -->
            <asp:Label ID="lblMessage" runat="server"
                CssClass="result">
            </asp:Label>

        </div>

    </form>
</body>
</html>
