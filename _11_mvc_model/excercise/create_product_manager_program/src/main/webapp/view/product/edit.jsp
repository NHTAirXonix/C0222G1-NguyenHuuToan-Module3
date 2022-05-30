<%--
  Created by IntelliJ IDEA.
  User: toanl
  Date: 5/30/2022
  Time: 3:52 PM
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
<form align="center" action="/product?action=edit" method="post" style="border: black solid 1px">
    <table>
        <tr>
            <td>Index</td>
            <td><input type="text" name="idIndex" pl/><br></td>
        </tr>

        <tr>
            <td>Id</td>
            <td><input type="text" name="id"><br></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"><br></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" name="price"><br></td>
        </tr>
        <tr>
            <td>Detail</td>
            <td><input type="text" name="detail"><br></td>
        </tr>
        <tr>
            <td>Brand</td>
            <td><input type="text" name="brand"><br></td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Lưu</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
