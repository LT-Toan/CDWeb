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
        <h1 class="fw-normal">About Us</h1>
        <p>
            <a href="/" class="text-dark">Trang chủ</a>
            <span class="text-dark">&nbsp;&gt;&nbsp;</span>
            <span class="text-success">About Us</span>
        </p>
    </div>
</div>
<div class="container my-5">
    <div class="" style="margin-left: 100px"><h1>Giới Thiệu</h1></div>

    <div style="margin-left: 100px; margin-top: 30px">
        <p>
            Được khơi nguồn cảm hứng từ niềm trân quý nghệ thuật trên trang phục và mong muốn tạo nên một điểm đến mua sắm tin cậy các
            <strong>sản phẩm thời trang thiết kế cao cấp</strong>,
            <strong>LOGO Fashion</strong> - Website thương mại điện tử đầu tiên tại Việt Nam tập trung vào phân khúc này - Một sản phẩm đầy tâm huyết của chúng tôi.
        </p>
    </div>

    <div style="margin-left: 100px; margin-top: 30px">
        <p>
            <strong>LOGO Fashion</strong> cung cấp các
            <strong>sản phẩm thời trang thiết kế</strong>
            trực tiếp từ các nhà thiết kế có tên tuổi tại Việt Nam tới các khách hàng muốn khẳng định vị trí và phong cách cá nhân của mình trong xã hội thông qua cách ăn mặc.
            Với định vị và tiềm lực sẵn có về thời trang và công nghệ, công ty cam kết sẽ mang lại một môi trường trực tuyến đầy trực quan và chuyên nghiệp, tạo cảm hứng cho không chỉ khách hàng mà cả các nhà thiết kế mỗi lần ghé thăm.
            Chúng tôi định hướng trở thành kênh phân phối trực tuyến hàng đầu cho
            <strong>sản phẩm thời trang thiết kế cao cấp tại Việt Nam</strong>!
        </p>
    </div>
</div>



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