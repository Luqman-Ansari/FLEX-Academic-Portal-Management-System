<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="Login" %>

<!doctype html>
<html lang="en">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="icon" href="shortcut.ico">
    <link rel="stylesheet" href="front-end/css/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

</head>
<body>
    <div class="container outside-container shadow-lg p-3 mb-5 bg-white rounded">
        <div class="heading .mt5">
            <h1>Login</h1>
        </div>

        <div class="email-password">
            <form id="form1" runat="server">
                <div class="form-group">
                    <label for="exampleInputEmail1">Username</label>
                    <asp:TextBox ID="TextBox1" runat="server" type="" class="form-control" aria-describedby="emailHelp" placeholder="21i-0490"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password" type="password" class="form-control" placeholder="Password"></asp:TextBox>
                </div>

                <div class="d-grid gap-2 submit-button">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" class="btn btn-primary" type="button" />
                </div>
                <div>
                    <asp:Label ID="Label1" runat="server" Style="font-size: 12px;" ForeColor="#FF3300"></asp:Label>
                </div>
                


            </form>
        </div>

    </div>

    <div class="upper-container">
        <img class="back-image" src="front-end/flex-logo.png" alt="flex-logo">
    </div>

    <img class="outside-image" src="front-end/flex-logo.png" alt="flex-logo">
</body>
</html>
