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
public class Catalogue_Entreprise {
    private String nom;
    private String adresse;
    private String telephone;
    private String photo;

    public Catalogue_Entreprise() {
    }

    public Catalogue_Entreprise(String nom, String adresse, String telephone, String photo) {
        this.nom = nom;
        this.adresse = adresse;
        this.telephone = telephone;
        this.photo = photo;
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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    
    
}

