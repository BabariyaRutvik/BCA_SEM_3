<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_19_MultiView.aspx.cs" Inherits="Exam.practical_19_MultiView" %>

<!-- 19.Develop a webpage with a MultiView control and two View controls. Implement "Next" and "Previous" buttons to navigate between the views.-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MultiView Example</title>
    <style>
        body{
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #00b09b, #96c93d);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container{
            background: white;
            width: 420px;
            padding: 30px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .view-box {
            padding: 20px;
            background: #f1f3f6;
            border-radius: 8px;
            margin-bottom: 20px;
            font-size: 18px;
            font-weight: bold;
        }
        .btn{

            padding: 10px 20px;
            margin: 15px 10px 0;
            background: #00b09b;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }
            .btn:hover {
                background: #009e8a;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>MultiView Example</h2>

            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                
                <!-- View 1 -->
                <asp:View ID="View1" runat="server">
                    <div class="view-box">

                        Welcome to View 1!
                    </div>


                    <asp:Button ID="btnNext" runat="server"
                    Text="Next"
                    CssClass="btn"
                    OnClick="btnNext_Click" />


                    </asp:View>


                <!-- view 2 -->
                 <asp:View ID="View2" runat="server">

                <div class="view-box">
                    Welcome to View 2
                </div>

                <asp:Button ID="btnPrevious" runat="server"
                    Text="Previous"
                    CssClass="btn"
                    OnClick="btnPrevious_Click" />

            </asp:View>
            </asp:MultiView>

        </div>
    </form>
</body>
</html>
