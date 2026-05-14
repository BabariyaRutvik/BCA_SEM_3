<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prectical_3.aspx.cs" Inherits="Exam._3_Email_Validation" %>

<!-- 3. Build a webpage with a 
    TextBox for an email address and a Button.
    Use a RegularExpressionValidator to ensure the email format is valid. Display the validation result.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email Validation</title>
    <style>
        body {
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
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        
        .input-box {
            width: 100%;
            padding: 12px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #43cea2;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
        }

        .btn:hover {
            background: #2bbf90;
        }

        .error {
            color: red;
            font-size: 13px;
            margin-bottom: 10px;
            display: block;
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

            <h2>Email Validation</h2>

            <!-- input for email -->
           <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box"
            Placeholder="Enter your email" ValidationGroup="vg1"></asp:TextBox>

             <!-- Validator -->
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
             ControlToValidate="txtEmail"
             ErrorMessage="Invalid email format!"
             ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
             ForeColor="Red"
             ValidationGroup="vg1">
</asp:RegularExpressionValidator>

            <!-- button to trigger validation -->
            <asp:Button ID="btnValidate" runat="server"
                        Text="Validate Email"
                        CssClass="btn"
                        OnClick="btnValidate_Click"
                        ValidationGroup="vg1" />

            <!-- label to display result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>


        </div>
    </form>
</body>
</html>
