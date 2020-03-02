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
    <style>
        .tr{
            color: blue;
        }
        tr{
            text-align: center;
            text-decoration: none;
        }
    </style>
</head>
<body>
<h1>Student List</h1>
<p>
    <a href="/student?action=create" >Create new student</a>

</p>
<table border="20" style="color: red;border-color: green">
    <tr class="tr">
        <td>Id</td>
        <td>Name</td>
        <td>gender</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
        <td>View Infor</td>
    </tr>
    <c:forEach items='${requestScope["students"]}' var="student">
        <tr>
            <td style="color:#e70e1c;">${student.getCode()}</td>

            <td style="color: rebeccapurple">${student.getName()}</td>
            <td style="color: #ff848c">${student.getGender()}</td>
            <td class="tr">${student.getAddress()}</td>
            <td style="color: chocolate"><a href="/student?action=edit&id=${student.getId()}">edit</a></td>
            <td><a href="/student?action=delete&id=${student.getId()}">delete</a></td>
            <td style="color: #c629f5"><a href="/student?action=view&id=${student.getId()}">view</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
