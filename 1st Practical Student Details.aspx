<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1st Practical Student Details.aspx.cs" Inherits="Exam._1st_Practical_Student_Details" %>

<!-- 1.Develop a windows form is used for displaying the following detail.
        1. Student Name
        2. Student ID
        3. Student Location  -->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details</title>

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Main Card */
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            width: 380px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        /* Input fields */
        .input-box {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            transition: 0.3s;
        }

        .input-box:focus {
            border-color: #4facfe;
            outline: none;
            box-shadow: 0 0 5px rgba(79, 172, 254, 0.5);
        }

        /* Button */
        .submit-button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-button:hover {
            transform: scale(1.05);
        }

        /* Output */
        .result-label {
            margin-top: 20px;
            font-size: 15px;
            color: #333;
            background: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            display: block;
            line-height: 1.8;
            text-align: left;

            /* Fix text cutting */
            word-wrap: break-word;
            overflow-wrap: break-word;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Student Details</h2>

            <!-- Student ID -->
            <asp:TextBox ID="txtID" runat="server" CssClass="input-box" placeholder="Enter Student ID"></asp:TextBox>

            <!-- Student Name -->
            <asp:TextBox ID="txtName" runat="server" CssClass="input-box" placeholder="Enter Student Name"></asp:TextBox>

            <!-- Student Location -->
            <asp:TextBox ID="txtLocation" runat="server" CssClass="input-box" placeholder="Enter Student Location"></asp:TextBox>

            <!-- Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Show Details"
                CssClass="submit-button" OnClick="btnSubmit_Click" />

            <!-- Result -->
            <asp:Label ID="lblResult" runat="server" CssClass="result-label"></asp:Label>

        </div>
    </form>
</body>
</html>