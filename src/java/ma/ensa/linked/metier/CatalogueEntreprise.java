/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.metier;

/**
 *
 * @author PC
 */
public class CatalogueEntreprise {
    
    private int identifiant;
    private String nom;
    private String adresse;
    private String telephone;
    private String image;

    public int getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(int identifiant) {
        this.identifiant = identifiant;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "CatalogueEntreprise{" + "identifiant=" + identifiant + ", nom=" + nom + ", adresse=" + adresse + ", telephone=" + telephone + ", image=" + image + '}';
    }

   
}

