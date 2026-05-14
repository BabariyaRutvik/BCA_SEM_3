<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_33_session_counter.aspx.cs" Inherits="Exam.practical_33_session_counter" %>

<!--33. Create a webpage that uses Session state to store the number of times a specific button has been clicked across different page visits within the same session. Display this count.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session Counter</title>
    <style>
        body{
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #11998e, #38ef7d);
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
        h2{
            margin-bottom:25px;
            color:#333;
        }
        .btn {
            width: 100%;
            padding: 12px;
            background: #11998e;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #0e7d74;
        }

        .result {
            display: block;
            margin-top: 20px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <!-- button -->
            <asp:Button ID="btnClickMe" runat="server" Text="Click Me" OnClick="btnClickMe_Click" CssClass="btn" />
            <br /><br />
           
            <!-- Result -->
            <asp:Label ID="lblCount" runat="server"
                CssClass="result">
            </asp:Label>
        </div>
    </form>
</body>
</html>
