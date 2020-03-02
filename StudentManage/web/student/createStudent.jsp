<%--
  Created by IntelliJ IDEA.
  User: devco
  Date: 3/2/2020
  Time: 3:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Create new student</title>
    <style>
        .message{
            color:red;
        }
    </style>
</head>
<body>
<h1>Create new student</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/student">Back to student list</a>
</p>
<form method="post">
    <fieldset>
        <legend>student information</legend>
        <table>
            <tr>
                <td>Code: </td>
                <td><input type="text" name="code" id="code"></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Gender: </td>
                <td><input type="text" name="gender" id="gender"></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><input type="text" name="address" id="address"></td>
            </tr>

            <tr>
                <td></td>
                <td><input type="submit" value="Create student"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
