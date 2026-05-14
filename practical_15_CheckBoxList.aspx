<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_15_CheckBoxList.aspx.cs" Inherits="Exam.practical_17_CheckBoxList" %>

<!-- 15. Build a webpage with a CheckBoxList for users to select their hobbies. Display the selected hobbies in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Favourite Hobbies</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #36d1dc, #5b86e5);
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
        .checkbox-list {
            text-align: left;
            margin-bottom: 20px;
            font-size: 18px;
        }
        .btn{
            width: 100%;
            padding: 12px;
            background: #0072ff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background: #005ce6;
        }

        .result {
            margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-weight: bold;
            display:block;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <!-- checkbox list-->
            <asp:CheckBoxList ID="chkHobbies" runat="server" CssClass="checkbox-list">
                <asp:ListItem>Reading</asp:ListItem>
                <asp:ListItem>Playing Cricket</asp:ListItem>
                <asp:ListItem>Watching Cricket</asp:ListItem>
                <asp:ListItem>Music</asp:ListItem>

                </asp:CheckBoxList>


            <!-- Button -->
        <asp:Button ID="btnShow" runat="server"
            Text="Show Hobbies"
            CssClass="btn"
            OnClick="btnShow_Click" />

        <!-- Result -->
        <asp:Label ID="lblResult" runat="server"
            CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
