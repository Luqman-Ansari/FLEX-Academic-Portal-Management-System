<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseRegistration.aspx.cs" Inherits="CourseRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Course Registration</title>
    <link rel="shortcut icon" type="image/x-icon" href="shortcut.ico">
    <style>
        .ribbon {
            position: absolute;
            top: 0;
            left: 0;
            z-index: 1;
            position: fixed;
            top: 0;
            left: 0;
            width: 49px;
            height: 100%;
            background-color: blue;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .nav-button {
            margin-bottom: 10px;
            width: 30px;
            height: 30px;
            background-color: white;
            border: none;
            border-radius: 50%;
            cursor: pointer;
        }

        .nav-button:hover {
            background-color: lightgray;
        }

        .nav-button:focus {
            outline: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ribbon">
            <asp:Button ID="btnNav1" runat="server" CssClass="nav-button" Text="1" OnClick="btnNav1_Click" />
            <asp:Button ID="btnNav2" runat="server" CssClass="nav-button" Text="2" OnClick="btnNav2_Click" />
            <asp:Button ID="btnNav3" runat="server" CssClass="nav-button" Text="3" OnClick="btnNav3_Click" />
            <asp:Button ID="btnNav4" runat="server" CssClass="nav-button" Text="4" OnClick="btnNav4_Click" />
            <asp:Button ID="btnNav5" runat="server" CssClass="nav-button" Text="5" OnClick="btnNav5_Click" />
        </div>

    </form>
</body>
</html>
