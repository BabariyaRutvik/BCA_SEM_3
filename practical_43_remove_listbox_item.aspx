<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_43_remove_listbox_item.aspx.cs" Inherits="Exam.practical_43_remove_listbox_item" %>

<!-- 43. Build a webpage with a ListBox. Add a Button that, when clicked, removes the currently selected item from the ListBox.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Remove ListBox Item</title>
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
        .listbox {
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
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Remove ListBox Item</h2>
            <asp:ListBox ID="lstfiles" runat="server" CssClass="listbox">
                <asp:ListItem>Document.pdf</asp:ListItem>
                <asp:ListItem>Image.png</asp:ListItem>
                <asp:ListItem>Resume.docx</asp:ListItem>
                <asp:ListItem>Music.mp3</asp:ListItem>
                <asp:ListItem>Video.mp4</asp:ListItem>
            </asp:ListBox>

            <asp:Button ID="btnRemove" runat="server" Text="Remove Selected Item" CssClass="btn" OnClick="btnRemove_Click" />


            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
