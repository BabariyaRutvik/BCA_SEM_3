<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_29_listbox_files.aspx.cs" Inherits="Exam.practical_29_listbox_files" %>

<!-- 29. Develop a webpage with a ListBox displaying a list of filenames. Add a Button that, when clicked, displays the number of files in the ListBox in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Counter</title>
    <style>
        body{
             font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #11998e, #38ef7d);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container{
            background: white;
            padding: 30px;
            border-radius: 12px;
            width: 400px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h2{
            margin-bottom:25px;
            color:#333;

        }
        .lstfiles{
            width:100%;
            height:150px;
            padding:12px;
            border:1px solid #ccc;
            border-radius:6px;
            margin-bottom:15px;
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
        .btn:hover{
            background: #0f7a6e;
        }
        .result{
             display: block;
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

            <h2>File List Counter</h2>

            <!-- listbox -->
            <asp:ListBox ID="ListBoxFiles" runat="server" SelectionMode="Multiple" CssClass="lstfiles">
                
                <asp:ListItem>Document.pdf</asp:ListItem>
                <asp:ListItem>Image.png</asp:ListItem>
                <asp:ListItem>Resume.docx</asp:ListItem>
                <asp:ListItem>Music.mp3</asp:ListItem>
                <asp:ListItem>Video.mp4</asp:ListItem>
                </asp:ListBox>

             <!-- Button -->
            <asp:Button ID="btnCount" runat="server"
                Text="Count Files"
                CssClass="btn"
                OnClick="btnCount_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server"
                CssClass="result">
            </asp:Label>
        </div>
    </form>
</body>
</html>
