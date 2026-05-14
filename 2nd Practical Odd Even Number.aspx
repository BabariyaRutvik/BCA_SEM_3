<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2nd Practical Odd Even Number.aspx.cs" Inherits="Exam._2nd_Practical_Odd_Even_Number" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Odd Even Number</title>
    <style>
        body{
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
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
        .input-box:focus{
            border-color: #667eea;
            outline: none;
            box-shadow: 0 0 5px rgba(102,126,234,0.5);
        }
        .btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            border: none;
            border-radius: 6px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn:hover{
            transform: scale(1.05);
        }
         .result {
    margin-top: 15px;
    padding: 12px;
    background: #f1f3f6;
    border-radius: 8px;
    font-size: 16px;
    font-weight: bold;
    color: #333;
    position: static;  
    display: block;
    width: 100%;
    text-align: center;
}




    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Odd Even Number</h2>

             <!-- Input -->
            <asp:TextBox ID="txtNumber" runat="server" CssClass="input-box"
                placeholder="Enter a number"></asp:TextBox>

            <!-- Button -->
            <asp:Button ID="btnCheck" runat="server" Text="Check"
                CssClass="btn" OnClick="btnCheck_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
