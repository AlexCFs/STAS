<%--
  Created by IntelliJ IDEA.
  User: Curry
  Date: 4/27/2022
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vêtements</title>
</head>
<body>


<div class="flex-column-around cardib">
    <img src="images/robe%203.jfif" class="img-thumbnail" alt="...">
    <div class="bouton-chene"></div>
    <p class="dorer">Une jolie robe d'allaitement </p>
    <h2>Description
        Une jolie robe d'allaitement super pratique dans laquelle on se sent à l'aise !

        - Robe courte d'allaitement (peu aussi se porter durant la grossesse)
        - Manches longues
        - Col rond
        - Haut en maille stretch avec lien à nouer
        - Elastique sous poitrine
        - Bas en maille crêpée avec motif à fleurs
        - Longueur dos : 92 cm environ

        - Notre mannequin porte une taille S et mesure 1m77</h2>
    <div class="flex-column-around div-list-deroulante">
        <label for="couleur" class="dorer"> choisissez la couleur</label>
        <select name="couleur" id="couleur" autofocus></select>
    </div>
    <a href="#">
        <button class="btn" type="button">Acheter</button>
    </a>

</div>
<div class="flex-column-around cardib">
    <img src="images/robe%204.jfif" class="img-thumbnail" alt="...">
    <div class="bouton-chene"></div>
    <p class="dorer"> Robe avec tulle à col carré évasé </p>
    <div class="flex-column-around div-list-deroulante">
        <label for="couleur" class="dorer"> choisissez la couleur</label>
        <select name="couleur" id="couleur2"></select>
    </div>
    <a href="#">
        <button class="btn" type="button">Acheter</button>
    </a>

</div>
<div class="flex-column-around cardib">
    <img src="images/robe%205.jfif" class="img-thumbnail" alt="...">
    <div class="bouton-chene"></div>
    <p class="dorer"> Robes femme Camaieu </p>
    <div class="flex-column-around div-list-deroulante">
        <label for="couleur" class="dorer"> choisissez la couleur</label>
        <select name="couleur" id="couleur3"></select>
    </div>
    <a href="#">
        <button class="btn" type="button">Acheter</button>
    </a>
</div>

</body>
</html>
