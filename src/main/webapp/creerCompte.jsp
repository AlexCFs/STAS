<%--
  Created by IntelliJ IDEA.
  User: SUN
  Date: 25/04/2022
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CreerUNcompte</title>
</head>
<body>
<p>formulaire</p>
<form action="CreationCompte"  method="post">

    <label id="name">name :</label><br>
    <input type="text" id="name" name="name" value=""><br>
    <label id="email"> adresse d'email: </label><br>
    <input type="text" id="email" name="email" value="" ><br>

    <input type="submit" value="valider"/>


</form>

</body>
</html>
