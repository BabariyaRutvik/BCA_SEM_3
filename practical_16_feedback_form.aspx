<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_16_feedback_form.aspx.cs" Inherits="Exam.practical_16_feedback_form" %>

<!-- 16. Design a simple feedback form with a TextBox for comments and a Button to submit (no actual data storage needed).-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback Form</title>
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
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .input-box{
            width: 100%;
            height: 120px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            resize: none;
            font-size: 15px;
            margin-bottom: 15px;
        }
        .btn{
            width: 100%;
            padding: 12px;
            background: #ff6a00;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
          .btn:hover {
                background: #e65c00;
            }
        .result {
            margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-weight: bold;
            display: block;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Feedback Form</h2>


            <!-- feedback text -->
            <asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" Rows="5" Columns="40" Placeholder="Enter your feedback here..." CssClass="input-box"></asp:TextBox>

            <!-- Submit Button -->
        <asp:Button ID="btnSubmit" runat="server"
            Text="Submit Feedback"
            CssClass="btn"
            OnClick="btnSubmit_Click" />

        <!-- Result Label -->
        <asp:Label ID="lblResult" runat="server"
            CssClass="result">
        </asp:Label>
        </div>
    </form>
</body>
</html>
