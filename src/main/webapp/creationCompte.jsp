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
    String nom =(String)request.getAttribute("nom");
    String prenom =(String)request.getAttribute("prenom");
    String telephone =(String)request.getAttribute("telephone");
    String adresse =(String)request.getAttribute("adresse");
    String codePostal =(String)request.getAttribute("codePostal");
    String ville =(String)request.getAttribute("ville");
    String email= (String)request.getAttribute("email");
    String mdp= (String)request.getAttribute("mdp");
    //ici, on a déjà récupérer deux valeurs, donc il faut les injecter dans la database maintenant

    Client c1= new Client();
    c1.setId(0);
    c1.setNom(nom);
    c1.setNom(prenom);
    c1.setNom(telephone);
    c1.setNom(adresse);
    c1.setNom(codePostal);
    c1.setNom(ville);
    c1.setNom(email);
    c1.setEmail(mdp);

    // client est créé donc, maintenant il faut envoyer ces infos vers la database

    ClientDAO dao=new ClientDAOImp();
    dao.insert(c1);
%>

<h2> l'utilisateur est ajouté dans la base de données </h2>

</body>
</html>
