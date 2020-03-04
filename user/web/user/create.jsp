<%--
  Created by IntelliJ IDEA.
  User: devco
  Date: 3/3/2020
  Time: 3:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>create user</title>
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
<h1>user manager</h1>
<h2>
    <a href="/users?action=view">list users</a>
</h2>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span style="color: red" class="message">${requestScope["message"]}</span>
    </c:if>
</p>

<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New User</h2>
            </caption>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45" value="${requestScope["name"]}"/>
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45" value="${requestScope["email"]}"/>
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country" id="country" size="15" value="${requestScope["country"]}"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input onclick="checkNull()" type="submit" value="Save" />
                </td>
            </tr>
        </table>
    </form>
</div>
<script src="../js/checkNull.js"></script>
</body>


</html>
