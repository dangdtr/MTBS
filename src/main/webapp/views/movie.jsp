<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Movies</title>
    <!-- gg font -->
    <link type="text/css" rel="preconnect" href="https://fonts.googleapis.com">
    <link type="text/css" rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link type="text/css" href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <!-- OWL CAROUSEL -->
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- BOX ICONS -->
    <link type="text/css" href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <!-- app css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/grid.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/app.css">
</head>

<body>
    <!-- NAV -->
    <div class="nav-wrapper">
        <div class="container">
            <div class="nav">
                <a href="#" class="logo">
                    <i class='bx bx-movie-play bx-tada main-color'></i><span class="main-color"></span>
                </a>
                <ul class="nav-menu" id="nav-menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Movies</a></li>
                    <li><a href="#">Bookings</a></li>
                    <li>
                        <a href="#" class="btn btn-hover">
                            <span>Sign in</span>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
    <!-- END NAV -->
    <div class="hero-section">
        <div class="hero-slide">
            <div class="owl-carousel carousel-nav-center" id="hero-carousel">
                <!-- start slide item -->
                <div class="hero-slide-item">
                    <img src="<%=request.getContextPath()%>/assets/img/movie1.jpg" alt="">
                    <div class="overplay"></div>
                    <div class="hero-slide-item-content">
                        <div class="item-content-wrapper">
                            <div class="item-content-title">
                                Movie 1
                            </div>
                            <div class="movie-infos">
                                <!-- danh gia -->
                                <div class="movie-info">
                                    <i class="bx bxs-star">
                                        <span>9.5</span>
                                    </i>
                                </div>
                                <!-- thoi gian -->
                                <div class="movie-info">
                                    <i class="bx bxs-time">
                                        <span>120mins</span>
                                    </i>
                                </div>
                                <!-- the loai HD, 2D 3D -->
                                <div class="movie-info">
                                    <span>HD</span>
                                </div>
                                <!--gioi han do tuoi xem  -->
                                <div class="movie-info">
                                    <span>16+</span>
                                </div>

                            </div>
                            <div class="item-content-description">
                                Nội dung bộ phim Trạng Quỳnh được phóng tác từ những giai thoại về nhân vật cùng tên
                                trong dân gian Việt Nam. Chuyện phim xoay quanh Quỳnh (Quốc Anh) - một anh chàng thông
                                minh, ma mãnh, rất thích bày trò trêu chọc người dân trong làng.
                            </div>
                            <div class="combo-button">
                                <div class="item-action">
                                    <a href="#" class="btn btn-hover">
                                        <i class="bx bxs-right-arrow"></i>
                                        <span>Buy Ticket</span>
                                    </a>
                                </div>
                                <div class="item-action">
                                    <a href="#" class="btn btn-hover">
                                        <i class="bx bxs-right-arrow"></i>
                                        <span>Trailer</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end slide item -->

                <!-- start slide item -->
                <div class="hero-slide-item">
                    <img src="<%=request.getContextPath()%>/assets/img/Doctor-Strange-2-poster.jpg" alt="">
                    <div class="overplay"></div>
                    <div class="hero-slide-item-content">
                        <div class="item-content-wrapper">
                            <div class="item-content-title">
                                Movie2
                            </div>
                            <div class="movie-infos">
                                <!-- danh gia -->
                                <div class="movie-info">
                                    <i class="bx bxs-star">
                                        <span>9.5</span>
                                    </i>
                                </div>
                                <!-- thoi gian -->
                                <div class="movie-info">
                                    <i class="bx bxs-time">
                                        <span>120mins</span>
                                    </i>
                                </div>
                                <!-- the loai HD, 2D 3D -->
                                <div class="movie-info">
                                    <span>HD</span>
                                </div>
                                <!--gioi han do tuoi xem  -->
                                <div class="movie-info">
                                    <span>16+</span>
                                </div>

                            </div>
                            <div class="item-content-description">
                                Nội dung bộ phim Trạng Quỳnh được phóng tác từ những giai thoại về nhân vật cùng tên
                                trong dân gian Việt Nam. Chuyện phim xoay quanh Quỳnh (Quốc Anh) - một anh chàng thông
                                minh, ma mãnh, rất thích bày trò trêu chọc người dân trong làng.
                            </div>
                            <div class="item-action">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Buy Ticket</span>
                                </a>
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Trailer</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end slide item -->

                <!-- start slide item -->
                <div class="hero-slide-item">
                    <img src="<%=request.getContextPath()%>/assets/img/movie3.jpg" alt="">
                    <div class="overplay"></div>
                    <div class="hero-slide-item-content">
                        <div class="item-content-wrapper">
                            <div class="item-content-title">
                                Movie3
                            </div>
                            <div class="movie-infos">
                                <!-- danh gia -->
                                <div class="movie-info">
                                    <i class="bx bxs-star">
                                        <span>9.5</span>
                                    </i>
                                </div>
                                <!-- thoi gian -->
                                <div class="movie-info">
                                    <i class="bx bxs-time">
                                        <span>120mins</span>
                                    </i>
                                </div>
                                <!-- the loai HD, 2D 3D -->
                                <div class="movie-info">
                                    <span>HD</span>
                                </div>
                                <!--gioi han do tuoi xem  -->
                                <div class="movie-info">
                                    <span>16+</span>
                                </div>

                            </div>
                            <div class="item-content-description">
                                Nội dung bộ phim Trạng Quỳnh được phóng tác từ những giai thoại về nhân vật cùng tên
                                trong dân gian Việt Nam. Chuyện phim xoay quanh Quỳnh (Quốc Anh) - một anh chàng thông
                                minh, ma mãnh, rất thích bày trò trêu chọc người dân trong làng.
                            </div>
                            <div class="item-action">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Buy Ticket</span>
                                </a>
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Buy Ticket</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end slide item -->

                <!-- start slide item -->
                <div class="hero-slide-item">
                    <img src="<%=request.getContextPath()%>/assets/img/movie4.jpg" alt="">
                    <div class="overplay"></div>
                    <div class="hero-slide-item-content">
                        <div class="item-content-wrapper">
                            <div class="item-content-title">
                                Movie4
                            </div>
                            <div class="movie-infos">
                                <!-- danh gia -->
                                <div class="movie-info">
                                    <i class="bx bxs-star">
                                        <span>9.5</span>
                                    </i>
                                </div>
                                <!-- thoi gian -->
                                <div class="movie-info">
                                    <i class="bx bxs-time">
                                        <span>120mins</span>
                                    </i>
                                </div>
                                <!-- the loai HD, 2D 3D -->
                                <div class="movie-info">
                                    <span>HD</span>
                                </div>
                                <!--gioi han do tuoi xem  -->
                                <div class="movie-info">
                                    <span>16+</span>
                                </div>

                            </div>
                            <div class="item-content-description">
                                Nội dung bộ phim Trạng Quỳnh được phóng tác từ những giai thoại về nhân vật cùng tên
                                trong dân gian Việt Nam. Chuyện phim xoay quanh Quỳnh (Quốc Anh) - một anh chàng thông
                                minh, ma mãnh, rất thích bày trò trêu chọc người dân trong làng.
                            </div>
                            <div class="item-action">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Buy Ticket</span>
                                </a>
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Buy Ticket</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end slide item -->

                <!-- start slide item -->
                <div class="hero-slide-item">
                    <img src="<%=request.getContextPath()%>/assets/img/movie5.jpg" alt="">
                    <div class="overplay"></div>
                    <div class="hero-slide-item-content">
                        <div class="item-content-wrapper">
                            <div class="item-content-title">
                                Movie 5
                            </div>
                            <div class="movie-infos">
                                <!-- danh gia -->
                                <div class="movie-info">
                                    <i class="bx bxs-star">
                                        <span>9.5</span>
                                    </i>
                                </div>
                                <!-- thoi gian -->
                                <div class="movie-info">
                                    <i class="bx bxs-time">
                                        <span>120mins</span>
                                    </i>
                                </div>
                                <!-- the loai HD, 2D 3D -->
                                <div class="movie-info">
                                    <span>HD</span>
                                </div>
                                <!--gioi han do tuoi xem  -->
                                <div class="movie-info">
                                    <span>16+</span>
                                </div>

                            </div>
                            <div class="item-content-description">
                                Nội dung bộ phim Trạng Quỳnh được phóng tác từ những giai thoại về nhân vật cùng tên
                                trong dân gian Việt Nam. Chuyện phim xoay quanh Quỳnh (Quốc Anh) - một anh chàng thông
                                minh, ma mãnh, rất thích bày trò trêu chọc người dân trong làng.
                            </div>
                            <div class="item-action">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Buy Ticket</span>
                                </a>
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Buy Ticket</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end slide item -->

                <!-- start slide item -->
                <div class="hero-slide-item">
                    <img src="<%=request.getContextPath()%>/assets/img/movie6.jpg" alt="">
                    <div class="overplay"></div>
                    <div class="hero-slide-item-content">
                        <div class="item-content-wrapper">
                            <div class="item-content-title">
                                Movie 6
                            </div>
                            <div class="movie-infos">
                                <!-- danh gia -->
                                <div class="movie-info">
                                    <i class="bx bxs-star">
                                        <span>9.5</span>
                                    </i>
                                </div>
                                <!-- thoi gian -->
                                <div class="movie-info">
                                    <i class="bx bxs-time">
                                        <span>120mins</span>
                                    </i>
                                </div>
                                <!-- the loai HD, 2D 3D -->
                                <div class="movie-info">
                                    <span>HD</span>
                                </div>
                                <!--gioi han do tuoi xem  -->
                                <div class="movie-info">
                                    <span>16+</span>
                                </div>

                            </div>
                            <div class="item-content-description">
                                Nội dung bộ phim Trạng Quỳnh được phóng tác từ những giai thoại về nhân vật cùng tên
                                trong dân gian Việt Nam. Chuyện phim xoay quanh Quỳnh (Quốc Anh) - một anh chàng thông
                                minh, ma mãnh, rất thích bày trò trêu chọc người dân trong làng.
                            </div>
                            <div class="item-action">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Buy Ticket</span>
                                </a>
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Buy Ticket</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end slide item -->
            </div>
        </div>


    </div>

    <!-- show details movies -->
    <div class="list-movie">
        <div class="section-header">
            <!-- MOVIE SELECTION -->
            <img src="https://www.cgv.vn/skin/frontend/cgv/default/images/bg-cgv/h3_movie_selection.gif" alt="">
        </div>
        <div class="owl-carousel carousel-nav-center" , id="detail-movies-slide">
            <!-- movie-item -->
            <div class="movie-item">
                <img src="<%=request.getContextPath()%>/assets/img/movie1.jpg" alt="">
                <div class="movie-item-content">
                    <div class="movie-item-title">
                        Trang Quynh
                    </div>
                    <div class="movie-infos">
                        <div class="movie-info">
                            <i class="bx bxs-star"></i>
                            <span>9.5</span>
                        </div>
                        <div class="movie-info">
                            <i class="bx bxs-time"></i>
                            <span>120 mins</span>
                        </div>
                        <div class="movie-info">
                            <span>HD</span>
                        </div>
                        <div class="movie-info">
                            <span>16+</span>
                        </div>
                        <div class="combo-button">
                            <div class="item-action", id="1">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Book</span>
                                </a>
                            </div>
                            <div class="item-action", id="2">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Trailer</span>
                                </a>
                            </div>
                            <div class="item-action", id ="3">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Details</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- movie-item -->

            <!-- movie-item -->
            <div class="movie-item">
                <img src="<%=request.getContextPath()%>/assets/img/movie2.jpg" alt="">
                <div class="movie-item-content">
                    <div class="movie-item-title">
                        phim 2
                    </div>
                    <div class="movie-infos">
                        <div class="movie-info">
                            <i class="bx bxs-star"></i>
                            <span>9.5</span>
                        </div>
                        <div class="movie-info">
                            <i class="bx bxs-time"></i>
                            <span>120 mins</span>
                        </div>
                        <div class="movie-info">
                            <span>HD</span>
                        </div>
                        <div class="movie-info">
                            <span>16+</span>
                        </div>
                        <div class="combo-button">
                            <div class="item-action", id="1">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Book</span>
                                </a>
                            </div>
                            <div class="item-action", id="2">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Trailer</span>
                                </a>
                            </div>
                            <div class="item-action", id ="3">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Details</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- movie-item -->

            <!-- movie-item -->
            <div class="movie-item">
                <img src="<%=request.getContextPath()%>/assets/img/movie3.jpg" alt="">
                <div class="movie-item-content">
                    <div class="movie-item-title">
                        Phim 3
                    </div>
                    <div class="movie-infos">
                        <div class="movie-info">
                            <i class="bx bxs-star"></i>
                            <span>9.5</span>
                        </div>
                        <div class="movie-info">
                            <i class="bx bxs-time"></i>
                            <span>120 mins</span>
                        </div>
                        <div class="movie-info">
                            <span>HD</span>
                        </div>
                        <div class="movie-info">
                            <span>16+</span>
                        </div>
                        <div class="combo-button">
                            <div class="item-action", id="1">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Book</span>
                                </a>
                            </div>
                            <div class="item-action", id="2">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Trailer</span>
                                </a>
                            </div>
                            <div class="item-action", id ="3">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Details</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- movie-item -->

            <!-- movie-item -->
            <div class="movie-item">
                <img src="<%=request.getContextPath()%>/assets/img/movie4.jpg" alt="">
                <div class="movie-item-content">
                    <div class="movie-item-title">
                        Phim 4
                    </div>
                    <div class="movie-infos">
                        <div class="movie-info">
                            <i class="bx bxs-star"></i>
                            <span>9.5</span>
                        </div>
                        <div class="movie-info">
                            <i class="bx bxs-time"></i>
                            <span>120 mins</span>
                        </div>
                        <div class="movie-info">
                            <span>HD</span>
                        </div>
                        <div class="movie-info">
                            <span>16+</span>
                        </div>
                        <div class="combo-button">
                            <div class="item-action", id="1">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Book</span>
                                </a>
                            </div>
                            <div class="item-action", id="2">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Trailer</span>
                                </a>
                            </div>
                            <div class="item-action", id ="3">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Details</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- movie-item -->

            <!-- movie-item -->
            <div class="movie-item">
                <img src="<%=request.getContextPath()%>/assets/img/movie5.jpg" alt="">
                <div class="movie-item-content">
                    <div class="movie-item-title">
                        Phim 4
                    </div>
                    <div class="movie-infos">
                        <div class="movie-info">
                            <i class="bx bxs-star"></i>
                            <span>9.5</span>
                        </div>
                        <div class="movie-info">
                            <i class="bx bxs-time"></i>
                            <span>120 mins</span>
                        </div>
                        <div class="movie-info">
                            <span>HD</span>
                        </div>
                        <div class="movie-info">
                            <span>16+</span>
                        </div>
                        <div class="combo-button">
                            <div class="item-action", id="1">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Book</span>
                                </a>
                            </div>
                            <div class="item-action", id="2">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Trailer</span>
                                </a>
                            </div>
                            <div class="item-action", id ="3">
                                <a href="#" class="btn btn-hover">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Details</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- movie-item -->
        </div>
    </div>
    <!-- show details movies end -->

    <!-- footer section -->

    <footer class="footer">
        <div class="grid">
            <div class="row">
                <div class="col">
                    <a href="#" class="logo">
                        <i class='bx bx-movie-play bx-tada main-color'></i><span class="main-color"></span>
                    </a>
                    <p class="text-des">
                        Bản quyền thuộc về 5 sinh viên nhóm 10 của lớp học phần Công nghệ phần mềm
                        (INT2208E-22) thuộc khoa công nghệ thông tin trường đại học công nghệ- đại học quốc gia Hà Nội
                    </p>
                    <div class="socical-list">
                        <a href="#" class="social-item">
                            <i class="bx bxl-facebook"></i>
                        </a>
                        <a href="#" class="social-item">
                            <i class="bx bxl-instagram"></i>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <h2 class="footer-heading">Chịu trách nhiệm sản xuất</h2>
                    <ul class="footer-list">
                        <li class="footer-item">
                            <a href="https://github.com/dawnpanpan" class="footer-item-link personal">Đào Trọng Đăng</a>
                        </li>
                        <li class="footer-item">
                            <a href="https://github.com/quyendv" class="footer-item-link personal">Đào Văn Quyền</a>
                        </li>
                        <li class="footer-item">
                            <a href="https://github.com/duytv2501" class="footer-item-link personal">Trần Văn Duy</a>
                        </li>
                        <li class="footer-item">
                            <a href="https://github.com/nguyenhieu12" class="footer-item-link personal">Nguyễn Minh Hiếu</a>
                        </li>
                        <li class="footer-item">
                            <a href="https://github.com/tuantuan4" class="footer-item-link personal">Lê Anh Tuấn</a>
                        </li>
                    </ul>
                </div>
                <div class="col">
                    <h2 class="footer-heading">Hợp tác</h2>
                </div>
                <div class="col">
                    <h2 class="footer-heading">Chăm sóc khách hàng</h2>
                    <ul class="footer-list">
                        <li class="footer-item">
                            <a href="" class="footer-item-link personal">Trung tâm trợ giúp</a>
                        </li>
                        <li class="footer-item">
                            <a href="" class="footer-item-link personal">Chăm sóc khách hàng</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer section end -->
    <!-- SCRIPT -->

    <!-- JQUERY -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <!-- OWL CAROUSEL -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- APP SCRIPT -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/javascript/app.js"></script>
</body>

</html>