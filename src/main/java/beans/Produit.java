package beans;

public class Produit {
    private int idProduit;
    private String categorie;
    private String nomProduit;
    private String description;
    private double prix;
    private int quantite;


    //constructeur


    public Produit() {
    }

    public Produit(int idProduit, String categorie, String nomProduit, String description, double prix, int quantite) {
        this.idProduit = idProduit;
        this.categorie = categorie;
        this.nomProduit = nomProduit;
        this.description = description;
        this.prix = prix;
        this.quantite = quantite;
    }

    //get et set

    public int getIdProduit() {
        return idProduit;
    }

    public void setIdProduit(int idProduit) {
        this.idProduit = idProduit;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getNomProduit() {
        return nomProduit;
    }

    public void setNomProduit(String nomProduit) {
        this.nomProduit = nomProduit;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    //toString

    @Override
    public String toString() {
        return "Produit{" +
                "idProduit=" + idProduit +
                ", categorie='" + categorie + '\'' +
                ", nomProduit='" + nomProduit + '\'' +
                ", description='" + description + '\'' +
                ", prix=" + prix +
                ", quantite=" + quantite +
                '}';
    }
}
