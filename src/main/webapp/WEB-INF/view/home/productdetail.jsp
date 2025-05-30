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
        <h1 class="product-name">${product.name}</h1>
        <p>
            <a href="/" class="text-dark">Trang chủ</a>
            <span class="text-dark">&nbsp;&gt;&nbsp;</span>
            <span class="text-success">Liên hệ</span>
            <span class="text-dark">&nbsp;&gt;&nbsp;</span>
        </p>
    </div>
</div>

<%--Detail Start--%>
<div class="container my-5">
    <div class="row">
        <!-- Cột trái: Ảnh sản phẩm -->
        <div class="col-md-6 text-center">
            <img src="/images/product/${product.imageUrl}" alt="${product.name}" class="img-fluid rounded" style="max-height: 400px;">
        </div>

        <!-- Cột phải: Thông tin sản phẩm -->
        <div class="col-md-6">
            <h2 class="mb-3">${product.name}</h2>
            <p class="text-muted mb-3">${product.description}</p>
            <h4 class="text-danger mb-4">${product.price} đ</h4>

            <!-- Số lượng -->
            <div class="mb-4 d-flex align-items-center">
                <label class="me-3">Số lượng:</label>
                <div class="input-group" style="width: 120px;">
                    <button class="btn btn-outline-secondary" type="button" onclick="decreaseQty()">-</button>
                    <input type="text" id="quantity" class="form-control text-center" value="1" readonly>
                    <button class="btn btn-outline-secondary" type="button" onclick="increaseQty()">+</button>
                </div>
            </div>

            <!-- Nút mua -->
            <form action="/detail/addtocart/${product.id}" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <input type="hidden" name="quantity" id="formQuantity" value="1">
                <button type="submit" class="btn btn-outline-success btn-lg px-5">
                    Mua
                </button>
            </form>
        </div>
    </div>
    <div class="row" style="margin-top: 60px;">
        <div class="col d-flex justify-content-center">
            <div style="border: 1px solid #24b612; display: inline-flex; align-items: center; padding: 10px 20px;">
                <h5 style="margin:0; font-weight: 300;">Thông tin sản phẩm</h5>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 70px;">
        <div class="col d-flex justify-content-center">
                <p style="margin:0; font-weight: 300;">Thông tin sản phẩm</p>
        </div>
    </div>

    <div class="row" style="margin-top: 100px;">
        <div class="col d-flex justify-content-center">
            <h3 style="margin:0; font-weight: 300;">CÓ THỂ BẠN SẼ THÍCH</h3>
        </div>
    </div>

    <!-- Slider hình ảnh -->
    <div class="row mt-4 justify-content-center align-items-center">
        <!-- Nút Prev -->
        <div class="col-auto">
            <button class="btn btn-outline-dark" onclick="slideLeft()">&#60;</button>
        </div>

        <!-- Ảnh sản phẩm -->
        <div class="col-10 overflow-hidden">
            <div id="imageContainer" class="d-flex transition" style="gap: 16px;">
                <!-- Duyệt danh sách sản phẩm -->
                <c:forEach var="p" items="${productList}">
                    <div class="image-item">
                        <img src="/images/product/${p.imageUrl}" alt="${p.name}" style="height: 150px; width: auto;" class="rounded">
                    </div>
                </c:forEach>
            </div>
        </div>

        <!-- Nút Next -->
        <div class="col-auto">
            <button class="btn btn-outline-dark" onclick="slideRight()">&#62;</button>
        </div>
    </div>






</div>

<%--Detail End--%>
<jsp:include page="layout/footer.jsp" />


<!-- JavaScript Libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="/lib/easing/easing.min.js"></script>
<script src="/lib/waypoints/waypoints.min.js"></script>
<script src="/lib/lightbox/js/lightbox.min.js"></script>
<script src="/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->

<!-- Script tăng giảm số lượng -->
<script>
    function increaseQty() {
        let qty = parseInt(document.getElementById("quantity").value);
        document.getElementById("quantity").value = qty + 1;
        document.getElementById("formQuantity").value = qty + 1;
    }

    function decreaseQty() {
        let qty = parseInt(document.getElementById("quantity").value);
        if (qty > 1) {
            document.getElementById("quantity").value = qty - 1;
            document.getElementById("formQuantity").value = qty - 1;
        }
    }
</script>

<script>
    let currentIndex = 0;
    const itemsToShow = 5;
    const itemWidth = 166; // 150px + 16px gap
    const container = document.getElementById('imageContainer');
    const totalItems = container.children.length;

    function slideRight() {
        if (currentIndex < totalItems - itemsToShow) {
            currentIndex++;
            updateSlide();
        }
    }

    function slideLeft() {
        if (currentIndex > 0) {
            currentIndex--;
            updateSlide();
        }
    }

    function updateSlide() {
        const offset = -currentIndex * itemWidth;
        container.style.transform = `translateX(${offset}px)`;
    }
</script>


<script src="/js/main.js"></script>
</body>

</html>