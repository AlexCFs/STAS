<%--
  Created by IntelliJ IDEA.
  User: SUN
  Date: 25/04/2022
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/style.css">
    <title>Formulaire d'inscription</title>

</head>
<body>
<main>
    <header>
    </header>
    <form action="CreationCompte" method="post">


        <div class="page" id="page1">
            <h1>Identité</h1>
            <div>
                <select id="civilite" name="civilite">
                    <option value="0">Civilité</option>
                    <option value="1">Madame</option>
                    <option value="2">Monsieur</option>
                </select>
            </div>
            <div>
                <label for="nom">Nom</label>
                <input type="text" id="nom" name="nom" required>
            </div>
            <div>
                <label for="prenom">Prénom</label>
                <input type="text" id="prenom" name="prenom" required>
            </div>
            <button class="next" type="button">Suivant</button>
        </div>


        <div class="page" id="page2">
            <h1>Coordonnées</h1>
            <div>
                <div>
                    <label for="telephone">Téléphone</label>
                    <input type="text" id="telephone" name="telephone" required>
                </div>
                <label for="adresse">Adresse</label>
                <input type="text" id="adresse" name="adresse" required>
            </div>
            <div>
                <label for="codePostal">Code postal</label>
                <input type="text" id="codePostal" name="codePostal" required>
            </div>
            <div>
                <label for="ville">Ville</label>
                <input type="text" id="ville" name="ville" required>
            </div>
            <button class="prev" type="button">Précédent</button>
            <button class="next" type="button">Suivant</button>
        </div>



        <div class="page" id="page3">
            <h1>Identifiants de connexion</h1>
            <div>
                <label for="email">E-mail*</label>
                <input type="text" id="email" name="email"required>
            </div>
            <div>
                <label for="mdp">Mot de pass*</label>
                <input type="password" id="mdp" name="mdp"required>
            </div>
            <button class="prev" type="button">Précédent</button>
            <button class="finish" type="submit">Terminer</button>
        </div>


    </form>
</main>
<script src="Js/scripts.js" type="text/javascript"></script>
</body>

</html>
