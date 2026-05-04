<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBoxAndDropDownList.aspx.cs" Inherits="Exam2026.ListBoxAndDropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List box and DropDownList</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        .container {
            background-color: #fff;
            padding: 22px;
            border-radius: 8px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
            max-width: 420px;
            margin: 36px auto;
            border: 1px solid rgba(0,0,0,0.03);
        }
        .container h2 {
            text-align: center;
            color: #222;
            margin: 0 0 18px 0;
            font-size: 20px;
            font-weight: 600;
        }
            .container label {
                display: block;
                margin-bottom: 6px;
                font-size: 13px;
                color: #444;
            }
            .container select {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            .container select[multiple] {
                height: auto;
            }
            .btn {
                background-color: #007bff;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
             .btn:hover {
                background-color: #0056b3;
            }
            
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
n            <h2>List box and DropDownList</h2>
n
            <!-- ListBox showing the Programming languages -->
               <asp:Label ID="lblProgrammingLanguages" runat="server" Text="Select Programming Languages:"></asp:Label>
                       
            <asp:ListBox ID="lstProgrammingLanguages" runat="server" SelectionMode="Multiple">
                <asp:ListItem>Python</asp:ListItem>
                <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>Kotlin</asp:ListItem>
                <asp:ListItem>HTML</asp:ListItem>
                <asp:ListItem>CSS</asp:ListItem>
            </asp:ListBox>
n
n                <!-- DropDownList showing the Frameworks -->
n            <asp:Label ID="lblFrameworks" runat="server" Text="Select Framework:"></asp:Label>
n            <asp:DropDownList ID="ddlFrameworks" runat="server">
               <asp:ListItem>DJango</asp:ListItem>
                <asp:ListItem>Spring boot</asp:ListItem>
                <asp:ListItem>Jetpack Compose</asp:ListItem>
                <asp:ListItem>Bootstrap</asp:ListItem>
                <asp:ListItem>Tailwind CSS</asp:ListItem>
           
                </asp:DropDownList>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn"></asp:Button>
            <div class="form-row">
                <asp:Literal ID="lblResult" runat="server"></asp:Literal>
            </div>
        </div>
    </form>
</body>
</html>