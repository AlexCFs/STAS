<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="fr" data locale="fr-FR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="Css/Boostrap_css/bootstrap.min.css">
    <link rel="stylesheet" href="Css/modif_css/modif.css">
    <meta charset=" utf-8"/>
    <title>STAS</title>
    <link rel="icon" type="image/ico" href="images/Projet%20stas%20icone.png">


</head>
<body>
<section class="flex-around">
    <img width="100" height="100" src="images/Projet stas icone.png">
    <h1 class="logo-titre"> STAS <br/>
        Le meilleur de la vente en ligne
    </h1>
    <a id="charriot" href="panier.jsp" class="flex-column-between">
        <i class=" dorer fa-solid fa-cart-arrow-down fa-3x"></i>
        <!--<span id="spanQuantite"></span>-->
        <p class="dorer">Mon panier</p>
    </a>
    <a href="historiqueAchat.jsp">
        <button class="btn" type="button">Historique d'achat</button>
    </a>
</section>
<nav>
    <div class="flex-around">
        <a href="#"> Accueil</a>
        <a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Toutes nos catégories</a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="vetement.jsp">Vêtements</a></li>
            <li><a class="dropdown-item" href="livres.jsp">Livres</a></li>
            <li><a class="dropdown-item" href="high-tech.jsp">High-Tech</a></li>
            <li><a class="dropdown-item" href="bijoux.jsp">Bijoux</a></li>
        </ul>
        <a href="about.jsp"> About</a>
        <a href="contact.jsp"> Contact</a>

    </div>
</nav>
<section>
    <div id="banniere">
        <!--javascript injection banniere-->
    </div>
    <div class="flex-centre">
        <div class="garantie flex-around">
            <h3 class="size-lien-garantie bordure-garantie"><i class="fa-solid fa-house fa-lg"></i> showroom
            </h3>
            <h3 class="size-lien-garantie bordure-garantie"><i class="fa-solid fa-calendar-check fa-lg"></i> Garantie
                1an
            </h3>
            <h3 class="size-lien-garantie bordure-garantie"><i class="fa-solid fa-puzzle-piece fa-lg"></i> Recevez votre
                échantillon
            </h3>
            <h3 class="size-lien-garantie"><i class="fa-solid fa-dolly fa-lg"></i>Livraison et retour
            </h3>
        </div>
    </div>
</section>
<div class="flex-column-centre">
    <h2 class="selection">Notre Sélection</h2>
    <img src="images/couronne.png" alt="image de site en ligne">
</div>
<br>
<br>
<!--injection vetements-->
<div class="container">
    <div class="row flex-around ">
        <video class="card card-autre" autoplay='autoplay' muted='' loop='infinite' src="images/designer.mp4"></video>
    </div>
    <br>
    <br>

    <div class="row flex-around cardib">
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/robe%203.jfif" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer">Une jolie robe d'allaitement </p>
            <a href="vetement.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 47 euro</p>
            </a>
        </div>
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/robe%204.jfif" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer"> Robe avec tulle à col carré évasé </p>
            <a href="vetement.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 67 euro</p>
            </a>
        </div>
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/robe%205.jfif" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer"> Robes femme Camaieu </p>
            <a href="vetement.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 37 euro</p>
            </a>
        </div>
    </div>

</div>
<br>
<br>
<!--injection livres -->
<div class="container">
    <div class="row flex-around ">
        <video class="card card-vra" autoplay='autoplay' muted='' loop='infinite' src="images/_Les%20Misérables_%20de%20Hugo%20_%20les%20secrets%20du%20manuscrit.mp4"></video>
    </div>
    <br>
    <br>

    <div class="row flex-around cardib">
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/La-voie-humide.jpg" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer">La voie humide </p>
            <a href="livres.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 15 euro</p>
            </a>
        </div>
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/livre2.jpg" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer"> Le Rouge et le Noir </p>
            <a href="livres.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 16 euro</p>
            </a>
        </div>
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/livre3.jpg" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer"> Notre dame de Paris</p>
            <a href="livres.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 22 euro</p>
            </a>
        </div>
    </div>
</div>
<br>
<br>
<!--injection high-tech -->
<div class="container">
    <div class="row flex-around ">
        <video class="card card-autre" autoplay='autoplay' muted='' loop='infinite' src="images/Today's%20High%20Tech%20World,%20Demands%20Simulation.mp4"></video>
    </div>
    <br>
    <br>

    <div class="row flex-around cardib">
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/sony-consoles-playstation-5-ps5.jpg" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer">SONY console Playstation 5 PS5- Version Disque </p>
            <a href="high-tech.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 700 euro</p>
            </a>
        </div>
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/iphone1.jpg" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer"> iPhone 13 mini </p>
            <a href="high-tech.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 632 euro</p>
            </a>
        </div>
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/tele1.webp" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer"> TV QLED Samsung QE75Q60A </p>
            <a href="high-tech.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 1190 euro</p>
            </a>
        </div>
    </div>
</div>
<br>
<br>
<!--injection bijoux -->
<div class="container">
    <div class="row flex-around ">
        <video class="card card-autre" autoplay='autoplay' muted='' loop='infinite' src="images/Bijoux%20_%20un%20secteur%20qui%20vaut%20son%20pesant%20d'or.mp4"></video>
    </div>
    <br>
    <br>

    <div class="row flex-around cardib">
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/799096C01_ABC123_MODEL_eCOM_02_RGB.webp" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer">Charm Renard aux Yeux Bleus </p>
            <a href="bijoux.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 5099 euro</p>
            </a>
        </div>
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/bijoux2.jpg" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer"> Bracelet coulissant Pandora </p>
            <a href="bijoux.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 201 euro</p>
            </a>
        </div>
        <div class="col-lg cardib">
            <img width="400" height="40" src="images/bijou4.jpg" class="img-thumbnail" alt="...">
            <div class="bouton-chene"></div>
            <p class="dorer"> Robe avec tulle à col carré évasé</p>
            <a href="bijoux.jsp">
                <button class="btn" type="button">Voir</button>
                <p class="dorer"> 158 euro</p>
            </a>
        </div>
    </div>
</div>


<footer>
    <section class="flex-column-centre">
        <div class="flex-centre">
            <h2 class="titre-reseau">
                la communauté <br/>
                STAS en ligne
            </h2>
        </div>
        <div class="logos-reseau flex-around">
            <a href="#"><i class="foot-logo fa-brands fa-facebook fa-4x"></i></a>
            <a href="#"><i class="foot-logo fa-brands fa-instagram-square fa-4x"></i></a>
            <a href="#"><i class="foot-logo fa-brands fa-twitter-square fa-4x"></i></a>
        </div>
    </section>
    <section class="flex-around">
        <!--rediriger vers la page d'accueil ou fictive-->
        <div class="bloc-footer">
            <h2 class="titre-reseau">Nos services</h2>
            <div class="lien-footer">
                <a href="#">Paiement</a>
                <a href="#">Suivi de commande</a>
                <a href="#">Livraison</a>
                <a href="#">Retours</a>
                <a href="contact.jsp">Nous contacter</a>
            </div>
        </div>
        <div class="bloc-footer">
            <h2 class="titre-reseau">Catégories</h2>
            <div class="lien-footer">
                <a href="index.jsp">Accueil</a>
                <a href="#">Commandes</a>
                <a href="panier.jsp">Panier</a>
                <a href="contact.jsp">Formulaires</a>
            </div>
        </div>
        <div class="bloc-footer">
            <h2 class="titre-reseau">Nos magasins</h2>
            <div class="lien-footer">
                <a href="#">Paris</a>
                <a href="#">Bordeaux</a>
                <a href="#">Lyon</a>
                <a href="#">Poitiers</a>
            </div>
        </div>
    </section>
    <section class="flex-around">
        <div class="white">
            <p> Stéphane Mbeng- 2022 - Tous droits réserver</p>
            <p> Mentions légales - Plan du site - Crédits</p>
        </div>
        <div class="flex-around">
            <p class="white">Paiement sécurisé</p>
            <img class="logos-paiement" src="images/securiser.png">
        </div>

    </section>
</footer>


<script src="https://kit.fontawesome.com/3163bfb407.js" crossorigin="anonymous"></script>
<script src="Js/index.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>