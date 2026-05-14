<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practicaal_13_login.aspx.cs" Inherits="Exam.practicaal_13_login" %>

<!-- 13.Develop a State Management in ASP.NET used in
    password authentication and user authorizationthrough the session & Cookie.
    -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #36d1dc, #5b86e5);
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
            width: 350px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .input-box{
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }
        .btn{
            width: 100%;
            padding: 12px;
            background: #11998e;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn:hover{
            background: #38ef7d;
        }
        .result {
            margin-top: 15px;
            color: red;
            font-weight: bold;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>User Login</h2>


            <!--UserName-->
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input-box" Placeholder="Enter Your Name"></asp:TextBox>

            <!-- Password-->
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Enter Your Password"></asp:TextBox>


            <!-- button -->
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
 
            <!-- Result -->
        <asp:Label ID="lblResult" runat="server"
            CssClass="result"></asp:Label>
            </div>
    </form>
</body>
</html>
