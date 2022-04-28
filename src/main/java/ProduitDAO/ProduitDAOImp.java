package ProduitDAO;

import beans.Produit;

import java.sql.*;
import java.util.ArrayList;

public class ProduitDAOImp implements ProduitDAO{
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
    public ArrayList<Produit> findAllProduct() {

        ArrayList <Produit> list=new ArrayList<Produit>();

        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        initialisation();
        Statement stat = null;
        ResultSet rs= null;
        try {
            stat = con.createStatement();
            String requete = "SELECT * FROM produit";
            rs = stat.executeQuery(requete);
            while (rs.next()){
                int id= rs.getInt("idProduit");
                String categorie= rs.getString("categorie");
                String nomProduit= rs.getString("nomProduit");
                String description= rs.getString("description");
                double prix=rs.getDouble("prix");
                int quantite=rs.getInt("quantite");


                Produit p= new Produit(id, categorie, nomProduit,description,prix,quantite);
                list.add(p);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally{
            Close(con, stat, rs);
        }
        return list;
    }


    @Override
    public Produit findProductById(int id) {
        return null;
    }

    @Override
    public int insertProduct(Produit p) {
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
            String sql = "INSERT INTO produit VALUES (DEFAULT ,'"+p.getCategorie()+"','"+p.getNomProduit()+"','"+p.getDescription()+"','"+p.getPrix()+"','"+p.getQuantite()+"')";

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
    public int updateProduct(Produit p) {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        initialisation();
        Statement stat=null;
        int result =0;
        try {
            stat = con.createStatement();
            String sql = "UPDATE produit SET categorie ='"+p.getCategorie()+"', nomProduit='"+p.getNomProduit()+"', description='"+p.getDescription()+"',prix= '"+p.getPrix()+"',quantite='"+p.getPrix()+"' where idProduit ='"+p.getIdProduit()+"'";
            result=stat.executeUpdate(sql);
            System.out.println(result);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally{
            Close(con,stat);

        }
        return result;
    }

    @Override
    public void delete(int id) {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        initialisation();
        Statement stat = null;

        try {
            stat = con.createStatement();
            String sql = "DELETE FROM produit WHERE idProduit="+id+"";
            stat.executeUpdate(sql);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally{
            Close(con,stat);

        }

    }

}



