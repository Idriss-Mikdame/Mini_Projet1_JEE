<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulaire d'inscription</title>
    <style>
        b{
            color: red;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 350px;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
        }
        input[type="text"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2 style="text-align: center;">Inscriiption</h2>
    <form action="client" method="post">
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
                <td><input type="text" name="email" required></td>
            </tr>
            <tr>
                <td><strong>Téléphone :</strong></td>
                <td><input type="text" name="phone" required></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="submit" value="Envoyer"></td>
            </tr>
        </table>
    </form>
</div>
<br>
<b >

<%
    String mesage  = (String) request.getAttribute("message");
    if (mesage != null){
        PrintWriter a = response.getWriter();
        a.println(mesage);
    }
%>
</b>
</body>
</html>
