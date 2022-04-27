<%@ page import="beans.Produit" %>
<%@ page import="ProduitDAO.ProduitDAOImp" %>
<%@ page import="ProduitDAO.ProduitDAO" %><%--
  Created by IntelliJ IDEA.
  User: SUN
  Date: 27/04/2022
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="Css/Boostrap_css/bootstrap.min.css">
    <link rel="stylesheet" href="Css/modif_css/modif.css">
    <title>AddProduct</title>
</head>
<body>
<%

    String categorie =(String)request.getAttribute("categorie");
    String nomProduit=(String)request.getAttribute("nomProduit");
    String description =(String)request.getAttribute("description");
    String prix = (String)request.getAttribute("prix");
    String quantite = (String) request.getAttribute("quantite");

    Produit p= new Produit();
    p.setIdProduit(0);
    p.setCategorie(categorie);
    p.setNomProduit(nomProduit);
    p.setDescription(description);
    double prix1= Double.parseDouble(prix);
    p.setPrix(prix1);
    int quantite1=Integer.parseInt(quantite);
    p.setQuantite(quantite1);


    //pour tester où est le problème
    System.out.println(categorie);
    System.out.println(prix);
    System.out.println(description);
    System.out.println(quantite);

    ProduitDAO dao=new ProduitDAOImp();
    dao.insertProduct(p);

    //une fois ajouté dans la base de produit, on dirige diretement dans la base de stockage.



%>
<h2> le produit est ajouté dans la database, veuillez vérifier </h2>
<a href="stockageProduit.jsp">
    <button class="btn" type="button">click on</button>
</a>

</body>
</html>
