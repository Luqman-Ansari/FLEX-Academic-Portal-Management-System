<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentTranscript.aspx.cs" Inherits="studentTranscript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transcript</title>
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
                <li class="nav-item active">
                    <a class="nav-link" href="studentTranscript.aspx">Transcript</a>
                </li>
                <li class="nav-item">
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
                <h1><strong>Student's Transcript</strong></h1>
            </div>

            <style>
                .custom-gridview {
                    border-collapse: collapse;
                    width: 100%;
                    margin: 0 auto; /* Center align the table */
                    /*background-color: white; /* Set the background color to white */
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

                .grid-container {
                    display: flex;
                    justify-content: center;
                    align-items: flex-start;
                    flex-wrap: wrap;
                }

                .grid-item {
                    width: 50%;
                    padding: 10px;
                    box-sizing: border-box;
                }
            </style>


            <div class="grid-container">
                <div class="grid-item">
                    <div style="display: flex; flex-direction: row">
                        <div style="margin-top: 20px; font-size: 20px; text-align: left">
                            <asp:Label ID="Label1" runat="server" Text="Semester 1: " Font-Bold="true"></asp:Label>
                        </div>
                        <div style="margin-top: 20px; margin-left: 350px; font-size: 20px; text-align: right">
                            <asp:Label ID="Label9" runat="server" Text="" Font-Bold="true"></asp:Label>
                        </div>
                    </div>


                    <asp:GridView ID="GridView1" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="430px">
                    </asp:GridView>
                </div>
                <div class="grid-item">
                    <div style="display: flex; flex-direction: row">
                        <div style="margin-top: 20px; font-size: 20px; text-align: left">
                            <asp:Label ID="Label5" runat="server" Text="Semester 2: " Font-Bold="true"></asp:Label>
                        </div>
                        <div style="margin-top: 20px; margin-left: 350px; font-size: 20px; text-align: right">
                            <asp:Label ID="Label10" runat="server" Text="" Font-Bold="true"></asp:Label>
                        </div>
                    </div>
                    <asp:GridView ID="GridView2" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="430px">
                    </asp:GridView>
                </div>
            </div>
            <div class="grid-container">
                <div class="grid-item">
                    <div style="display: flex; flex-direction: row">
                        <div style="margin-top: 20px; font-size: 20px; text-align: left">
                            <asp:Label ID="Label2" runat="server" Text="Semester 3: " Font-Bold="true"></asp:Label>
                        </div>
                        <div style="margin-top: 20px; margin-left: 350px; font-size: 20px; text-align: right">
                            <asp:Label ID="Label11" runat="server" Text="" Font-Bold="true"></asp:Label>
                        </div>
                    </div>
                    <asp:GridView ID="GridView3" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="430px">
                    </asp:GridView>
                </div>
                <div class="grid-item">
                    <div style="display: flex; flex-direction: row">
                        <div style="margin-top: 20px; font-size: 20px; text-align: left">
                            <asp:Label ID="Label6" runat="server" Text="Semester 4: " Font-Bold="true"></asp:Label>
                        </div>
                        <div style="margin-top: 20px; margin-left: 350px; font-size: 20px; text-align: right">
                            <asp:Label ID="Label12" runat="server" Text="" Font-Bold="true"></asp:Label>
                        </div>
                    </div>
                    <asp:GridView ID="GridView4" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Width="430px">
                    </asp:GridView>
                </div>
            </div>
            <div class="grid-container">
                <div class="grid-item">
                    <div style="display: flex; flex-direction: row">
                        <div style="margin-top: 20px; font-size: 20px; text-align: left">
                            <asp:Label ID="Label3" runat="server" Text="Semester 5: " Font-Bold="true"></asp:Label>
                        </div>
                        <div style="margin-top: 20px; margin-left: 350px; font-size: 20px; text-align: right">
                            <asp:Label ID="Label13" runat="server" Text="" Font-Bold="true"></asp:Label>
                        </div>
                    </div>
                    <asp:GridView ID="GridView5" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" Width="430px">
                    </asp:GridView>
                </div>
                <div class="grid-item">
                    <div style="display: flex; flex-direction: row">
                        <div style="margin-top: 20px; font-size: 20px; text-align: left">
                            <asp:Label ID="Label7" runat="server" Text="Semester 6: " Font-Bold="true"></asp:Label>
                        </div>
                        <div style="margin-top: 20px; margin-left: 350px; font-size: 20px; text-align: right">
                            <asp:Label ID="Label14" runat="server" Text="" Font-Bold="true"></asp:Label>
                        </div>
                    </div>
                    <asp:GridView ID="GridView6" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView6_SelectedIndexChanged" Width="430px">
                    </asp:GridView>
                </div>
            </div>
            <div class="grid-container">
                <div class="grid-item">
                    <div style="display: flex; flex-direction: row">
                        <div style="margin-top: 20px; font-size: 20px; text-align: left">
                            <asp:Label ID="Label4" runat="server" Text="Semester 7: " Font-Bold="true"></asp:Label>
                        </div>
                        <div style="margin-top: 20px; margin-left: 350px; font-size: 20px; text-align: right">
                            <asp:Label ID="Label15" runat="server" Text="" Font-Bold="true"></asp:Label>
                        </div>
                    </div>
                    <asp:GridView ID="GridView7" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView7_SelectedIndexChanged" Width="430px">
                    </asp:GridView>
                </div>
                <div class="grid-item">
                    <div style="display: flex; flex-direction: row">
                        <div style="margin-top: 20px; font-size: 20px; text-align: left">
                            <asp:Label ID="Label8" runat="server" Text="Semester 8: " Font-Bold="true"></asp:Label>
                        </div>
                        <div style="margin-top: 20px; margin-left: 350px; font-size: 20px; text-align: right">
                            <asp:Label ID="Label16" runat="server" Text="" Font-Bold="true"></asp:Label>
                        </div>
                    </div>
                    <asp:GridView ID="GridView8" runat="server" CssClass="custom-gridview" Height="170px" OnSelectedIndexChanged="GridView8_SelectedIndexChanged" Width="430px">
                    </asp:GridView>
                </div>
            </div>
        </div>


    </form>
</body>
</html>
