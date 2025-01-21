<%@ Page Language="C#" AutoEventWireup="false" CodeFile="Faculty1.aspx.cs" Inherits="Faculty1" %>


<!DOCTYPE html>

<html lang="en">
  <head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Set Marks Distribution</title>
    <link rel="icon" href="flex.ico">
    <link rel="stylesheet" href="front-end/css/faculty1.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
  </head>
<body>
   <nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
      <a class="navbar-brand" href="#">
        <img src="flex.ico" width="30" height="30" alt="">FLEX</a>
      <button class="navbar-toggler btn btn-secondary" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home<span class="sr-only"></span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Marks Distribution</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Attendance</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="non-navbar">

      <h1>Set Marks Distribution</h1>

      <div class="input-group mb-3">
        <input type="text" id="" class="form-control" placeholder="Search Course" aria-label="Recipient's username" aria-describedby="basic-addon2">
        <div class="input-group-append">
          <button class="btn btn-outline-secondary" type="button">Search</button>
        </div>
      </div>

      <div class="dropdown">
        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">Campus</a>
      
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
          <li><a class="dropdown-item" href="#">Islamabad</a></li>
          <li><a class="dropdown-item" href="#">Lahore</a></li>
          <li><a class="dropdown-item" href="#">Pehsawar</a></li>
          <li><a class="dropdown-item" href="#">Chiniot-Faisalabad</a></li>
          <li><a class="dropdown-item" href="#">Karachi</a></li>
        </ul>
      </div>

      <div class="dropdown">
        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">Semester</a>
      
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
          <li><a class="dropdown-item" href="#">Spring 2023</a></li>
        </ul>
      </div>

       <div style="text-align: center;">
                <style>
                    .custom-gridview {
                        border-collapse: collapse;
                        width: 100%;
                        margin: 0 auto; /* Center align the table */
                        /background-color: white; / Set the background color to white */
                    }

                        .custom-gridview th {
                            background-color: #333; /* Darker background color for header row */
                            color: white; /* Text color for header row */
                            font-weight: bold; /* Bold font for header row */
                            padding: 8px;
                            text-align: left;
                        }

                        .custom-gridview td {
                            border: 1px solid black;
                            padding: 8px;
                            text-align: left;
                        }
                </style>

                <div class="grid-view-container">
                    <asp:GridView ID="GridView1" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="860px">
                    </asp:GridView>
                </div>
            </div>
</body>
</html>
