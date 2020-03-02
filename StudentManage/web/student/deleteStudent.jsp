<%--
  Created by IntelliJ IDEA.
  User: devco
  Date: 3/2/2020
  Time: 3:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete</title>
</head>
<body>
<h1>Delete student</h1>
<p>
    <a href="/student">Back to student list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>student information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${requestScope["student"].getName()}</td>
            </tr>
            <tr>
                <td>Email: </td>
                <td>${requestScope["student"].getGender()}</td>
            </tr>
            <tr>
                <td>Address: </td>
                <td>${requestScope["student"].getAddress()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete student"></td>
                <td><a href="/student">Back to student list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
