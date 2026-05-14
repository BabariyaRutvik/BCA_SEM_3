<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_11_age_RangeValidator.aspx.cs" Inherits="Exam.praactical_11_age_RangeValidator" %>

<!--11. Implement a webpage with a TextBox for 
    age input. Use a RangeValidator to ensure the 
    age is within a reasonable range (e.g., 0-120). Display the validation result.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Age Validation</title>
    <style>
        body{
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
            width: 350px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .input-box{
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-bottom: 5px;
        }
        .error {
            color: red;
            font-size: 13px;
            display: block;
            margin-bottom: 10px;
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
            margin-top: 15px;
            padding: 12px;
            background: #f1f3f6;
            border-radius: 8px;
            font-weight: bold;
            text-align: center;
            display: none;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Age Validation</h2>


            <!-- Age Input -->
            <asp:TextBox ID="txtAge" runat="server" CssClass="input-box" Placeholder="Enter your age"></asp:TextBox>

            <!-- Required Field Validator -->
             <asp:RequiredFieldValidator
                 ID="rfvAge" runat="server"
                 ControlToValidate="txtAge"
                 ErrorMessage="Age is required!"
                 CssClass="error"
                 ForeColor="Red"
                 Display="Dynamic"
                 ValidationGroup="vg1"></asp:RequiredFieldValidator>

            <!-- Range Validator -->
            <asp:RangeValidator
                ID="rvAge" runat="server"
                ControlToValidate="txtAge"
                MinimumValue="0"
                MaximumValue="120"
                Type="Integer"
                ErrorMessage="Age must be between 0 and 120!"
                CssClass="error"
                ForeColor="Red"
                Display="Dynamic"
                ValidationGroup="vg1"></asp:RangeValidator>

             <!-- Button -->
        <asp:Button ID="btnValidate" runat="server"
            Text="Validate Age"
            CssClass="btn"
            OnClick="btnValidate_Click"
            ValidationGroup="vg1" />

        <!-- Result -->
        <asp:Label ID="lblResult" runat="server"
            CssClass="result">
        </asp:Label>


            
        </div>
    </form>
</body>
</html>
