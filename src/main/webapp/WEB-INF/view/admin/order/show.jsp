<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Dashboard - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="/css/stylesAdmin.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp" />

<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp" />
    <div id="layoutSidenav_content">
        <div class="container mt-5">
            <h2>Danh sách đơn hàng</h2>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Ngày tạo</th>
                    <th>Tên người nhận</th>
                    <th>Địa chỉ</th>
                    <th>SĐT</th>
                    <th>Ghi chú</th>
                    <th>Trạng thái</th>
                    <th>Tổng tiền</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="order" items="${orders}">
                    <tr>
                        <td>${order.id}</td>
                        <td><fmt:formatDate value="${order.createdDateAsDate}" pattern="dd-MM-yyyy HH:mm" /></td>
                        <td>${order.receiverName}</td>
                        <td>${order.receiverAddress}</td>
                        <td>${order.receiverPhone}</td>
                        <td>${order.receiverNote}</td>
                        <td>${order.status}</td>
                        <td><fmt:formatNumber value="${order.totalPrice}" type="number" groupingUsed="true"/><span class="small"> VNĐ</span></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <jsp:include page="../layout/footer.jsp" />
    </div>
</div>
</body>
</html>
