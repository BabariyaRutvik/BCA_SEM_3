<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBoxDropDown.aspx.cs" Inherits="Exam2026.ListBox_DropDownList" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>List box and DropDownList</title>
    <style>
        :root{
            --bg: #f3f4f6;
            --card: #ffffff;
            --muted: #6b7280;
            --accent: #2563eb;
            --accent-dark: #1e40af;
            --radius: 12px;
        }
        html,body{
            height:100%;
            margin:0;
            font-family: "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background: linear-gradient(180deg, #f7fafc 0%, var(--bg) 100%);
            color:#111827;
        }
        .page-wrap{
            min-height:100%;
            display:flex;
            align-items:center;
            justify-content:center;
            padding:40px 16px;
        }
        .card{
            width: 420px;
            background: var(--card);
            border-radius: var(--radius);
            box-shadow: 0 10px 30px rgba(2,6,23,0.08);
            padding:28px;
            border:1px solid rgba(15,23,42,0.04);
        }
        .card h2{
            margin:0 0 18px 0;
            text-align:center;
            font-size:20px;
            letter-spacing:0.2px;
        }
        .field{
            margin-bottom:14px;
        }
        label{
            display:block;
            font-size:13px;
            color:var(--muted);
            margin-bottom:8px;
        }
        select, .aspNetListBox{
            width:100%;
            padding:10px 12px;
            border-radius:8px;
            border:1px solid #e6e9ee;
            background:#fff;
            box-shadow: inset 0 1px 0 rgba(16,24,40,0.02);
            font-size:14px;
            color:#0f172a;
            box-sizing:border-box;
        }
        /* style the ListBox (multiple select) */
        select[multiple], .aspNetListBox[multiple]{
            height:140px;
            padding-top:8px;
        }
        .row{
            display:flex;
            gap:12px;
            align-items:center;
        }
        .btn{
            display:inline-block;
            width:100%;
            padding:10px 12px;
            border-radius:8px;
            border:none;
            background:var(--accent);
            color:#fff;
            font-weight:600;
            cursor:pointer;
            transition:background .15s ease, transform .06s ease;
            box-shadow: 0 6px 18px rgba(37,99,235,0.12);
        }
        .btn:hover{background:var(--accent-dark)}
        .result{
            margin-top:14px;
            padding:10px 12px;
            border-radius:8px;
            background:#f8fafc;
            color:#0f172a;
            font-size:14px;
            border:1px solid rgba(2,6,23,0.03);
        }
        @media (max-width:480px){
            .card{width:100%;padding:18px}
            select[multiple]{height:120px}
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrap">
            <div class="card">
                <h2>List box and DropDownList</h2>

                <div class="field">
                    <label for="lstProgrammingLanguages">Select Programming Languages</label>
                    <!-- ListBox showing the Programming languages -->
                    <asp:ListBox ID="lstProgrammingLanguages" runat="server" SelectionMode="Multiple" CssClass="aspNetListBox">
                        <asp:ListItem>Python</asp:ListItem>
                        <asp:ListItem>Java</asp:ListItem>
                        <asp:ListItem>Kotlin</asp:ListItem>
                        <asp:ListItem>HTML</asp:ListItem>
                        <asp:ListItem>CSS</asp:ListItem>
                    </asp:ListBox>
                </div>

                <div class="field">
                    <label for="ddlFrameworks">Select Framework</label>
                    <asp:DropDownList ID="ddlFrameworks" runat="server">
                        <asp:ListItem>DJango</asp:ListItem>
                        <asp:ListItem>Spring boot</asp:ListItem>
                        <asp:ListItem>Jetpack Compose</asp:ListItem>
                        <asp:ListItem>Bootstrap</asp:ListItem>
                        <asp:ListItem>Tailwind CSS</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="field">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn" />
                </div>

                <div class="result">
                    <asp:Literal ID="lblResult" runat="server"></asp:Literal>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
