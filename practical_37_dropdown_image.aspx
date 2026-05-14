<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical_37_dropdown_image.aspx.cs" Inherits="Exam.practical_37_dropdown_image" %>

<!-- 37. Create a webpage with a DropdownList of image filenames. When an image is selected, display that image using an Image control. -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image Dropdown</title>
    <style>
     body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
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
            width: 420px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .dropdown {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            margin-bottom: 20px;
            box-sizing: border-box;
            outline: none;
        }

        .dropdown:focus {
            border-color: #185a9d;
            box-shadow: 0 0 5px rgba(24,90,157,0.4);
        }

        .image-control {
            margin-top: 20px;
        }

        .image_style {
            width: 300px;
            height: 200px;
            border-radius: 10px;
            border: 2px solid #ddd;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            transition: transform 0.3s ease;
            object-fit: cover;
        }

        .image_style:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <!-- dropdown -->
            <asp:DropDownList ID="ddlImages" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlImages_SelectedIndexChanged">
                <asp:ListItem Text="Select an image" Value="" />
                <asp:ListItem Text="Image 1" Value="img1.jpg" />
                <asp:ListItem Text="Image 2" Value="img2.jpg" />
                <asp:ListItem Text="Image 3" Value="img_3.jpg" />


        
            
               
            </asp:DropDownList>


            <!-- image control -->
            <div class="image-control">

                
                <asp:Image ID="imgDisplay" runat="server" Width="300px" Height="200px"  CssClass="image_style"/>
            </div>
        </div>

    </form>
</body>
</html>
