<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ page import="com.uet.mtbs.database.CheckLogged" %>
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
</head>

<body>
<div id="header">
    <a href="#" class="logo">
        <i class='logo-icon bx bx-movie-play bx-tada'></i>
    </a>

    <ul class="navigation">
        <li><a href="<%=request.getContextPath()%>/views/logged_index.jsp">Home</a></li>
        <li><a href="#movies">Movies</a></li>
        <li><a href="<%=request.getContextPath()%>/views/booking.jsp">Bookings</a></li>
        <li class="login-btn"><a href="<%=request.getContextPath()%>/views/index.jsp">Logout</a></li>
        <li class="login-btn"><a href="<%=request.getContextPath()%>/views/change_password.jsp">Change password</a></li>
        <li class="login-btn"><a  href="<%=request.getContextPath()%>/views/action.jsp">Add movie</a></li>
        <li style="color: fuchsia"><h1>${CheckLogged.LOGGED_USERNAME}</h1></li>
        <li><image src="<%=request.getContextPath()%>/assets/img/user_logo.png"></image></li>
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

<c:forEach var="cur_movie" items="${searched_movie}">
    <div class="movie-details-section">
        <div class="movie-details-container grid wide">
            <h2 class=" page-title">Chi tiết phim</h2>

            <div class="row movie-details-content">
                    <%--        <div class="movie-image col l-2 m-3 c-11">--%>
                    <%--          <img src="<%=request.getContextPath()%>/assets/img/movie-details/dr-strange-payoff-poster_1_.jpg" alt="">--%>
                    <%--        </div>--%>

                <div class="movie-details-property col l-o-1 l-9 m-9 c-11">
                    <h2 class="movie-details-title">${cur_movie.movie_name}</h2>

                    <ul class="movie-details-infos">
                        <li class="movie-details-info">
                            <label>Đạo diễn:</label><span>${cur_movie.director}</span>
                        </li>

                        <li class="movie-details-info">
                            <label>Diễn viên:</label><span>${cur_movie.cast}</span>
                        </li>

                        <li class="movie-details-info">
                            <label>Nhà sản xuất:</label><span>${cur_movie.producer}</span>
                        </li>

                        <li class="movie-details-info">
                            <label>Thể loại:</label><span>${cur_movie.movie_genre}</span>
                        </li>

                        <li class="movie-details-info">
                            <label>Khởi chiếu:</label><span>04/05/2022</span>
                        </li>

                        <li class="movie-details-info">
                            <label>Thời lượng:</label><span>${cur_movie.movie_duration}</span>
                        </li>

                        <li class="movie-details-info">
                            <label>Ngôn ngữ:</label><span>Tiếng Anh - Phụ đề Tiếng Việt</span>
                        </li>

                        <li class="movie-details-info">
                            <label>Rated: </label><span>C13 - PHIM CẤM KHÁN GIẢ DƯỚI 13 TUỔI</span>
                        </li>
                    </ul>

                    <div class="movie-details-options">
                        <a href="<%=request.getContextPath()%>/views/booking.jsp" class="buy-ticket">
                            <i class="fa-solid fa-cart-arrow-down"></i>
                            <span>Buy Ticket</span>
                        </a>

                        <ul>
                            <li class="option-item option-item1 js-option-item1 active">
                                <i class="fa fa-light fa-hand-point-right"></i>
                                <span>Nội dung</span>
                            </li>
                            <li class="option-item option-item2 js-option-item2">
                                <i class="fa fa-light fa-hand-point-right"></i>
                                <span>Trailer</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="movie-details-des">
                <div class="text-des active js-text-des">${cur_movie.description}</div>
                <div class="trailer-des js-trailer-des">
                    <iframe width="560" height="315" src="${cur_movie.movie_trailer_url}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</c:forEach>

<!-- Footer -->
<footer id="footer" class="footer grid">
    <div class="row footer-infos">
        <!-- About -->
        <div class="col l-3 m-6 c-12 footer-info">
            <h2 class="footer-title">About us</h2>
            <p class="text-des">
                Software Engineering subject project (INT2208E-22) of students in group 10, Faculty of Information
                Technology, University of Engineering and Technology - Vietnam National University, Hanoi. This
                software is intended to help you easily book movie tickets at home.
            </p>
            <div class="socical-list">
                <a href="#" class="social-item"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social-item"><i class="fab fa-twitter"></i></a>
                <a href="#" class="social-item"><i class="fab fa-instagram"></i></a>
                <a href="#" class="social-item"><i class="fab fa-youtube"></i></a>
            </div>
        </div>

        <!-- Team members -->
        <div class="col l-3 m-6 c-12 footer-info">
            <h2 class="footer-title">Team members</h2>
            <ul class="members-list">
                <li class="member-item">
                    <a href="https://github.com/dawnpanpan" class="member-item-link personal">Đào Trọng Đăng</a>
                </li>
                <li class="member-item">
                    <a href="https://github.com/quyendv" class="member-item-link personal">Đào Văn Quyền</a>
                </li>
                <li class="member-item">
                    <a href="https://github.com/duytv2501" class="member-item-link personal">Trần Văn Duy</a>
                </li>
                <li class="member-item">
                    <a href="https://github.com/nguyenhieu12" class="member-item-link personal">Nguyễn Minh
                        Hiếu</a>
                </li>
                <li class="member-item">
                    <a href="https://github.com/tuantuan4" class="member-item-link personal">Lê Anh Tuấn</a>
                </li>
            </ul>
        </div>

        <!-- Address -->
        <div class="col l-3 m-6 c-12 footer-info">
            <h2 class="footer-title">Address</h2>
            <ul class="address-infos">
                <li class="address-info">
                    <i class="fa-solid fa-location-dot"></i>
                    <span class="address-details">Cầu Giấy, Hà Nội, Việt Nam</span>
                </li>
                <li class="address-info">
                    <i class="fa-solid fa-phone"></i>
                    <span class="address-details">+84 xxx xxx xxx</span>
                </li>
                <li class="address-info">
                    <i class="fa-solid fa-envelope"></i>
                    <span class="address-details">abc@example.com</span>
                </li>
            </ul>
        </div>

        <!-- Contact -->
        <div class="col l-3 m-6 c-12 footer-info">
            <h2 class="footer-title">Contact</h2>
            <form action="" class="form-contact">
                <div class="contact-box">
                    <label for="">Email *</label>
                    <input type="email" name="" id="" required>
                </div>

                <div class="contact-box">
                    <label for="">Message *</label>
                    <textarea rows="3" required></textarea>
                </div>

                <button type="submit">Send</button>
            </form>
        </div>

    </div>

    <p class="copyright">Copyright © 2022 - Team 10 - All Rights Reversed.</p>
</footer>

<!-- Link JS -->
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/javascript/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/javascript/moviedetails.js"></script>
</body>

</html>