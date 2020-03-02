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
    <title>view student</title>
</head>
<body>
<h1>student details</h1>
<p>
    <a href="/student">Back to student list</a>
</p>
<table>
    <tr>
        <td>Id: </td>
        <td>${requestScope["student"].getId()}</td>
    </tr>
    <tr>
        <td>Name: </td>
        <td>${requestScope["student"].getName()}</td>
    </tr>
    <tr>
        <td>Gender: </td>
        <td>${requestScope["student"].getGender()}</td>
    </tr>
    <tr>
        <td>Address: </td>
        <td>${requestScope["student"].getAddress()}</td>
    </tr>
</table>
</body>
</html>
