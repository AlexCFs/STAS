package ClientDAO;

import beans.Client;

import java.sql.*;
import java.util.ArrayList;

public class ClientDAOImp implements ClientDAO {

    // il y a 2 méthodes que je n'ai pas encore fait
    private Connection con=null;

    public void initialisation(){
        try{
            String nomUtilisateur ="root";
            String motDePass = "pass";
            String nomBase="stas";

            String connec ="jdbc:mariadb://localhost:3306/";
            connec += nomBase +"?user="+nomUtilisateur;
            connec += "&password="+motDePass;

            con = DriverManager.getConnection(connec);
            System.out.println(con);




        }catch (Exception e ){
            System.out.println("Exception : "+ e.getMessage());

        }
    }

 // choisir la bonne méthode de close, car dans certaine méthode, on n'a pas besoin de Resultset rs
    public void Close(Connection con, Statement stat, ResultSet rs ){
        if(con!=null){
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stat !=null){
            try {
                stat.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rs != null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void Close(Connection con,Statement stat) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stat != null) {
            try {
                stat.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }



    @Override
    public ArrayList<Client> findAll() {
        ArrayList <Client> list=new ArrayList<>();
        initialisation();
        Statement stat = null;
        ResultSet rs= null;
        try {
            stat = con.createStatement();
            String requete = "SELECT * FROM utilisateur";
            rs = stat.executeQuery(requete);
            while (rs.next()){
                int id= rs.getInt("id");
                String nom= rs.getString("nom");
                String prenom= rs.getString("prenom");
                String telephone= rs.getString("telephone");
                String adresse= rs.getString("adresse");
                String codePostal= rs.getString("codePostal");
                String ville= rs.getString("ville");
                String email= rs.getString("email");
                String mdp= rs.getString("mdp");

                Client c= new Client(id, nom,  prenom, telephone, adresse, codePostal, ville, email, mdp);
                list.add(c);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally{
            Close(con, stat, rs);
        }
        return list;
    }



    @Override
    public Client findById(int id) {



        return null;
    }

    @Override
    public int insert(Client c) {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        initialisation();
        Statement stat = null;
        int result =0;
        try {
            stat = con.createStatement();
            String sql = "INSERT INTO utilisateur VALUES (DEFAULT ,'"+c.getNom()+"','"+c.getPrenom()+"','"+c.getTelephone()+"','"+c.getAdresse()+"','"+c.getCodePostal()+"','"+c.getVille()+"','"+c.getEmail()+"','"+c.getMdp()+"')";

            stat.executeUpdate(sql);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally{
            Close(con, stat);
        }
        result=1;

        return result;
    }

    @Override
    public int update(Client c) {
        return 0;
    }

    @Override
    public int delete(int id) {
        return 0;
    }

    @Override
    public boolean authentificationService(String username, String password) {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        ArrayList<Client> list=findAll();
        boolean result = false;
        System.out.println(username);
        System.out.println(password);

        for (Client c:list){
            String name=c.getNom();
            String mdp=c.getMdp();

            if (name.equals(username) && mdp.equals(password)){
                result =true;
                System.out.println(name);
                System.out.println(mdp);
                break;
            }
            else{
                result=false;

            }
        }
        return result;
    }

    @Override
    public boolean IfAdmin(Client c) {
    boolean adminRes = false; // teseter si on est utilisateur ou admin
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (c.getNom().equals("Admin")){
            adminRes=true;
            // apres aller dans la page pour des admis
        }else{
            adminRes=false;
            //apres aller dans la page pour les utilisateur;

        }
        return adminRes;
    }
}
