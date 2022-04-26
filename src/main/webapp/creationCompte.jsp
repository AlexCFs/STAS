<%@ page import="beans.Client" %>
<%@ page import="beans.ClientDAO.ClientDAO" %>
<%@ page import="beans.ClientDAO.ClientDAOImp" %><%--
  Created by IntelliJ IDEA.
  User: SUN
  Date: 25/04/2022
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>creationCompte</title>
</head>
<body>
<%
    String name =(String)request.getAttribute("name");
    String email= (String)request.getAttribute("email");
    //ici, on a déjà récupérer deux valeurs, donc il faut les injecter dans la database maintenant

    Client c1= new Client();
    c1.setCid(0);
    c1.setName(name);
    c1.setEmail(email);

    // client est créé donc, maintenant il faut envoyer ces infos vers la database

    ClientDAO dao=new ClientDAOImp();
    dao.insert(c1);
%>

<h2> l'utilisateur est ajouté dans la base de données </h2>

</body>
</html>
