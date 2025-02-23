<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.example.projet1.beans.Client" %><%--
  Created by IntelliJ IDEA.
  User: Admine
  Date: 23/02/2025
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        b{
            color: green;
        }
    </style>
</head>
<body>

<h1>client page</h1>
<b  >
    <%
        String mesage  = (String) request.getAttribute("message");
        if (mesage != null){
            PrintWriter a = response.getWriter();
            a.println(mesage);
        }
    %>
    <%
        Client client = (Client) request.getAttribute("client");
    %>
</b>
<table border="1">
    <tr>
        <td>Nom :</td>
        <td><%= client.getNom()%></td>
    </tr>
    <tr>
        <td>Prenom :</td>
        <td><%= client.getPrenom()%></td>
    </tr>
    <tr>
        <td>Telephone :</td>
        <td><%= client.getTelephone()%></td>
    </tr>
    <tr>
        <td>Emaile :</td>
        <td><%= client.getEmail()%></td>
    </tr>
</table>
</body>
</html>
