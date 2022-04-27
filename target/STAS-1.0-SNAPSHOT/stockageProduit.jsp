<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: SUN
  Date: 26/04/2022
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>StockageDesProduits</title>
    <link rel="stylesheet" href="Css/Boostrap_css/bootstrap.min.css">
    <link rel="stylesheet" href="Css/modif_css/modif.css">

</head>
<body>
<h1>Le stockage des produits</h1>
<br>
<table border="1px" align="center" width="50%">
    <tr>
        <th>pid</th>
        <th>categorie</th>
        <th>nom de produit</th>
        <th>description du produit</th>
        <th>prix</th>
        <th>quantité</th>

    </tr>

    <%
        //inialisation, on doit se conncecter à la table base

        String driverClass="org.mariadb.jdbc.Driver";

        Connection con=null;
        String nomUtilisateur ="root";
        String motDePass = "pass";
        String nomBase="stas";

        String connec ="jdbc:mariadb://localhost:3306/";
        connec += nomBase +"?user="+nomUtilisateur;
        connec += "&password="+motDePass;

        try {
            Class.forName(driverClass);
            con= DriverManager.getConnection(connec);
            Statement stat= con.createStatement();
            String sql= "SELECT * FROM produit";
            ResultSet rs=stat.executeQuery(sql);
            while (rs.next()){

    %>
    <tr>
        <td><%=rs.getInt("idProduit") %></td>
        <td><%=rs.getString("categorie") %></td>
        <td><%=rs.getString("nomProduit") %></td>
        <td><%=rs.getString("description") %></td>
        <td><%=rs.getDouble("prix") %></td>
        <td><%=rs.getInt("quantite") %></td>

    </tr>
    <%
            }

        }catch (Exception e){
            e.printStackTrace();

        }
    %>

</table>
<%--- ajouter 3 boutons pour effectuer des manipulations
---%>
<a href="ajoutProduitForm.jsp">
    <button class="btn" type="button">ajouter </button>
</a>

    <button class="btn" type="button" onclick="fctSupprimer();">supprimer</button>

<a href="---">
    <button class="btn" type="button">modifier</button>
</a>

<script>
    function fctSupprimer(){
        var pid= prompt("veuillez entrer le pid de produit que vous souhaites supprimer");
        alert ("le produit dont pid ="+ pid+"va être supprimé");
        console.log(pid);
    }


</script>


</body>
</html>
