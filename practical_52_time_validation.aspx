<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_52_time_validation.aspx.cs" Inherits="Exam.practical_52_time_validation" %>

<!-- 52. Design a webpage with a TextBox for entering a time in HH:MM format. Use a RegularExpressionValidator to ensure the format is correct.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Time Validation</title>
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
        }
        .btn {
            width: 100%;
            padding: 12px;
            background: #ff6f91;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background: #e55d87;
        }
        .result {
             display: block; 
             margin-top: 20px; 
             padding: 12px; 
             background: #f1f3f6; 
             border-radius: 8px; 
             font-weight:bold;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Time Validation</h2>
            <!-- TextBox for time input -->
            <asp:TextBox ID="txtTime" runat="server" CssClass="input-box" Placeholder="Enter time (HH:MM)"></asp:TextBox>
            <br />
            <!-- RegularExpressionValidator to validate time format -->
            <asp:RegularExpressionValidator ID="revTime" runat="server" ControlToValidate="txtTime"
                ErrorMessage="Invalid time format. Please enter in HH:MM format." ForeColor="Red"
                ValidationExpression="^(0[0-9]|1[0-9]|2[0-3]):([0-5][0-9])$"></asp:RegularExpressionValidator>

            <!-- Button -->
            <asp:Button ID="btnValidateTime" runat="server"
                Text="Validate Time"
                CssClass="btn"
                OnClick="btnValidateTime_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server"
                CssClass="result">
            </asp:Label>
        </div>
    </form>
</body>
</html>
