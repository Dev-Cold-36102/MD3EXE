<%--
  Created by IntelliJ IDEA.
  User: devco
  Date: 3/2/2020
  Time: 3:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Students</title>
</head>
<body>
<h1>Student List</h1>
<p>
    <a href="/student?action=create" >Create new student</a>

</p>
<table border="20">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>gender</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["students"]}' var="student">
        <tr>
            <td><a href="/student?action=view&id=${student.getId()}">${student.getId()}</a></td>

            <td>${student.getName()}</td>
            <td>${student.getGender()}</td>
            <td>${student.getAddress()}</td>
            <td><a href="/student?action=edit&id=${student.getId()}">edit</a></td>
            <td><a href="/student?action=delete&id=${student.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
