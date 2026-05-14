<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practical4_Listbox_Dropdown.aspx.cs" Inherits="Exam.Practical4_Listbox_Dropdown" %>

<!--4. Design an Asp.NET Webpage that contain Listbox & Dropdownlist.-->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ListBox & DropdownList</title>

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
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 400px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .control {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #ff758c;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #e84363;
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

        <h2>Select Programming Language & Framework</h2>

        <!-- Dropdown -->
        <asp:DropDownList ID="ddlLanguages" runat="server" CssClass="control">
            <asp:ListItem Text="-- Select Language --" Value="" />
            <asp:ListItem Text="Kotlin" Value="Kotlin" />
            <asp:ListItem Text="Java" Value="Java" />
            <asp:ListItem Text="Python" Value="Python" />
        </asp:DropDownList>

        <!-- ListBox -->
        <asp:ListBox ID="lstFrameworks" runat="server" CssClass="control" SelectionMode="Multiple">
            <asp:ListItem Text="Jetpack Compose" Value="Jetpack Compose" />
            <asp:ListItem Text="Spring" Value="Spring" />
            <asp:ListItem Text="Django" Value="Django" />
        </asp:ListBox>

        <!-- Button -->
        <asp:Button ID="btnShow" runat="server"
            Text="Show Selection"
            CssClass="btn"
            OnClick="btnShow_Click" />

        <!-- Result -->
        <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>

    </div>
</form>
</body>
</html>