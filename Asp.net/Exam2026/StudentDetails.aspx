<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="Exam2026.StudentDetails" %>

<!--  1. Develop a windows form is used for displaying the following details:
1. Student Name
2. Student ID
3. Student Location-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details</title>


    <style>
        /* Page / container */
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

        label.field-label {
            display: block;
            margin-bottom: 6px;
            font-size: 13px;
            color: #444;
        }

        /* Inputs (applies to ASP.NET TextBox rendered <input type="text">) */
        input[type="text"],
        .txt {
            width: 100%;
            padding: 11px 12px;
            margin: 0 0 10px 0;
            border: 1px solid #d0d7de;
            border-radius: 6px;
            font-size: 14px;
            color: #2b2b2b;
            box-sizing: border-box;
            transition: box-shadow .15s ease, border-color .15s ease;
            background-color: #fff;
        }

        input[type="text"]::placeholder,
        .txt::placeholder {
            color: #9aa4ad;
        }

        input[type="text"]:focus,
        .txt:focus {
            outline: none;
            border-color: #0078d4;
            box-shadow: 0 4px 12px rgba(0, 120, 212, 0.08);
        }

        /* Button */
        .btn,
        input[type="submit"],
        button {
            display: inline-block;
            width: 100%;
            padding: 12px;
            margin-top: 12px;
            background-color: #0078d4;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 15px;
            font-weight: 600;
            text-align: center;
            box-shadow: 0 6px 14px rgba(0, 120, 212, 0.14);
            transition: transform .06s ease, background-color .12s ease, box-shadow .12s ease;
        }

        .btn:hover,
        input[type="submit"]:hover,
        button:hover {
            background-color: #005a9e;
        }

        .btn:active,
        input[type="submit"]:active,
        button:active {
            transform: translateY(1px);
        }

        /* Result label */
        .result,
        .result[role="status"] {
            display: block;
            margin-top: 12px;
            padding: 10px 12px;
            border-radius: 6px;
            font-size: 14px;
            min-height: 28px;
            line-height: 1.2;
            background: #f4fbff;
            color: #05375a;
            border-left: 4px solid #0078d4;
            box-sizing: border-box;
        }

        /* Small screens */
        @media (max-width: 480px) {
            .container {
                margin: 20px;
                padding: 16px;
            }
            h2 {
                font-size: 18px;
            }
            input[type="text"],
            .txt {
                padding: 10px;
            }
            .btn {
                padding: 11px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <!-- Student Details Form -->
            <h2>Student Details</h2>

            <div class="form-row">
                <label class="field-label" for="txtStudentName">Student Name</label>
                <!-- Student Name -->
                <asp:TextBox ID="txtStudentName" runat="server" CssClass="txt" Placeholder="Student Name"></asp:TextBox>
            </div>

            <div class="form-row">
                <label class="field-label" for="txtStudentID">Student ID</label>
                <!-- Student ID -->
                <asp:TextBox ID="txtStudentID" runat="server" CssClass="txt" Placeholder="Student ID"></asp:TextBox>
            </div>

            <div class="form-row">
                <label class="field-label" for="txtStudentLocation">Student Location</label>
                <!-- Student Location -->
                <asp:TextBox ID="txtStudentLocation" runat="server" CssClass="txt" Placeholder="Student Location"></asp:TextBox>
            </div>

            <!-- button -->
            <asp:Button ID="btnSubmit" CssClass="btn" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

            <!-- text lebel -->
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>

        </div>
    </form>
</body>
</html>
