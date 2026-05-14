<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_45_dropdownn_sum.aspx.cs" Inherits="Exam.practical_45_dropdownn_sum" %>

<!-- 45. Implement a webpage with a DropdownList containing numbers. Display the sum of all selected numbers in a Label (allow single selection for simplicity).-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDown Number Sum</title>
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
            font-size: 18px; 
            font-weight: bold; 
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>DropDown Number Sum</h2>

            <!-- drop down list for numbers -->
            <asp:DropDownList ID="ddlNumbers" runat="server" CssClass="dropdown">
                    
                <asp:ListItem Text="Select Number" Value="0"></asp:ListItem>
                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                <asp:ListItem Text="20" Value="20"></asp:ListItem>
                <asp:ListItem Text="30" Value="30"></asp:ListItem>
                <asp:ListItem Text="40" Value="40"></asp:ListItem>
                <asp:ListItem Text="50" Value="50"></asp:ListItem>

                </asp:DropDownList>

            <!-- button to calculate sum -->
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate Sum" CssClass="btn" OnClick="btnCalculate_Click" />

            <!-- label to display result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
