<%--
  Created by IntelliJ IDEA.
  User: SUN
  Date: 25/04/2022
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TesterConnexion</title>
    <link rel="stylesheet" href="Css/modif_css/connexion.css">


</head>
<body>
<h2>Veuillez vous connecter </h2>
<form action="Connexion" method="post">

    <label id="name">E-mail</label><br>
    <input type="text" id="name" name="name" value=""><br>
    <label id="mdp">Mot de pass: </label><br>
    <input type="text" id="mdp" name="mdp" value=""><br>
    <input class="button" type="submit" value="Connexion" />
    <br>
    <br>
</body>
</html>
