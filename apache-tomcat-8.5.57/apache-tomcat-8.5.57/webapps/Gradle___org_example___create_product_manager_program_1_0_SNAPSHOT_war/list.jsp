<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: toanl
  Date: 5/30/2022
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix=""%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>List Product</h3>

<table align="center" border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Detail</th>
        <th>Brand</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.detail}</td>
            <td>${product.brand}</td>
            <td><a href="">Update</a></td>
            <td><a href="">Delete</a></td>
        </tr> 
    </c:forEach>
</table>
</body>
</html>
