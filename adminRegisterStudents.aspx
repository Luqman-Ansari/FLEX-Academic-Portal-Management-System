<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminRegisterStudents.aspx.cs" Inherits="adminRegisterStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register New People</title>
    <link rel="shortcut icon" type="image/x-icon" href="shortcut.ico">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="flex.ico">
    <link rel="stylesheet" href="front-end/css/gridView.css">
    <link rel="stylesheet" href="front-end/css/faculty1.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

</head>
<body>

    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
        <a class="navbar-brand" href="#">
            <img src="flex.ico" width="30" height="30" alt="FLEX">FLEX</a>
        <button class="navbar-toggler btn btn-secondary" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="AdminView.aspx">Home<span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="offerCourses.aspx">Courses Offered</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="adminRegisterStudents.aspx">Register New Person</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin_register_people.aspx">Register Course to Student</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="FacultyAllocation.aspx">Allocate Course to Teacher</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="non-navbar">
        <form id="form1" runat="server">
            <div style="height: 150px; margin-left: 63px; font-size: 30px; width: 1116px;">
                <strong>
                    <div>
                        <asp:Label ID="Label3" runat="server" Text="Register New Person: "></asp:Label>
                    </div>
                </strong>
                <div>
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" Height="22px" Style="font-weight: 700" Text="Enter Person Details "></asp:Label>
                </div>
                <div style="display: flex; flex-direction: row;">
                    <div style="margin-right: 10px; height: 28px; display: flex; flex-direction: column">
                        <label for="txtCNIC" style="font-size: 16px;">CNIC:</label>
                        <asp:TextBox ID="txtCNIC" runat="server" CssClass="form-control" Style="font-size: 12px; height: 25px"></asp:TextBox>
                        <asp:Label ID="Ecnic" runat="server" Style="font-size: 13px" Text="" ForeColor="#0FF3300"></asp:Label>
                    </div>

                    <div style="margin-right: 10px; display: flex; flex-direction: column">
                        <label for="txtFirstName" style="font-size: 16px;">First Name:</label>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Style="height: 25px; font-size: 12px;"></asp:TextBox>
                        <asp:Label ID="eFname" runat="server" Style="font-size: 13px" Text="" ForeColor="#0FF3300"></asp:Label>
                    </div>

                    <div style="margin-right: 10px; display: flex; flex-direction: column">
                        <label for="txtLastName" style="font-size: 16px;">Last Name:</label>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Style="font-size: 12px; height: 25px"></asp:TextBox>
                        <asp:Label ID="eLname" runat="server" Style="font-size: 13px" Text="" ForeColor="#0FF3300"></asp:Label>
                    </div>

                    <div style="margin-right: 10px; display: flex; flex-direction: column">
                        <label for="txtDOB" style="font-size: 16px;">Date of Birth:</label>
                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control " Style="font-size: 12px; height: 25px"></asp:TextBox>
                        <asp:Label ID="eDob" runat="server" Style="font-size: 13px" Text="" ForeColor="#0FF3300"></asp:Label>
                    </div>

                    <div style="margin-right: 10px; display: flex; flex-direction: column">
                        <label for="txtPhoneNo" style="font-size: 16px;">Phone No:</label>
                        <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control " Style="font-size: 12px; height: 25px"></asp:TextBox>
                        <asp:Label ID="ePhone" runat="server" Style="font-size: 13px" Text="" ForeColor="#0FF3300"></asp:Label>
                    </div>

                    <div style="margin-right: 10px; display: flex; flex-direction: column">
                        <label for="txtEmail" style="font-size: 16px;">Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Style="font-size: 12px; height: 25px"></asp:TextBox>
                        <asp:Label ID="eEmail" runat="server" Style="font-size: 13px" Text="" ForeColor="#0FF3300"></asp:Label>
                    </div>

                </div>

            </div>
            <div style="margin-top: 10px; margin-left: 68px">
                <div style="display: flex; flex-direction: row;">
                    <div style="margin-right: 10px; height: 28px; display: flex; flex-direction: column">
                        <label for="txtuser" style="font-size: 16px;">Username:</label>
                        <asp:TextBox ID="TextUser" runat="server" CssClass="form-control" Style="font-size: 12px; height: 25px;"></asp:TextBox>
                        <asp:Label ID="eUser" runat="server" Style="font-size: 13px" Text="" ForeColor="#0FF3300"></asp:Label>
                    </div>

                    <div style="margin-right: 10px; display: flex; flex-direction: column">
                        <label for="txtFirstName" style="font-size: 16px;">Password:</label>
                        <asp:TextBox ID="TextPass" runat="server" CssClass="form-control" Style="font-size: 12px; height: 25px;"></asp:TextBox>
                        <asp:Label ID="ePass" runat="server" Style="font-size: 13px" Text="" ForeColor="#0FF3300"></asp:Label>
                    </div>


                    <div style="margin-top: 18px">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="ddlOptions" style="font-size: 16px;">Role:</label>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlOptions" runat="server" CssClass="form-control" Style="font-size: 12px;">
                                    <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                                    <asp:ListItem Text="Faculty" Value="Faculty"></asp:ListItem>
                                    <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-outline-secondary btn-light input-group-append" Width="100px" Height="35px" OnClick="btnRegister_Click" />
                            </div>
                        </div>
                        <asp:Label ID="error" runat="server" Text="" Style="font-size: 13px; margin-left: 10px" ForeColor="#0FF3300"></asp:Label>
                    </div>



                </div>
            </div>

            <div style="height: 120px; margin-left: 63px; margin-top: 20px; font-size: 30px; width: 1116px;">
                <strong>
                    <div>
                        <asp:Label ID="Label4" runat="server" Text="Search Someone: "></asp:Label>
                    </div>
                </strong>

                <div style="display: flex; flex-direction: row;">
                    <asp:Label ID="Label2" runat="server" Text="Select Searching Attribute: " Style="font-size: 18px; margin-right: 10px;"></asp:Label>
                    <div>
                        <asp:DropDownList ID="search_choice" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Username" Value="1"></asp:ListItem>
                            <asp:ListItem Text="CNIC" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Name" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Email" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Role" Value="5"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <asp:TextBox ID="search" runat="server" CssClass="form-control" Style="margin-left: 10px;"></asp:TextBox>
                    </div>
                    <div style="margin-top: -10px;">
                        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" class="btn btn-outline-secondary btn-light input-group-append" Style="margin-left: 20px;" />
                    </div>
                    <div>
                        <asp:Label ID="error1" runat="server" Text="" Style="font-size: 13px; margin-left: 10px" ForeColor="#0FF3300"></asp:Label>
                    </div>
                </div>
            </div>

            <div style="width: 1084px; height: 256px; margin-left: 94px; align-items: center; padding-bottom: 100px;">


                <style>
                    .custom-gridview {
                        border-collapse: collapse;
                        width: 100%;
                    }

                        .custom-gridview th, .custom-gridview td {
                            border: 1px solid black; /* Change border color to black */
                            padding: 8px;
                            text-align: left;
                        }
                </style>

                <div class="grid-view-container">
                    <asp:GridView ID="GridView1" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="860px">
                    </asp:GridView>
                </div>

            </div>
        </form>
    </div>
</body>
</html>
