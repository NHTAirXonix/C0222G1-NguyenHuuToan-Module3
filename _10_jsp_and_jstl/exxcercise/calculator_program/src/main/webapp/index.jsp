<%--
  Created by IntelliJ IDEA.
  User: toanl
  Date: 5/27/2022
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      .main{
        margin: auto;
        text-align: center;
        width: 50%;
        border: black solid 1px;
        padding: 10px;
      }

      label {
        width: 10em;
        padding-right: 1em;
        float: left;
        text-align: left;
      }
      option{
        width: 177px;
        border-radius: 5px;
      }
      input{
        width: 177px;
        border-radius: 5px;
      }

      select{
        width: 177px;
        border-radius: 5px;
      }
    </style>
  </head>
  <body>
  <div class="main">
    <h1>SIMPLE CALCULATOR</h1>
    <form action="calculator" method="post">
      <div id="data">
        <label>First parameters: </label>
        <input type="text" name="firstParameter">
        <br>
        <label>Operator: </label>
        <select name="operator" id="operator">
          <option value="Summation">Summation "+"</option>
          <option value="Subtraction">Subtraction "-"</option>
          <option value="Multiplication">Multiplication "*"</option>
          <option value="Division">Division "/"</option>
        </select>
        <br>
        <label>Second parameters: </label>
        <input type="text" name="secondParameter">
      </div>
      <div>
        <br>
        <input type="submit"  name="result"  value="Calculate">
      </div>
    </form>
  </div>
  </body>
</html>
