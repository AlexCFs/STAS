package ProduitDAO;

import beans.Produit;

import java.util.ArrayList;

public interface ProduitDAO {

    //pour savoir toutes les informations de produits
    public abstract ArrayList<Produit> findAllProduct();


    // chercher des infos selon cid
    public abstract Produit findProductById(int id);


    // ajouter un client
    public abstract int insertProduct(Produit p);


    // modifier les infos d'un produit
    public abstract int updateProduct(Produit p);


    // delecte selon id
    public abstract void delete(int id);



}
