<!--Modulo 07 - Assignment
* Java Todo List Application with Hibernate and MySQL database
* Name: Fernanda Frederico Ribeiro da Silva
* Class: Software Development II CEN-4025C-24671
* Professor: Walauskis

Add Item to ToDo List   user-form.jsp page
-->

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
    <h1>ToDo</h1>
    <h2>
        <a href="new">Add New ToDo</a>
        &nbsp;&nbsp;&nbsp;
        <a href="list">List All</a>

    </h2>
</center>
<div align="center">
    <c:if test="${entity != null}">
    <form action="update" method="post">
        </c:if>
        <c:if test="${entity == null}">
        <form action="insert" method="post">
            </c:if>
            <table border="1" cellpadding="5">
                <caption>
                    <h2>
                        <c:if test="${entity != null}">
                            Edit
                        </c:if>
                        <c:if test="${entity == null}">
                            Add New
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${entity != null}">
                    <input type="hidden" name="id" value="<c:out value='${entity.id}' />" />
                </c:if>
                <tr>
                    <th>Description: </th>
                    <td>
                        <input type="text" name="description" size="50"
                               value="<c:out value='${entity.description}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Is Done: </th>
                    <td>

                        <input type="radio" id="yes" name="is_done" value="1">
                        <label for="yes">Yes</label><br>
                        <input type="radio" id="no" name="is_done" value="0">
                        <label for="no">No</label><br>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save" />
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>