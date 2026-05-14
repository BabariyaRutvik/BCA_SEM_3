<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_17_image_control.aspx.cs" Inherits="Exam.practical_17_image_control" %>

<!--17. Implement a webpage with an Image control. Add a Button that, when clicked, changes the image displayed.-->
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image Control</title>
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
        .image-box{
            width: 250px;
            height: 250px;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .btn{
            width: 100%;
            padding: 12px;
            background: #ff6a00;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
          .btn:hover {
                background: #e65c00;
            }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Image Control Example</h2>

            <!-- image control -->
            <asp:Image ID="ImageDisplay" CssClass="image-box" runat="server" ImageUrl="~/img1.jpg" Width="300px" Height="200px" />
            <br /><br />
            <!-- button to change image -->
            <asp:Button ID="btnChangeImage" runat="server" Text="Change Image" CssClass="btn" OnClick="btnChangeImage_Click" />
        </div>
    </form>
</body>
</html>
