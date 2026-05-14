<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_41_progressBar.aspx.cs" Inherits="Exam.practical_41_progressBar" %>

<!-- 41. Implement a webpage with a simple progress bar (if available in your control library) and a Button. Clicking the button should simulate progress by increasing the progress bar's value.-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Progress Bar Example</title>
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
        .progress-container {
            width: 100%;
            background-color: #f1f3f6;
            border-radius: 8px;
            overflow: hidden;
            margin-bottom: 20px;
        }
        .progress-bar {
            height: 30px;
            width: 0%;
            background-color: #4caf50;
            transition: width 0.3s ease-in-out;
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

            <h2>Progress Bar Example</h2>

            <div class="progress-container">

              <div class="progress-bar"
                    id="progressBar"
                    runat="server">
                </div>

            </div>


            <!-- button-->
            <asp:Button ID="btnStart" runat="server" Text="Increase ProgressBar" OnClick="btnIncrease_Click" CssClass="btn" />


            <!-- label-->
            <asp:Label ID="lblProgress" runat="server" Text="0%" CssClass="result"></asp:Label>



        </div>
    </form>
</body>
</html>
