<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentEvaluation.aspx.cs" Inherits="studentEvaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Evaluation</title>
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
                    <a class="nav-link" href="StudentView.aspx">Home<span class="sr-only"></span></a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="StudentAttendance.aspx">Attendance</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="studentTranscript.aspx">Transcript</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="studentEvaluation.aspx">Evaluation Marks</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="feedbackFin.aspx">Feedback</a>
                </li>
            </ul>
        </div>
    </nav>


    <form id="form1" runat="server">
        <div class="non-navbar">
            <div style="margin-top: 20px">
                <h1><strong>Evaluations</strong></h1>
            </div>
            <div style="margin-top: 20px; font-size: 20px">
                <asp:Label ID="Label2" runat="server" Text="Search Course: " Font-Bold="true"></asp:Label>
            </div>
            <div class="input-group mb-3">
                <asp:DropDownList ID="ddl1" runat="server" CssClass="form-control" Style="font-size: 12px;"></asp:DropDownList>
                <div class="input-group-append">
                    <asp:Button ID="search_course" runat="server" Text="Search" class="btn btn-outline-secondary btn-light input-group-append" OnClick="btnSearch" />
                </div>
            </div>
            <asp:Label ID="error1" runat="server" ForeColor="Red"></asp:Label>



        </div>


    </form>
</body>
</html>
