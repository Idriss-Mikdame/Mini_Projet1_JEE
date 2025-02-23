<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Réservation de Chambre</title>
    <style>
        /* --- Style général --- */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe); /* Dégradé bleu */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* --- Style du formulaire --- */
        .form-container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #333;
            font-size: 22px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            font-size: 14px;
            color: #555;
        }

        /* --- Champs de saisie --- */
        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="number"],
        select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 2px solid #ccc;
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="tel"]:focus,
        input[type="number"]:focus,
        select:focus {
            border-color: #4facfe;
            outline: none;
            box-shadow: 0 0 8px rgba(79, 172, 254, 0.5);
        }

        /* --- Bouton Submit --- */
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: all 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #218838;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<div class="form-container">
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
                <td><input type="number" placeholder="prix DH" name="prix"></td>
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
                <td colspan="2"><input type="submit" name="submit" value="Réserver Maintenant"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
