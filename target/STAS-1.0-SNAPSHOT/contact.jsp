<%--
  Created by IntelliJ IDEA.
  User: Curry
  Date: 4/27/2022
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="Css/contact.css">
    <title> Contact</title>
</head>
<body>
<fieldset id="enreg">
    <legend>Contact</legend>
    <form>
        <table>
            <tr>
                <p><label for="categorie"> Demande</label>
                    <select name="categorie" id="categorie" autofocus required>
                        <option value=""></option>
                        <option value="Reclamation">Reclamation</option>
                        <option value="Remboursement">Remboursement</option>
                        <option value="Questions">Questions</option>
                        <option value="Avis client">Avis client</option>
                    </select></p>

                <p><label for="message">message:</label>
                    <textarea name="message" id="message" cols="50" rows="10" required></textarea></p>


                <input type="submit" value="Envoyer" class="OK"/>
                <input type="reset" name="effacer" value="EFFACER" class="NOK"/></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>
