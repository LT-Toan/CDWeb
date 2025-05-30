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
        <h1 class="fw-normal">Tất cả sản phẩm</h1>
        <p>
            <a href="/" class="text-dark">Trang chủ</a>
            <span class="text-dark">&nbsp;&gt;&nbsp;</span>
            <span class="text-success">Tất cả sản phẩm</span>
        </p>
    </div>
</div>

<div class="container my-5">
    <div class="row justify-content-center g-4">
        <!-- Loại 1: Truyền thống -->
        <div class="col-6 col-sm-4 col-md-2">
            <div class="position-relative">
                <img src="/images/product/aodaicachtan.jpg" class="img-fluid rounded-3" style="height: 300px; object-fit: cover;">
                <div class="position-absolute bottom-0 start-0 w-100 bg-dark bg-opacity-50 text-white text-center py-2">
                    <h5 class="mb-1">120</h5>
                    <small>Truyền thống</small>
                </div>
            </div>
        </div>

        <!-- Loại 2: Hiện đại -->
        <div class="col-6 col-sm-4 col-md-2">
            <div class="position-relative">
                <img src="/images/product/aodaicachtan.jpg" class="img-fluid rounded-3" style="height: 300px; object-fit: cover;">
                <div class="position-absolute bottom-0 start-0 w-100 bg-dark bg-opacity-50 text-white text-center py-2">
                    <h5 class="mb-1">95</h5>
                    <small>Hiện đại</small>
                </div>
            </div>
        </div>

        <!-- Loại 3: Cách tân -->
        <div class="col-6 col-sm-4 col-md-2">
            <div class="position-relative">
                <img src="/images/product/aodaicachtan.jpg" class="img-fluid rounded-3" style="height: 300px; object-fit: cover;">
                <div class="position-absolute bottom-0 start-0 w-100 bg-dark bg-opacity-50 text-white text-center py-2">
                    <h5 class="mb-1">70</h5>
                    <small>Cách tân</small>
                </div>
            </div>
        </div>

        <!-- Loại 4: Công sở -->
        <div class="col-6 col-sm-4 col-md-2">
            <div class="position-relative">
                <img src="/images/product/aodauhong.jpg" class="img-fluid rounded-3" style="height: 300px; object-fit: cover;">
                <div class="position-absolute bottom-0 start-0 w-100 bg-dark bg-opacity-50 text-white text-center py-2">
                    <h5 class="mb-1">110</h5>
                    <small>Công sở</small>
                </div>
            </div>
        </div>

        <!-- Loại 5: Học sinh -->
        <div class="col-6 col-sm-4 col-md-2">
            <div class="position-relative">
                <img src="/images/product/aodauhong.jpg" class="img-fluid rounded-3" style="height: 300px; object-fit: cover;">
                <div class="position-absolute bottom-0 start-0 w-100 bg-dark bg-opacity-50 text-white text-center py-2">
                    <h5 class="mb-1">80</h5>
                    <small>Học sinh</small>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container my-5">
    <div class="row g-4">
        <div class="col-3">
            <form id="filterForm" action="/shop" method="get">
                <!-- LOẠI SẢN PHẨM (categoryIds) -->
                <h4>LOẠI SẢN PHẨM</h4>
                <div class="rounded-border-box" style="margin-top: 30px">
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="loai1" name="categoryIds" value="1">
                        <label class="form-check-label" for="loai1">Công sở</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="loai2" name="categoryIds" value="2">
                        <label class="form-check-label" for="loai2">Học sinh</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="loai3" name="categoryIds" value="3">
                        <label class="form-check-label" for="loai3">Mùa hè</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="loai4" name="categoryIds" value="4">
                        <label class="form-check-label" for="loai4">Dạo phố</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="loai5" name="categoryIds" value="5">
                        <label class="form-check-label" for="loai5">Thu đông</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="loai6" name="categoryIds" value="6">
                        <label class="form-check-label" for="loai6">Thể thao</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="loai7" name="categoryIds" value="7">
                        <label class="form-check-label" for="loai7">Dự tiệc</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="loai8" name="categoryIds" value="8">
                        <label class="form-check-label" for="loai8">Đồ mặc ở nhà</label>
                    </div>

                </div>

                <!-- CHẤT LIỆU (materials) -->
                <h4 style="margin-top: 40px;">CHẤT LIỆU</h4>
                <div class="rounded-border-box" style="margin-top: 10px;">
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu1" name="materials" value="Cotton">
                        <label class="form-check-label" for="chatlieu1">Cotton</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu2" name="materials" value="Vải Polyester">
                        <label class="form-check-label" for="chatlieu2">Vải Polyester</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu3" name="materials" value="Vải thun">
                        <label class="form-check-label" for="chatlieu3">Vải thun</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu4" name="materials" value="Vải Kaki">
                        <label class="form-check-label" for="chatlieu4">Vải Kaki</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu5" name="materials" value="Lụa">
                        <label class="form-check-label" for="chatlieu5">Lụa</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu6" name="materials" value="Denim">
                        <label class="form-check-label" for="chatlieu6">Denim</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu7" name="materials" value="Fleece">
                        <label class="form-check-label" for="chatlieu7">Fleece </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu8" name="materials" value="Nylon">
                        <label class="form-check-label" for="chatlieu8">Nylon</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu9" name="materials" value="Ren">
                        <label class="form-check-label" for="chatlieu9">Ren</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="chatlieu10" name="materials" value="Flannel">
                        <label class="form-check-label" for="chatlieu10">Flannel</label>
                    </div>
                </div>

                <!-- SIZE (sizes) -->
                <h4 style="margin-top: 40px;">SIZE</h4>
                <div class="rounded-border-box" style="margin-top: 10px;">
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="sizeS" name="sizes" value="S">
                        <label class="form-check-label" for="sizeS">S</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="sizeM" name="sizes" value="M">
                        <label class="form-check-label" for="sizeM">M</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="sizeL" name="sizes" value="L">
                        <label class="form-check-label" for="sizeL">L</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="sizeX" name="sizes" value="X">
                        <label class="form-check-label" for="sizeX">X</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="checkbox" id="sizeXL" name="sizes" value="XL">
                        <label class="form-check-label" for="sizeXL">XL</label>
                    </div>
                </div>

                <!-- MỨC GIÁ (minPrice, maxPrice) -->
                <h4 style="margin-top: 40px;">MỨC GIÁ</h4>
                <div class="rounded-border-box" style="margin-top: 10px;">
                    <!-- Dùng radio để chọn khoảng giá -->
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="radio" name="priceRange" id="gia1" value="0-100000">
                        <label class="form-check-label" for="gia1">Giá dưới 100.000đ</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="radio" name="priceRange" id="gia2" value="100000-200000">
                        <label class="form-check-label" for="gia2">100.000đ - 200.000đ</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="radio" name="priceRange" id="gia3" value="200000-300000">
                        <label class="form-check-label" for="gia3">200.000đ - 300.000đ</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="radio" name="priceRange" id="gia4" value="300000-500000">
                        <label class="form-check-label" for="gia4">300.000đ - 500.000đ</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="radio" name="priceRange" id="gia5" value="500000-1000000">
                        <label class="form-check-label" for="gia5">500.000đ - 1.000.000đ</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input rounded-circle" type="radio" name="priceRange" id="gia6" value="1000000-999999999">
                        <label class="form-check-label" for="gia6">Giá trên 1.000.000đ</label>
                    </div>
                </div>

                <!-- MÀU SẮC (colors) -->
                <h4 style="margin-top: 40px;">MÀU SẮC</h4>
                <div class="color-options">
                    <label class="color-option" title="Đỏ">
                        <input type="checkbox" name="colors" value="Đỏ" id="colorRed" />
                        <span class="color-circle color-red"></span>
                    </label>
                    <label class="color-option" title="Trắng">
                        <input type="checkbox" name="colors" value="Trắng" id="colorWhite" />
                        <span class="color-circle color-white"></span>
                    </label>
                    <label class="color-option" title="Đen">
                        <input type="checkbox" name="colors" value="Đen" id="colorBlack" />
                        <span class="color-circle color-black"></span>
                    </label>
                    <label class="color-option" title="Vàng">
                        <input type="checkbox" name="colors" value="Vàng" id="colorYellow" />
                        <span class="color-circle color-yellow"></span>
                    </label>
                    <label class="color-option" title="Tím">
                        <input type="checkbox" name="colors" value="Tím" id="colorPurple" />
                        <span class="color-circle color-purple"></span>
                    </label>
                </div>

                <div class="color-options">
                    <label class="color-option" title="Xanh ngọc">
                        <input type="checkbox" name="colors" value="Xanh ngọc" id="colorTurquoise" />
                        <span class="color-circle color-turquoise"></span>
                    </label>
                    <label class="color-option" title="Nâu">
                        <input type="checkbox" name="colors" value="Nâu" id="colorBrown" />
                        <span class="color-circle color-brown"></span>
                    </label>
                    <label class="color-option" title="Cam">
                        <input type="checkbox" name="colors" value="Cam" id="colorOrange" />
                        <span class="color-circle color-orange"></span>
                    </label>
                    <label class="color-option" title="Hồng">
                        <input type="checkbox" name="colors" value="Hồng" id="colorPink" />
                        <span class="color-circle color-pink"></span>
                    </label>
                    <label class="color-option" title="Xanh lá">
                        <input type="checkbox" name="colors" value="Xanh lá" id="colorGreen" />
                        <span class="color-circle color-green"></span>
                    </label>

                </div>

                <div style="margin-top: 50px; text-align: left;">
                    <button type="submit" class="btn btn-outline-primary">Lọc</button>
                </div>
            </form>

        </div>

        <div class="col-9">
            <h4 class="">PRODUCTS</h4>
            <div class="tab-content">
                <div id="tab-1" class="tab-pane fade show p-0 active">
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-4">
                                <c:forEach var="product" items="${product}">
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="rounded position-relative fruite-item">
                                            <div class="fruite-img">
                                                <a href="/detail/${product.id}">
                                                    <img src="/images/product/${product.imageUrl}" class="img-fluid w-100 rounded-top" alt="">
                                                </a>
                                            </div>
                                            <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                <h5 class="product-name mb-3">${product.name}</h5>
                                                <div class="d-flex justify-content-between flex-lg-wrap">
                                                    <p class="text-dark fs-5 fw-bold mb-0">${product.price} đ</p>
                                                    <form action="/add-product-to-cart/${product.id}" method="post">
                                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                        <button type="submit" class="btn border border-secondary rounded-pill px-3 text-primary">
                                                            <i class="fa fa-shopping-bag me-2 text-primary"></i> Thêm vào giỏ hàng
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Hero End -->


<jsp:include page="layout/footer.jsp" />


<!-- JavaScript Libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="/lib/easing/easing.min.js"></script>
<script src="/lib/waypoints/waypoints.min.js"></script>
<script src="/lib/lightbox/js/lightbox.min.js"></script>
<script src="/lib/owlcarousel/owl.carousel.min.js"></script>
<script>
    // JS để convert priceRange radio thành minPrice và maxPrice input ẩn trước submit
    document.getElementById('filterForm').addEventListener('submit', function (e) {
        const selectedPrice = document.querySelector('input[name="priceRange"]:checked');
        if (selectedPrice) {
            const [min, max] = selectedPrice.value.split('-');
            // Tạo input ẩn để gửi minPrice
            const minPriceInput = document.createElement('input');
            minPriceInput.type = 'hidden';
            minPriceInput.name = 'minPrice';
            minPriceInput.value = min;
            this.appendChild(minPriceInput);

            // Tạo input ẩn để gửi maxPrice
            const maxPriceInput = document.createElement('input');
            maxPriceInput.type = 'hidden';
            maxPriceInput.name = 'maxPrice';
            maxPriceInput.value = max;
            this.appendChild(maxPriceInput);
        }
    });
</script>


<!-- Template Javascript -->
<script src="/js/main.js"></script>
</body>

</html>