<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_53_month_day.aspx.cs" Inherits="Exam.practical_53_month_day" %>

<!-- 53. Implement a webpage with a DropdownList of months. Display the number of days in the selected month (you can simplify by assuming a non-leap year).-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Month Days</title>
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
        .dropdown {
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
             font-weight:bold;
         }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>
                Month Days Display
            </h2>
            <asp:DropDownList ID="ddlMonths" runat="server" CssClass="dropdown">
                <asp:ListItem Text="January" Value="31"></asp:ListItem>
                <asp:ListItem Text="February" Value="28"></asp:ListItem>
                <asp:ListItem Text="March" Value="31"></asp:ListItem>
                <asp:ListItem Text="April" Value="30"></asp:ListItem>
                <asp:ListItem Text="May" Value="31"></asp:ListItem>
                <asp:ListItem Text="June" Value="30"></asp:ListItem>
                <asp:ListItem Text="July" Value="31"></asp:ListItem>
                <asp:ListItem Text="August" Value="31"></asp:ListItem>
                <asp:ListItem Text="September" Value="30"></asp:ListItem>
                <asp:ListItem Text="October" Value="31"></asp:ListItem>
                <asp:ListItem Text="November" Value="30"></asp:ListItem>
                <asp:ListItem Text="December" Value="31"></asp:ListItem>
                </asp:DropDownList>

            <!-- button -->
            <asp:Button ID="btnShowDays" runat="server" Text="Show Days" CssClass="btn" OnClick="btnShowDays_Click" />

            <!-- label to display result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
