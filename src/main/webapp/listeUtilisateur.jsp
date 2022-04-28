<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: SUN
  Date: 27/04/2022
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Utilisateurs</title>
</head>
<body>
<h1>La table des utlisateurs existants</h1>
<br>
<table border="1px" align="center" width="50%">
    <tr>
        <th>id</th>
        <th>nom</th>
        <th>prenom</th>
        <th>telephone</th>
        <th>adresse</th>
        <th>codePostale</th>
        <th>ville</th>
        <th>email</th>
        <th>mot de passe</th>

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
            String sql= "SELECT * FROM utilisateur";
            ResultSet rs=stat.executeQuery(sql);
            while (rs.next()){

    %>
    <tr>
        <td><%=rs.getInt("id") %></td>
        <td><%=rs.getString("nom") %></td>
        <td><%=rs.getString("prenom") %></td>
        <td><%=rs.getString("telephone") %></td>
        <td><%=rs.getString("adresse") %></td>
        <td><%=rs.getString("codePostal") %></td>
        <td><%=rs.getString("ville") %></td>
        <td><%=rs.getString("email") %></td>
        <td><%=rs.getString("mdp") %></td>


    </tr>
        <%
            }

        }catch (Exception e){
            e.printStackTrace();

        }

    %>
</table>

</body>
</html>
