<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_39_checkbox_count.aspx.cs" Inherits="Exam.practical_39_checkbox_count" %>

<!-- 39. Build a webpage with a series of CheckBoxes representing 
different options. Display the total number of checked options in a Label. -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CheckBox Counter</title>

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

        .checkbox-group {
            text-align: left;
            margin-bottom: 20px;
            font-size: 18px;
        }

        .checkbox-group label {
            display: block;
            margin-bottom: 12px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #5b86e5;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #4a75d1;
        }

        .result {
            display: block;
            margin-top: 20px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="container">

            <h2>CheckBox Counter</h2>

            <!-- CheckBoxes -->
            <div class="checkbox-group">

                <asp:CheckBox ID="chkOption1" runat="server" Text="Option 1" />
                <br />

                <asp:CheckBox ID="chkOption2" runat="server" Text="Option 2" />
                <br />

                <asp:CheckBox ID="chkOption3" runat="server" Text="Option 3" />
                <br />

                <asp:CheckBox ID="chkOption4" runat="server" Text="Option 4" />

            </div>

            <!-- Button -->
            <asp:Button ID="btnCount" runat="server"
                Text="Count Checked Options"
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
