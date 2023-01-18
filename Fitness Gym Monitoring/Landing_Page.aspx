<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing_Page.aspx.cs" Inherits="Fitness_Gym_Monitoring.Landing_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap/css/style.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />

    <script src="fontawesome/js/all.js"></script>
    <script src="bootstrap/js/jquery-3.6.3.slim.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>



</head>
<body class="bg-landingpage">
    <form id="form1" runat="server">


        <nav class="navbar navbar-dark nav-bg-color ">
            <div class="container-fluid mx-5">
                <a class="navbar-brand">
                    <img height=50px" src="imgs/Logo.png" />
                    <b>Fitnes Gym Monitoring System</b></a>
                <div class="d-flex">
                    <button class="btn btn-warning btn-lg rounded-pill" type="submit">LOG IN</button>
                </div>
            </div>
        </nav>

        <div class="container pt-5">
            <div class="col-6 mt-5">
                <img height="500px" src="imgs/Hero.png" />
            </div>
        </div>


    </form>
</body>
</html>
