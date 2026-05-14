<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_35_sort_listbox.aspx.cs" Inherits="Exam.practical_35_sort_listbox" %>

<!-- 35. Design a webpage with a ListBox of items. Add a Button that, when clicked, sorts the items in the ListBox alphabetically. -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sort Listbox Items</title>
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
        .lstitems {
            width: 100%;
            height: 150px;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .btn{
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
            background: #0f7a6e;
        }
         .result {
              margin-top: 15px;
             padding: 12px;
             background: #f1f3f6;
             border-radius: 8px;
             font-size: 18px;
             font-weight: bold;
             color: #333;
             display:block;
         }

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            
            <h2>Sort Listbox Items</h2>

            <!-- listbox-->
            <asp:ListBox ID="lstItems" runat="server" CssClass="lstitems">
                <asp:ListItem>Banana</asp:ListItem>
                <asp:ListItem>Apple</asp:ListItem>
                <asp:ListItem>Orange</asp:ListItem>
                <asp:ListItem>Grapes</asp:ListItem>
                </asp:ListBox>

            <!-- button-->
            <asp:Button ID="btnSort" runat="server" Text="Sort Items" CssClass="btn" OnClick="btnSort_Click" />

            <!-- result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
