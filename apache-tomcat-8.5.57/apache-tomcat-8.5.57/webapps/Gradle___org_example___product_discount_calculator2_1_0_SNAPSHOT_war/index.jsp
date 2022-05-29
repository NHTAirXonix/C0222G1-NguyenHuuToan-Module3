<%--
  Created by IntelliJ IDEA.
  User: toanl
  Date: 5/26/2022
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
  <style>
    #content {
      width: 450px;
      height: 250px;
      margin: auto;
      padding: 20px;
      background-color: white;
      border: solid navy 2px;
      border-radius: 10px;
      display: inline-block;
    }

    label {
      width: 10em;
      padding-right: 1em;
      float: left;
    }

    #data input {
      float: left;
      width: 15em;
      margin-bottom: .5em;
    }

    body{
      text-align: center;
      width: 100%;
      height: 100%;
      margin: 0;
    }
  </style>
</head>
<body >
<div id="content">
  <h1 style="text-align: center">Product Discount Calculator</h1>
  <form action="display-discount" method="post">
    <div id="data">
      <label>Product Description</label>
      <input type="text" name="description">
      <br>
      <label>Price</label>
      <input type="text" name="price">
      <br>
      <label>Discount Percent</label>
      <input type="text" name="discount">
    </div>
    <div>
      <br>
      <input type="submit" value="Calculate Discount">
    </div>
  </form>
</div>
</body>
</html>
