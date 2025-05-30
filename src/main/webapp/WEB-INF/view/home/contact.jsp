<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Fruitables - Vegetable Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
            rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
          rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
</head>

<body>

<!-- Spinner Start -->
<div id="spinner"
     class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
    <div class="spinner-grow text-primary" role="status"></div>
</div>
<!-- Spinner End -->



<jsp:include page="layout/header.jsp" />



<!-- Hero Start -->
<div class="container-fluid hero-header position-relative">
    <img src="/images/background/bg5.png" class="d-block w-100" style="height: 250px; object-fit: cover;" alt="...">

    <div class="position-absolute top-50 start-50 translate-middle text-white text-center">
        <h1 class="fw-normal">Liên hệ</h1>
        <p>
            <a href="/" class="text-dark">Trang chủ</a>
            <span class="text-dark">&nbsp;&gt;&nbsp;</span>
            <span class="text-success">Liên hệ</span>
        </p>
    </div>
</div>

<!-- Contact Section Start -->
<div class="container my-5">
    <div class="row">
        <!-- Form bên trái -->
        <div class="col-md-6">
            <h3 class="mb-4">Gửi liên hệ</h3>
            <form action="#" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Họ tên <span style="color: red;">*</span></label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email <span style="color: red;">*</span></label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label">Nội dung <span style="color: red;">*</span></label>
                    <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                </div>
                <button type="submit" class="btn btn-outline-success">Gửi ngay</button>
            </form>
        </div>

        <!-- Bản đồ bên phải -->
        <div class="col-md-6">
            <h3 class="mb-4">Bản đồ</h3>
            <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4400888426736!2d106.70042487585688!3d10.777724389372085!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f3b25b3f4f5%3A0x11be1421f11c4dc2!2zUXXDoW4gMiwgS2h1IEtow6FuZywgUXXDoW4gMSwgVGjhuq1uaCBwaOG7kSBIw6AgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1sen!2s!4v1688388121875!5m2!1sen!2s"
                    width="100%"
                    height="350"
                    style="border:0;"
                    allowfullscreen=""
                    loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>
    </div>
</div>
<!-- Contact Section End -->



<jsp:include page="layout/footer.jsp" />


<!-- JavaScript Libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="/lib/easing/easing.min.js"></script>
<script src="/lib/waypoints/waypoints.min.js"></script>
<script src="/lib/lightbox/js/lightbox.min.js"></script>
<script src="/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="/js/main.js"></script>
</body>

</html>