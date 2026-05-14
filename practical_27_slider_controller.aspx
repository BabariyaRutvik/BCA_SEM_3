<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_27_slider_controller.aspx.cs" Inherits="Exam.practical_27_slider_controller" %>

<!-- 27. Implement a webpage with a Slider control (if available in your control library) to select a numerical value and display the selected value in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Slider Controller</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
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

        .slider {
            width: 100%;
            margin-bottom: 20px;
        }

        .result {
            display: block;
            margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
    </style>
    <script>
        function updateLabel(value) {
            document.getElementById('<%= lblValue.ClientID %>').innerHTML =
                "Selected Value: " + value;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Slider Controller</h2>

            <!-- Slider control -->
             <asp:TextBox ID="txtSlider" runat="server"
                TextMode="Range"
                Min="0"
                Max="100"
                Text="50"
                CssClass="slider"
                oninput="updateLabel(this.value)">
            </asp:TextBox>

            <asp:Label ID="lblValue" runat="server"
                CssClass="result"
                Text="Selected Value: 50">
            </asp:Label>
        </div>
    </form>
</body>
</html>
