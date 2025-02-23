<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Réservation de Chambre</title>



</head>
<body>


    <h1><strong>Réservation de Chambre</strong></h1>
    <form action="reservation" method="post">
        <table>
            <tr>
                <td><strong>Nom :</strong></td>
                <td><input type="text" name="nom" required></td>
            </tr>
            <tr>
                <td><strong>Prénom :</strong></td>
                <td><input type="text" name="prenom" required></td>
            </tr>
            <tr>
                <td><strong>Email :</strong></td>
                <td><input type="email" name="email" required></td>
            </tr>
            <tr>
                <td><strong>Téléphone :</strong></td>
                <td><input type="tel" name="phone" required></td>
            </tr>
            <tr>
                <td><strong>Type :</strong></td>
                <td>
                    <select name="type">
                        <option value="Chamber A">Chamber A</option>
                        <option value="Chamber B">Chamber B</option>
                        <option value="Chamber C">Chamber C</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><strong>Prix :</strong></td>
                <td><input type="text" placeholder="prix DH" name="prix"></td>
            </tr>
            <tr>
                <td><strong>Option :</strong></td>
                <td>
                    <select name="option">
                        <option value="Mer">Mer</option>
                        <option value="Jardin">Jardin</option>
                        <option value="piscine">Piscine</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td ><input type="submit" name="submit" value="Réserver Maintenant"></td>
            </tr>
        </table>
    </form>
<h1 style="color: red">
    <%
    String MSG = (String) request.getAttribute("messag");
    if (MSG != null){
        %>
    <%=MSG%>
   <%
       }
   %>
</h1>
</body>
</html>
