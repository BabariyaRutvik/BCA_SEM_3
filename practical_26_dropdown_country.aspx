<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_26_dropdown_country.aspx.cs" Inherits="Exam.practical_26_dropdown_country" %>

<!-- 26. Create a webpage with a DropDownList containing a list of countries. Add a Button that, when clicked, displays the selected country in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Country Selection</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
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
            margin-bottom: 20px;
            color: #333;
        }
        .input-box {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .btn {
             width: 100%;
            padding: 12px;
            background: #185a9d;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background: #14497d;
        }
        .LblCountry {
             margin-top: 15px; 
            padding: 12px; 
            background: #f1f3f6; 
            border-radius: 8px; 
            font-size: 18px; 
            font-weight: bold; 
            color: #333;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Select a Country</h2>
            <asp:DropDownList ID="ddlCountries" runat="server" CssClass="input-box">
                <asp:ListItem Value="India">United States</asp:ListItem>
                <asp:ListItem Value="UK">United Kingdom</asp:ListItem>
                <asp:ListItem Value="USA">India</asp:ListItem>
                <asp:ListItem Value="Australia">Australia</asp:ListItem>
                <asp:ListItem Value="Canada">Canada</asp:ListItem>
            </asp:DropDownList>

            <br /><br />
            <asp:Button ID="btnShowCountry" runat="server" Text="Show Selected Country" OnClick="btnShowCountry_Click" CssClass="btn" />

            <br /><br />
            <asp:Label ID="lblSelectedCountry" runat="server" Font-Bold="True" CssClass="LblCountry"></asp:Label>
        </div>
    </form>
</body>
</html>
