<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajout de nouveau produit</title>
</head>
<body>
<fieldset id="enreg">
    <legend>Ajout de nouveau produit </legend>
    <form action="" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td><p><label for="nom">Nom du produit : </label>
                    <input type="text" name="nom " id="nom" autofocus required /></p>

                    <p><label for="categorie">Catégorie du produit: </label>
                        <select name="categorie" id="categorie" required>
                            <option value=""></option>
                            <option value="Bijoux">Bijoux</option>
                            <option value="High-Tech">High-Tech</option>
                            <option value="Livres">Livres</option>
                            <option value="Vetements">Vetements</option>
                        </select></p>

                    <p><label for="descriptif">Descriptif du produit :</label>
                        <textarea name="descriptif" id="descriptif" cols="50" rows="10" required></textarea></p>

                    <p><label for="image">Image du produit : </label>
                        <input type="hidden" name="MAX_FILE_SIZE" value="1048576" />
                        <input type="file" name="image" id="image" required /></p>


                    <input type="submit" value="POSTER" class="OK" />
                    <input type="reset" name="effacer" value="EFFACER" class="NOK" /></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>