<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="Css/Boostrap_css/bootstrap.min.css">
    <link rel="stylesheet" href="Css/modif_css/modif.css">
    <meta charset=" utf-8"/>
    <link rel="icon" type="image/ico" href="images/Projet%20stas%20icone.png">
    <title>Livres</title>
</head>
<body>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="images/livreslide.jpg" alt="First slide">
        </div>
    </div>
</div>

<section>


    <div class="flex-column-around cardib">
        <img src="images/La-voie-humide.jpg" class="img-thumbnail" alt="...">
        <div class="bouton-chene"><p class="black"> 15 euro</p></div>
        <p class="dorer">La voie humide</p>
        <h6> Description :<br/>
            Ce récit politique et culturel aux antipodes d'une banale autobiographie de star du porno est un témoignage
            exceptionnel. Celui d'une femme libre, qui a trouvé à travers le sexe son épanouissement personnel.De la
            découverte de la sexualité aux films porno en tant qu'actrice, puis en tant que coréalisatrice avec Virginie
            Despentes de Baise-moi, en passant par le rock et la culture gothique.Coralie Trinh Thi bouscule les
            conventions pour dresser les contours d'une liberté sexuelle largement redéfinie.

            -Date de parution
            -17/03/2022

            -Editeur
            -Au diable vauvert

            -Format
            -12cm x 19cm

            -Nombre de pages
            -800

            - Notre mannequin porte une taille S et mesure 1m77</h6>
        <div class="flex-column-around div-list-deroulante">
            <label for="quantiteLivre1" class="dorer"> entrez la quantite</label>
            <input type="text" id="quantiteLivre1" name="quantiteLivre1" value="">
        </div>
        <a href="panier.jsp">
            <button class="btn" type="button">Acheter</button>
        </a>

    </div>

    <div class="flex-column-around cardib">
        <img src="images/livre2.jpg" class="img-thumbnail" alt="...">
        <div class="bouton-chene"><p class="black"> 16 euro</p></div>
        <p class="dorer">Le Rouge et le Noir</p>
        <h6> Description :<br/>
            Dossier pédagogique d'Anaïs Trahand et François Vanoosthuyse. Fils d'un charpentier installé dans une petite
            ville de province, Julien Sorel rêve d'autres horizons. Tour à tour précepteur, séminariste et secrétaire, le
            jeune homme s'élève peu à peu dans la société et découvre l'ardeur de passions défendues. Parcouru d'élans
            contradictoires, il suit un itinéraire semé d'embûches, qui ne saurait le mener qu'au drame. En dotant son
            personnage ambitieux et rebelle d'une âme romanesque, Stendhal transforme un récit d'apprentissage en
            véritable tragédie moderne. Dans le volume, de nombreuses activités d'appropriation et d'étude de la
            langue, ainsi qu'un cahier photos et un groupement de textes en lien avec le parcours associé « Le
            personnage de roman, esthétiques et valeurs » (Nouveaux programmes, Bac 2020).

        </h6>
        <div class="flex-column-around div-list-deroulante">
            <label for="quantiteLivre2" class="dorer"> entrez la quantite</label>
            <input type="text" id="quantiteLivre2" name="quantiteLivre2" value="">
        </div>
        <a href="panier.jsp">
            <button class="btn" type="button">Acheter</button>
        </a>

    </div>

    <div class="flex-column-around cardib">
        <img src="images/livre3.jpg" class="img-thumbnail" alt="...">
        <div class="bouton-chene"><p class="black"> 22 euro</p></div>
        <p class="dorer">Notre-Dame de Paris</p>
        <h6> Description :<br/>
            En 1831, Victor Hugo réinvente le Moyen Âge et élève un monument littéraire aussi durable que l'œuvre de
            pierre qui l'a inspiré. Sous la silhouette noire et colossale de la cathédrale fourmille le Paris en
            haillons des truands de la Cour des Miracles. Image de grâce et de pureté surgie de ce cauchemar, la
            bohémienne Esméralda danse pour le capitaine Phoebus et ensorcelle le tendre et difforme Quasimodo,
            sonneur de cloches de son état. Pour elle, consumé d'amour, l'archidiacre magicien Claude Frollo court à la damnation.

            De cette épopée hallucinée, ces monstres et ces figures s'échappent pour franchir les siècles, archétypes
            de notre mythologie nationale, de notre art et de notre Histoire.
        </h6>
        <div class="flex-column-around div-list-deroulante">
            <label for="quantiteLivre3" class="dorer"> entrez la quantite</label>
            <input type="text" id="quantiteLivre3" name="quantiteLivre3" value="">
        </div>
        <a href="panier.jsp">
            <button class="btn" type="button">Acheter</button>
        </a>

    </div>



</section>

</body>
</html>
