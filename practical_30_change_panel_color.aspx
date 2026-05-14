<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_30_change_panel_color.aspx.cs" Inherits="Exam.practical_30_change_panel_color" %>

<!-- 30. Build a webpage with a TextBox for entering a color name (e.g., in hexadecimal format). Add a Button to change the background color of a Panel to that hexadecimal color. -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Panel color</title>
    <style>
        body{
              font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #8e2de2, #4a00e0);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container{
            background: white;
            padding: 30px;
            border-radius: 12px;
            width: 420px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
         h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .input-box {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-bottom: 15px;
            font-size: 16px;
            box-sizing: border-box;
        }
         .btn {
            width: 100%;
            padding: 12px;
            background: #4a00e0;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #3700b3;
        }

        .panel-box {
            width: 100%;
            height: 150px;
            background: #f1f3f6;
            border-radius: 10px;
            margin-top: 20px;
            border: 2px solid #ccc;
        }

        .result {
            display: block;
            margin-top: 15px;
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Change Panel Color</h2>

            <!-- text box-->
            <asp:TextBox ID="textColor" runat="server"
               CssClass="input-box" placeholder="Enter color (e.g., #ff5733)"></asp:TextBox>

            <!-- button -->
            <asp:Button ID="btnChange" runat="server"
                Text="Change Panel Color" CssClass="btn" OnClick="btnChange_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server"
                CssClass="result">
            </asp:Label>

            <!-- Panel -->
            <asp:Panel ID="pnlColor" runat="server"
                CssClass="panel-box">
            </asp:Panel>


        </div>
    </form>
</body>
</html>
