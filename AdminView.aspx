<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminView.aspx.cs" Inherits="AdminView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Information Page</title>
    <link rel="shortcut icon" type="image/x-icon" href="shortcut.ico">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="flex.ico">
    <link rel="stylesheet" href="front-end/css/gridView.css">
    <link rel="stylesheet" href="front-end/css/Student_home.css">
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
                <li class="nav-item active">
                    <a class="nav-link" href="AdminView.aspx">Home<span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="offerCourses.aspx">Courses Offered</a>
                </li>
                <li class="nav-item">
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




    <form id="form1" runat="server">
        <div class="non-navbar">
            <h2>Admin Profile</h2>


            <div class="card-group">
                <div class="card">
                    <h5 class="card-header">PERSONAL INFORMATION</h5>
                    <div class="card-body">
                        <div class="upper-row">
                            <h6>Name:
                                <asp:Label ID="lblFName" runat="server" Text=""></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                                <asp:Label ID="lblLName" runat="server" Text=""></asp:Label>
                            </h6>
                        </div>

                        <div class="lower-row">
                            <h6>Gender: Male</h6>
                        </div>

                        <div class="third-row third-row">
                            <div class="upper-row">
                                <h6>Address: P-102, Street No. 4, Younas Town, Satiana Road, Faisalabad.</h6>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <h5 class="card-header transparent-h5">.</h5>
                    <div class="card-body">
                        <div class="upper-row">
                            <h6>Date Of Birth:
                                <asp:Label ID="lblDoB" runat="server" Text=""></asp:Label></h6>
                        </div>

                        <div class="lower-row">
                            <h6>CNIC:
                                <asp:Label ID="lblCNIC" runat="server" Text=""></asp:Label></h6>
                        </div>

                        <div class="third-row">
                            <h6>Email: 
                                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></h6>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <h5 class="card-header transparent-h5">.</h5>
                    <div class="card-body">
                        <div class="upper-row">
                            <h6>Blood Group: -</h6>
                        </div>

                        <div class="lower-row">
                            <h6>Nationality: Pakistani</h6>
                        </div>

                        <div class="third-row">
                            <h6>Mobile No: 0304-9983018</h6>
                        </div>
                    </div>
                </div>
            </div>


            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>







        <%--        <div style="width: 1479px; margin-left: 80px">
            <h1>Person Details</h1>
            <hr />
            <asp:Label ID="lblCNIC" runat="server" Text="&lt;b&gt;CNIC:&lt;/b&gt; "></asp:Label><br />
            <asp:Label ID="lblFName" runat="server" Text="&lt;b&gt;First Name:&lt;/b&gt; "></asp:Label><br />
            <asp:Label ID="lblLName" runat="server" Text="&lt;b&gt;Last Name:&lt;/b&gt; "></asp:Label><br />
            <asp:Label ID="lblDoB" runat="server" Text="&lt;b&gt;Date of Birth:&lt;/b&gt; "></asp:Label><br />
            <asp:Label ID="lblPhone" runat="server" Text="&lt;b&gt;Phone Number:&lt;/b&gt; "></asp:Label><br />
            <asp:Label ID="lblEmail" runat="server" Text="&lt;b&gt;Email:&lt;/b&gt; "></asp:Label><br />
            <hr />

            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>--%>
    </form>
</body>
</html>
