<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>ToDo List4</title>
    <style>
        body {
            margin: 10px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 30px;
            color: #51455e;
            background-color: #d3c2c6; /* pastel pink */
        }

        a {
            display: inline-block;
            font-size: 20px;
            padding: 10px 10px;
            background-color: #a3c59f; /* pastel green */
            color: #51455e;
            border-radius: 50px; /* round corners */
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #b0a2c0; /* slightly darker pastel green */
        }

        table {
            width: 90%;
            padding: 10px 10px;
            border-radius: 50px;
            border-collapse: separate;
            border-spacing: 3px;
            font-size: 15px;
            table-layout: fixed;
            word-wrap: break-word;
            border: none;
            background-color: #d3e7d3; /* pastel green */
            text-align: center;
        }
        table, th, td {
            border: none;
        }
        table tr:first-child {
            border: none;
            border-radius: 50px;
            font-size: 20px;
        }
        Header{
            margin: 10px;
            font-size: 30px;
            background-color: #b0a2c0; /* pastel green */
            text-align: center;
        }
        footer{
            font-size: 10px;
            background-color: #b0a2c0; /* pastel green */
            text-align: center;
        }

    </style>
</head>
<body>
<center>
    <header>
        <h1>ToDo List 4</h1>
    </header>

    <h2>
        <a href="new">Add New ToDo</a>
        &nbsp;&nbsp;&nbsp;
        <a href="list">List All</a>

    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>What to do?</h2></caption>
        <tr>
            <th>ID</th>
            <th>Description</th>
            <th>Is Done?</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.description}" /></td>
                <td><c:out value="${user.is_done == 1 ? 'Yes' : 'No'}" /></td>

                <td>
                    <a href="edit?id=<c:out value='${user.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="delete?id=<c:out value='${user.id}' />">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<footer>
    <h3>By Fernanda Silva - https://github.com/fe-fs</h3>
</footer>

</body>
</html>