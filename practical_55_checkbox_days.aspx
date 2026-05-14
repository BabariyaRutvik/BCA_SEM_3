<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_55_checkbox_days.aspx.cs" Inherits="Exam.practical_55_checkbox_days" %>

<!-- 55. Build a webpage with a series of CheckBoxes representing days of the week. Display the names of the selected days in a Label.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkbox Days Selector</title>
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
        .check-box_group {
            text-align: left;
            margin-bottom: 20px;
        }
        .checkboxOption {
            margin-bottom: 15px;
            font-size: 18px;
            color: #333;
        }
        .checkboxOption input {
            margin-right: 10px;
            transform: scale(1.2);
            cursor: pointer;
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
             font-weight:bold;
         }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Select Days</h2>

            <div class="check-box_group">

                <asp:CheckBox ID="chkMonday" runat="server" Text="Monday" CssClass="checkboxOption" />
                <br /> <br />

                <asp:CheckBox ID="chkTuesday" runat="server" Text="Tuesday" CssClass="checkboxOption" />
                <br /> <br />
                <asp:CheckBox ID="chkWednesday" runat="server" Text="Wednesday" CssClass="checkboxOption" />
                <br /> <br />
                <asp:CheckBox ID="chkThursday" runat="server" Text="Thursday" CssClass="checkboxOption" />
                <br /> <br />
                <asp:CheckBox ID="chkFriday" runat="server" Text="Friday" CssClass="checkboxOption" />
                <br /> <br />
                <asp:CheckBox ID="chkSaturday" runat="server" Text="Saturday" CssClass="checkboxOption" />
                <br /> <br />
                <asp:CheckBox ID="chkSunday" runat="server" Text="Sunday" CssClass="checkboxOption" />
            </div>
               
             <!-- Button -->
            <asp:Button ID="btnShow" runat="server"
                Text="Show Selected Days"
                CssClass="btn"
                OnClick="btnShow_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server"
                CssClass="result">
            </asp:Label>
        </div>
    </form>
</body>
</html>
