<!--Modulo 07 - Assignment
* Java Todo List Application with Hibernate and MySQL database
* Name: Fernanda Frederico Ribeiro da Silva
* Class: Software Development II CEN-4025C-24671
* Professor: Walauskis

Error.jsp page
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Error</title>
</head>
<body>
<center>
    <h1>Error</h1>
    <h2><%=exception.getMessage() %><br/> </h2>
</center>
</body>
</html>