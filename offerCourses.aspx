<%@ Page Language="C#" AutoEventWireup="true" CodeFile="offerCourses.aspx.cs" Inherits="offerCourses" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Offer Courses</title>
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
                <li class="nav-item active">
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

        <div style="width: 1209px; height: 350px; margin-left: 95px; margin-top: 10px">
            <h1><strong>Courses Offered</strong></h1>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Name: *"></asp:Label>

            </div>
            <div>
               
            <asp:TextBox ID="name" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="form-control" placeholder="Enter Name" aria-label="Recipient's username" aria-describedby="basic-addon2" style="margin-top: 5px; width: 200px; height: 35px"></asp:TextBox>

            </div>
            <div>
                <asp:Label ID="Label4" runat="server" Text="Course Code: "></asp:Label>

            </div>
            <div>
                <asp:TextBox ID="courseCode" runat="server" OnTextChanged="TextBox2_TextChanged" CssClass="form-control" placeholder="Course Code" aria-label="Course Code" aria-describedby="basic-addon2" style="margin-top: 5px; width: 200px; height: 35px"></asp:TextBox>

            </div>

            <div>
                <asp:Label ID="Label5" runat="server" Text="Credit Hours: *"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="credit" runat="server" OnTextChanged="TextBox2_TextChanged" CssClass="form-control" placeholder="Credit Hours" aria-label="Course Code" aria-describedby="basic-addon2" style="margin-top: 5px; width: 200px; height: 35px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label6" runat="server" Text="Pre Req: "></asp:Label>
            </div>
            <div>
               <asp:TextBox ID="pre" runat="server" CssClass="form-control" placeholder="Pre Req" Style="margin-top: 5px; width: 200px; height: 35px"></asp:TextBox>
            </div>
            <div class="input-group-append">
                <asp:Button ID="Button1" class="btn btn-outline-secondary btn-light" runat="server" OnClick="Button1_Click" Text="Insert Course" Style="margin-top: 15px; height: 35px; width: 150px;" />
            </div>
            <div>
                <asp:Label ID="Label1" runat="server" Font-Size="Smaller" ForeColor="#FF3300"></asp:Label>

            </div>
            <div>
                <asp:Label ID="Label2" runat="server"></asp:Label>

            </div>
        </div>


        <div class="input-group-append" style="width: 856px; height: 35px; margin-left: 94px; display: flex; justify-content: center; margin-bottom: 15px">
           <asp:Button ID="Refresh_button" runat="server" class="btn btn-outline-secondary btn-light" Text="Refresh" Width="100px" Height="40px" OnClick="Refresh_button_Click" PostBackUrl="~/offerCourses.aspx#Button2" />        
        </div>




        <div style="width: 1207px; height: 256px; margin-left: 94px; margin-bottom: 20px; align-items: center">
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

            <div style="margin-top: 10px; margin-bottom: 30px">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" style="width: 500px; margin-bottom: 15px" placeholder="Enter Course to Drop" onfocus="clearPlaceholder(this)" onblur="setPlaceholder(this)"></asp:TextBox>

                <script>
                    function clearPlaceholder(element) {
                        if (element.value === element.getAttribute('placeholder')) {
                            element.value = '';
                            element.style.color = '';
                        }
                    }

                    function setPlaceholder(element) {
                        if (element.value === '') {
                            element.value = element.getAttribute('placeholder');
                            element.style.color = 'gray'; // You can set the desired color for the placeholder text
                        }
                    }
                </script>

                <asp:Button ID="Button2" runat="server" Text="Drop Courses" OnClick="Button2_Click" AutoPostBack="true" PostBackUrl="~/offerCourses.aspx#Button2" CssClass="btn btn-light" />

                <br />
                <asp:Label ID="error2" runat="server" Font-Size="Smaller" ForeColor="#0FF3300"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>

