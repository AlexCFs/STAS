<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr" data locale="fr-FR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="Css/Boostrap_css/bootstrap.min.css">
    <link rel="stylesheet" href="Css/modif_css/modif.css">
    <meta charset=" utf-8"/>
    <title>Panier</title>
    <link rel="icon" type="image/ico" href="images/Projet%20stas%20icone.png">


</head>
<body>
<section class="flex-around">
    <img width="100" height="100" src="images/Projet stas icone.png">
    <h1 class="logo-titre"> PANIER
    </h1>
    <a id="charriot" href="#" class="flex-column-between">
        <i class=" dorer fa-solid fa-cart-arrow-down fa-3x"></i>
        <!--<span id="spanQuantite"></span>-->
        <p class="dorer">Mon panier</p>
    </a>
</section>
<nav>
    <div class="flex-around">
        <a href="#"> Accueil</a>
        <a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Toutes nos catégories</a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="vetement.jsp">Vêtements</a></li>
            <li><a class="dropdown-item" href="#">Livres</a></li>
            <li><a class="dropdown-item" href="#">High-Tech</a></li>
            <li><a class="dropdown-item" href="#">Bijoux</a></li>
        </ul>
        <a href="#"> About</a>
        <a href="contact.jsp"> Contact</a>

    </div>
</nav>
<div class="flex-column-centre">
    <h2 class="selection">Notre Sélection</h2>
    <img src="images/couronne.png" alt="image de site en ligne">
</div>
<br>
<br>

<section id="basket" class="flex-column-centre">
    <!--injection titre panier-->
    <div id="blocTitrePanier" class="flex-start size80">
        <h2 id="titre-panier">
            Veuillez ajouter des produits au panier <br/>
            Pas de produit
        </h2>
    </div>
    <!--fiche complete carte + recapitulatif panier-->
    <div id="basket-fiche" class="flex-around">
        <!--injection carte panier-->
        <div id="injectJs">
            <div id="basketProduit" class="flex-around">
                <div id="blocImage">
                    <img src="images/presentation.jfif">
                </div>
                <div id="blocProduit" class="flex-column-around">
                    <h2>Produits</h2>
                    <p>couleur</p>
                    <p>0 euro</p>
                    <p>Ref:00000000 </p>
                    <p><i class="fa-solid fa-truck"></i> <br/>en stock</p>
                </div>
                <div id="bloc-change-produit" class="flex-around">
                    <div class="flex-centre">
                        <button class="bouton-moins">-</button>
                        <span class="produit-quantite">0</span>
                        <button class="bouton-plus">+</button>
                    </div>
                    <div><p>0 E</p></div>
                    <div><i class="fa-solid fa-trash-can dorer"></i></div>
                </div>
            </div>
        </div>
        <!--recapitulatif panier-->
        <div id="basket-recap">
            <h2 class="titre-recap dorer">Récapitulatif</h2>
            <div class="flex-around">
                <p id="nbArticle"> 0 article </p>
                <p id="prixArticle">0</p>
            </div>
            <div class="flex-around">
                <p>Livraison</p>
                <p id="prixLivraison">offert</p>
            </div>
            <div class="trait-design"></div>
            <div class="flex-around">
                <h3>Total TTC</h3>
                <p id="prixTtc">0</p>
            </div>
            <div>
                <a id="continueCommande" class="flex-around" href="#">
                    <button class="btn" type="button">Continuer<i class="fa-solid fa-chevron-right"></i></button>
                </a>
            </div>
            <div>
                <p><i class="fa-solid fa-truck dorer"></i>Livraison sous 3 semaines </p>
            </div>
        </div>
    </div>
</section>


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
                <a href="panier.jsp">Commandes</a>
                <a href="#">Panier</a>
                <a href="#">Formulaires</a>
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



