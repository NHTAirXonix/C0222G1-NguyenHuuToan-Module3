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
<h1 style="text-align: center">List Product</h1>

<a  href="/product?action=add"><p style="text-align: center">Create product</p></a>
<a  href="/product?action=edit"><p style="text-align: center">Update product</p></a>
<a  href="/product?action=delete"><p style="text-align: center">Delete product</p></a>
<a  href="/product?action=search"><p style="text-align: center">Search product</p></a>

<table align="center" border="1" style="border-collapse:  collapse">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Detail</th>
        <th>Brand</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach var="product" items="${productList}" varStatus="status">
        <tr>
            <td>${product.id}</td>
            <td><a href="">${product.name}</a></td>
            <td>${product.price}</td>
            <td>${product.detail}</td>
            <td>${product.brand}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>