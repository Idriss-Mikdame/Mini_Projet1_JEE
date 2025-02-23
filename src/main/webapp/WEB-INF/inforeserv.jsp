<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.projet1.beans.Client" %>
<html>
<head>
    <title>Résultat de Réservation</title>
</head>
<body>
<h4 style="color: green">
    <%
        String message = (String) request.getAttribute("messag"); // Vérifier le bon nom
        if (message != null) {
    %>
    <%= message %>
    <%
        }
    %>
</h4>
    <%
        Client client = (Client) request.getAttribute("client");
    %>
<h5> Bienevenue Mr <%=client.getNom()%></h5>
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
<h4>Information sur votre reervation</h4>
<b>Type   : </b><%= client.getReservation().getType() %><br>
<b>Option : </b><%= client.getReservation().getOption() %><br>
<b>Prix   : </b><%= client.getReservation().getPrix() %><br>
</body>
</html>
