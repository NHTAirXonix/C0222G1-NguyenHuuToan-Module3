<%--
  Created by IntelliJ IDEA.
  User: toanl
  Date: 5/27/2022
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1" width="600px">
        <tr>
            <th>Tên</th>
            <th>Ngày Sing</th>
            <th>Địa Chỉ</th>
            <th>Ảnh</th>
        </tr>
        <c:forEach items="${listCustomer}" var="customer" varStatus="toan">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.birthday}</td>
                <td>${customer.adress}</td>
                <td><img style="height: 50px;width: 50px" src="${customer.image}" alt=""></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
