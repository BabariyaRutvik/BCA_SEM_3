<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Odd Even Number.aspx.cs" Inherits="Exam2026.Odd_Even_Number" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Odd Even Number</title>

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
       h2 {
            text-align: center;
            color: #222;
            margin: 0 0 18px 0;
            font-size: 20px;
            font-weight: 600;
        }
        .form-row {
            margin-bottom: 10px;
        }
        .container label.field-label {
            display: block;
            margin-bottom: 6px;
            font-size: 13px;
            color: #444;
        }
        /* Inputs (applies to ASP.NET TextBox rendered <input type="text">) */
        .container input[type="text"],
        .container input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
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
        .result {
            font-size: 16px;
            color: #333;
            margin-top: 10px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Even Or Odd Number</h2>

            <div class="form-row">
                <label class="field-label" for="txtNumber">Enter a number:</label>
                <asp:TextBox ID="txtNumber" runat="server" CssClass="txt"></asp:TextBox>
            </div>


            <!-- button -->
            <div class="form-row">
                <asp:Button ID="btnCheck" runat="server" Text="Check" OnClick="btnCheck_Click" CssClass="btn"></asp:Button>

              </div>

            <div class="form-row">
                <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
