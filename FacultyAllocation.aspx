<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacultyAllocation.aspx.cs" Inherits="FacultyAllocation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty Course Allocation</title>
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
                <li class="nav-item ">
                    <a class="nav-link" href="adminRegisterStudents.aspx">Register New Person</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin_register_people.aspx">Register Course to Student</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="FacultyAllocation.aspx">Allocate Course to Teacher</a>
                </li>
            </ul>
        </div>
    </nav>


    <div class="non-navbar">

        <form id="form1" runat="server">


            <div style="height: 200px; margin-left: 63px; font-size: 30px; width: 1116px; margin-top: 1px">
                <strong>Allocating Courses to Teachers:<br />
                    <br />
                </strong>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Select Name and Course to Allocate: " Style="font-size: 18px" Font-Bold="True"></asp:Label>
                    <div style="display: flex; flex-direction: row;">
                        <asp:Label ID="Label2" runat="server" Text="Instructor's Name: " Style="font-size: 15px; margin-top: 12px; margin-right: 15px"></asp:Label>
                        <div>
                            <asp:DropDownList ID="ddl" runat="server" CssClass="form-control" Style="margin-top: 12px; margin-right: 20px"></asp:DropDownList>
                        </div>
                        <asp:Label ID="Label3" runat="server" Text="Courses Available: " Style="font-size: 15px; margin-top: 12px; margin-right: 15px; margin-left: 20px"></asp:Label>
                        <div>
                            <asp:DropDownList ID="ddl2" runat="server" CssClass="form-control" Style="margin-top: 12px; margin-right: 20px"></asp:DropDownList>
                        </div>
                        <asp:Label ID="Label6" runat="server" Text="Sections: " Style="font-size: 15px; margin-top: 12px; margin-right: 15px"></asp:Label>
                        <div>
                            <asp:DropDownList ID="ddl4" runat="server" CssClass="form-control" Style="margin-top: 12px"></asp:DropDownList>
                        </div>
                    </div>
                    <div>
                        <asp:Button ID="Allocate" class="btn btn-outline-secondary btn-light input-group-append" runat="server" Text="Allocate" OnClick="Button1_Click1" />
                        <asp:Button ID="sections" class="btn btn-outline-secondary btn-light input-group-append" runat="server" Text="Show Sections" OnClick="show_sections" />
                        <asp:Button ID="show_courses" class="btn btn-outline-secondary btn-light input-group-append" runat="server" Text="Show Allocated Courses" OnClick="show_courses_Click" />
                        <asp:Label ID="errors" runat="server" Text="" Style="font-size: 13px; margin-left: 10px" ForeColor="#0FF3300"></asp:Label>
                    </div>
                </div>

                <script>
                    function toggleDropdown() {
                        $("#customDropdown").toggle();
                    }

                    function updateInputValue() {
                        var selectedValue = $("#customDropdown").val();
                        $("#customDropdownInput").val(selectedValue);
                        $("#customDropdown").hide();
                    }
                </script>

            </div>
            <div style="margin-top:40px">

                <div style="width: 700px; height: 256px; margin-left: 94px; align-items: center; padding-bottom: 100px;">
                    <asp:Label ID="Label4" runat="server" Text="test" Style="font-size: 15px" Font-Bold="True"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" Height="16px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="700px">
                    </asp:GridView>
                    <div style="margin-top: 10px">
                        <asp:Label ID="Label5" runat="server" Text="Select Course-Section to Drop: " Style="font-size: 15px"></asp:Label>
                        <asp:DropDownList ID="ddl3" runat="server" class="btn btn-outline-secondary btn-light input-group-append" Style="margin-top: 12px; margin-right: 20px; margin-right: 5px"></asp:DropDownList>
                        <asp:Button ID="drop" class="btn btn-outline-secondary btn-light input-group-append" runat="server" Text="Drop" OnClick="drop_Click" />
                        <asp:Label ID="errors1" runat="server" Text="" Style="font-size: 13px; margin-left: 10px" ForeColor="#0FF3300"></asp:Label>
                    </div>
                </div>

            </div>
            <div style="margin-left: 63px; display: flex; flex-direction: row">
                <asp:Button ID="Button1" class="btn btn-outline-secondary btn-light input-group-append" runat="server" Text="Refresh" OnClick="Button1_Click" />
            </div>
        </form>

    </div>
</body>
</html>
