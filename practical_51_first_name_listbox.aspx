<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_51_first_name_listbox.aspx.cs" Inherits="Exam.practical_51_first_name_listbox" %>

<!-- 51. Build a webpage with a ListBox of names. Add a Button that, when clicked, displays the first name in the list in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>First Name Display</title>
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
            width: 400px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h2 {
            margin-bottom: 25px;
            color: #333;
        }
        .input {
            width: 100%;
            height: 150px;
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
            <h2>First Name Display</h2>
            <!-- ListBox for names -->
            <asp:ListBox ID="lstNames" runat="server" CssClass="input">
                <asp:ListItem>Rutvik</asp:ListItem>
                <asp:ListItem>Dhaval</asp:ListItem>
                <asp:ListItem>Jayraj</asp:ListItem>
                <asp:ListItem>Bhavin</asp:ListItem>
            </asp:ListBox>
            <!-- Button to display the first name -->
            <asp:Button ID="btnShowFirstName" runat="server" Text="Show First Name" CssClass="btn" OnClick="btnShowFirstName_Click" />
            <!-- Label to display the result -->
            <asp:Label ID="lblFirstName" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
