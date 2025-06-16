<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Dashboard - Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="/css/stylesAdmin.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp" />
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp" />
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Bảng điều khiển</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Tổng quan cửa hàng</li>
                </ol>

                <!-- Cards thống kê -->
                <div class="row">
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-primary text-white mb-4">
                            <div class="card-body">Tổng đơn hàng: </div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <span class="fs-4">${orderCount}</span>
                                <a class="small text-white stretched-link" href="/admin/order">
                                    Chi tiết
                                    <i class="fas fa-angle-right ms-1"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-success text-white mb-4">
                            <div class="card-body">Tổng sản phẩm: </div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <span class="fs-4">${productCount}</span>
                                <a class="small text-white stretched-link" href="/admin/products">
                                    Chi tiết
                                    <i class="fas fa-angle-right ms-1"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-warning text-white mb-4">
                            <div class="card-body">Người dùng:</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <span class="fs-4">${userCount}</span>
                                <span class="small">(${userNormalCount} Users - ${userAdminCount} Admin)</span>
                                <a class="small text-white stretched-link" href="/admin/users">
                                    Chi tiết
                                    <i class="fas fa-angle-right ms-1"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-danger text-white mb-4">
                            <div class="card-body">Tổng doanh thu:</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <span class="fs-4"><fmt:formatNumber value="${totalRevenue}" type="number" groupingUsed="true"/><span class="small"> VNĐ</span></span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Chart Placeholder -->
                <div class="row">
                    <div class="col-xl-6">
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-chart-area me-1"></i> Biểu đồ doanh thu</div>
                            <div class="card-body"><canvas id="revenueChart" width="100%" height="40"></canvas></div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-chart-bar me-1"></i> Đơn hàng theo tháng</div>
                            <div class="card-body"><canvas id="orderChart" width="100%" height="40"></canvas></div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp" />
    </div>
</div>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const revenueLabels = [];
    const revenueData = [];

    <c:forEach var="entry" items="${revenuePerDay}">
    revenueLabels.push("${entry.key}");
    revenueData.push(${entry.value});
    </c:forEach>

    new Chart(document.getElementById("revenueChart"), {
        type: 'line',
        data: {
            labels: revenueLabels,
            datasets: [{
                label: "Doanh thu (VNĐ)",
                data: revenueData,
                fill: true,
                backgroundColor: "rgba(54, 162, 235, 0.2)",
                borderColor: "rgba(54, 162, 235, 1)",
                tension: 0.3
            }]
        }
    });
</script>

<script>
    const orderLabels = [];
    const orderData = [];

    <c:forEach var="entry" items="${orderPerMonth}">
    orderLabels.push("${entry.key}");
    orderData.push(${entry.value});
    </c:forEach>

    new Chart(document.getElementById("orderChart"), {
        type: 'bar',
        data: {
            labels: orderLabels,
            datasets: [{
                label: "Đơn hàng theo tháng",
                data: orderData,
                backgroundColor: "rgba(255, 99, 132, 0.7)"
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>

</body>
</html>
