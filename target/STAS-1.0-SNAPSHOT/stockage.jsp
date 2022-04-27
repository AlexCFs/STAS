<%--
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
</head>
<body>
<h1>Le stockage des produits</h1>
<br>
<table border="1px" align="center" width="50%">
    <tr>
        <th>pid</th>
        <th>produit</th>
        <th>prix</th>
        <th>quantité</th>
        <th>manipuler</th>
    </tr>
    <tr>
        <td>1</td>
        <td>Chaussettes</td>
        <td>2€</td>
        <td>1500</td>
        <td>
            <a href="delete.jsp"> delete </a>
            <a href="modify.jsp"> modify </a>

        </td>
    </tr>
    <tr>
        <td>2</td>
        <td>robe rouge</td>
        <td>200€</td>
        <td>500</td>
        <td>
            <a href="delete.jsp"> delete </a>
            <a href="modify.jsp"> modify </a>

        </td>

    </tr>

</table>

<p> Si vous voulez ajouter un article dans le stockage, veuillez cliquer sur le lien</p>
<a href="addProduit.jsp">ajouter un produit</a>


</body>
</html>
