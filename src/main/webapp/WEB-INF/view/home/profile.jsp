<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Quản lý tài khoản</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4 text-center">Thông tin tài khoản</h2>

    <c:if test="${not empty param.success}">
        <div class="alert alert-success">Cập nhật tài khoản thành công!</div>
    </c:if>

    <%--@elvariable id="user" type=""--%>
    <form:form method="post" modelAttribute="user" action="/account/update">
        <form:hidden path="id"/>

        <div class="mb-3">
            <label for="fullName" class="form-label">Họ và tên</label>
            <form:input path="fullName" cssClass="form-control" id="fullName"/>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <form:input path="email" cssClass="form-control" id="email"/>
        </div>

        <div class="mb-3">
            <label for="newPassword" class="form-label">Mật khẩu mới (để trống nếu không thay đổi)</label>
            <input type="password" name="newPassword" class="form-control" id="newPassword"/>
        </div>

        <button type="submit" class="btn btn-primary">Cập nhật</button>
        <a href="/" class="btn btn-secondary">Quay lại trang chủ</a>
    </form:form>
</div>

<script src="/js/bootstrap.bundle.min.js"></script>
</body>
</html>
