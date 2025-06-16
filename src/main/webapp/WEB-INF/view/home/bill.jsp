<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hóa đơn</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4" style="text-align: center">HÓA ĐƠN</h2>

    <h4 style="text-align: center">Thông tin người nhận</h4>
    <p style="text-align: center"><strong>Họ tên:</strong> ${orderDTO.receiverName}</p>
    <p style="text-align: center"><strong>Địa chỉ:</strong> ${orderDTO.receiverAddress}</p>
    <p style="text-align: center"><strong>Số điện thoại:</strong> ${orderDTO.receiverPhone}</p>
    <p style="text-align: center"><strong>Ghi chú:</strong> ${orderDTO.receiverNote}</p>

    <hr>

    <h4 style="text-align: center">Chi tiết đơn hàng</h4>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${cartItems}">
            <tr>
                <td>${item.productName}</td>
                <td><fmt:formatNumber value="${item.price}" type="number" /> đ</td>
                <td>${item.quantity}</td>
                <td><fmt:formatNumber value="${item.price * item.quantity}" type="number" /> đ</td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="3" class="text-end"><strong>Tổng cộng:</strong></td>
            <td><fmt:formatNumber value="${totalPrice}" type="number" /> đ</td>
        </tr>
        </tbody>
    </table>

    <a href="/" class="btn btn-primary">Quay lại trang chủ</a>
</div>
</body>
</html>
