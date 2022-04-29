<%@ page import="beans.Client" %>
<%@ page import="ClientDAO.ClientDAO" %>
<%@ page import="ClientDAO.ClientDAOImp" %><%--
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
    <link rel="stylesheet" href="Css/style.css">
    <link rel="stylesheet" href="Css/Boostrap_css/bootstrap.min.css">
    <link rel="stylesheet" href="Css/modif_css/modif.css">
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
    c1.setPrenom(prenom);
    c1.setTelephone(telephone);
    c1.setAdresse(adresse);
    c1.setCodePostal(codePostal);
    c1.setVille(ville);
    c1.setEmail(email);
    c1.setMdp(mdp);

    // client est créé donc, maintenant il faut envoyer ces infos vers la database

    ClientDAO dao=new ClientDAOImp();
    dao.insert(c1);
%>

<h2> créaction de compte réussie!!!!</h2> <br> <br>

<h2>pour revenir à la page d'accueil</h2>
<a href="index.jsp">
    <button class="btn" type="button">page d'accueil</button>
</a>



</body>
</html>
