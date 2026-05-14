<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_14_RadioButtonList.aspx.cs" Inherits="Exam.practical_14_RadioButtonList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Favourite Programming Language</title>
    <style>
        body{
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #ff9966, #ff5e62);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container{
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 400px;
            text-align: center;
        }
        h2{
            margin-bottom: 20px;
            color: #333;
        }
        .rbl{
            text-align: left;
            margin-bottom: 20px;
            font-size: 18px;
        }
        .btn {
            width: 100%;
            padding: 12px;
            background: #ff5e62;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }
          .btn:hover {
                background: #ff9966;    
            }
           .result {
            margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-weight: bold;
            display:block;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Select Your Favourite Programming Language</h2>

            <asp:RadioButtonList ID="rblLanguages" runat="server" CssClass="rbl">
                <asp:ListItem Text="Kotlin" Value="Kotlin"></asp:ListItem>
                <asp:ListItem Text="Java" Value="Java"></asp:ListItem>
                <asp:ListItem Text="Python" Value="Python"></asp:ListItem>
                <asp:ListItem Text="JavaScript" Value="JavaScript"></asp:ListItem>
                <asp:ListItem Text="HTML" Value="HTML"></asp:ListItem>
                </asp:RadioButtonList>


            <!-- Button -->
            <asp:Button ID="btnShow" runat="server"
                Text="Show Selection"
                CssClass="btn"
                OnClick="btnShow_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server"
                CssClass="result"></asp:Label>


        </div>
    </form>
</body>
</html>
