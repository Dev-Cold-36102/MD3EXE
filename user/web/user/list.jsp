<%--
  Created by IntelliJ IDEA.
  User: devco
  Date: 3/3/2020
  Time: 3:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">

    <title>list user</title>
    <style>
        td a{
            text-decoration: none;
        }
        a{
            text-decoration: none;
        }
    </style>

</head>
<body>
    <h1>User Management</h1>
    <h2 >
        <a href="/users?action=create" >Add New User</a>
    </h2>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span style="color: red" class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <button onclick="check()">hello</button>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
<%--<script language='JavaScript'>alert("sgfdshgf");</script>--%>
<%--<script src="../js/checkNull.js"></script>--%>
</html>
