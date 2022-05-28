<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MTBS</title>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/img/popcorn.png">

    <!-- GG font Cario -->
    <link type="text/css" rel="preconnect" href="https://fonts.googleapis.com">
    <link type="text/css" rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link type="text/css" href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap"
          rel="stylesheet">

    <!-- Fontawesome -->
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Box icons -->
    <link type="text/css" href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

    <!-- APP -->
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/grid.css">
    <!-- <link rel="stylesheet" href="./assets/css/app.css"> -->
</head>

<body>
<!-- Header -->
<div id="header">
    <a href="#" class="logo">
        <i class='logo-icon bx bx-movie-play bx-tada'></i>
    </a>

    <ul class="navigation">
        <li><a href="<%=request.getContextPath()%>/views/index.jsp">Home</a></li>
        <li><a href="<%=request.getContextPath()%>/views/index.jsp#movies">Movies</a></li>
        <li><a href="<%=request.getContextPath()%>/views/booking.jsp">Bookings</a></li>
        <!-- <li class="login-btn js-login-btn"><a>Login</a></li> -->
        <li class="login-btn js-login-btn"><a href="<%=request.getContextPath()%>/views/reset_password.jsp">Login</a></li>
    </ul>


    <div class="search-box">
        <input type="search" name="search-text" id="search-text" placeholder="Find your favorite moive">
        <span class="search-btn">
                <i class="fa-solid fa-magnifying-glass"></i>
            </span>
    </div>

    <!-- default display: none -->
    <div id="mobile-menu" class="mobile-menu">
        <div class="toggle-bar"></div>
        <div class="toggle-bar"></div>
        <div class="toggle-bar"></div>
    </div>
</div>

<!-- Modal Login/Register-->
<div class="login-register" id="login-register">
    <!-- Login -->
    <div class="modal open js-modal login js-login">
        <div class="modal__container js-modal__container">
            <h1 class="heading">Reset password successful !</h1>

            <!-- Content -->
            <div class="content">
                <a class="register-btn js-register-btn" href="<%=request.getContextPath()%>/views/login.jsp">Go to login</a>
            </div>
        </div>
    </div>
</div>

<!-- Main script -->
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/javascript/main.js"></script>
<!-- APP SCRIPT -->
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/javascript/app.js"></script>
</body>

</html>