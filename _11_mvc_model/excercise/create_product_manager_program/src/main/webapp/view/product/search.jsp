<%--
  Created by IntelliJ IDEA.
  User: toanl
  Date: 5/30/2022
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/product">List Product</a>
<c:if test="${mess!=null}">
    <p>${mess}</p>
</c:if>
<form align="center" action="/product?action=search" method="post" style="border: black solid 1px">
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"><br></td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Search</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
