<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajout de nouveau produit</title>
</head>
<body>
<fieldset id="enreg">
    <legend>Ajout de nouveau produit </legend>
    <form action="AjoutProduit" method="post">
        <table>
            <tr>
                <td><p><label for="nom">Nom du produit : </label>
                    <input type="text" name="nom" id="nom"  autofocus required /></p>

                    <p><label for="categorie">Catégorie du produit: </label>
                        <select name="categorie" id="categorie"  autofocus required>
                            <option value=""></option>
                            <option value="Bijoux">Bijoux</option>
                            <option value="High-Tech">High-Tech</option>
                            <option value="Livres">Livres</option>
                            <option value="Vetements">Vetements</option>
                        </select></p>

                    <p><label for="description">Descriptif du produit :</label>
                        <textarea name="description" id="description" cols="50" rows="10" required></textarea></p>


                    <p><label for="prix">prix :</label>
                        <input type="text" name="prix" id="prix"  autofocus required /></p>

                    <p><label for="quantite">quantité :</label>
                        <input type="text" name="quantite" id="quantite" autofocus required /></p>


                    <input type="submit" value="POSTER" class="OK" />
                    <input type="reset" name="effacer" value="EFFACER" class="NOK" /></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>