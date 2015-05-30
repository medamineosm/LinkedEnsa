/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.metier;

import java.util.Date;

/**
 *
 * @author PC
 */
public class Experience {
    
    private int identifiant;
    private String nom_entrprise;
    private String titre;
    private Date date_debut;
    private Date date_fin;
    private String description;
    private CatalogueEntreprise entreprise;
    private boolean en_cours;

    public int getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(int identifiant) {
        this.identifiant = identifiant;
    }

    public String getNom_entrprise() {
        return nom_entrprise;
    }

    public void setNom_entrprise(String nom_entrprise) {
        this.nom_entrprise = nom_entrprise;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public Date getDate_debut() {
        return date_debut;
    }

    public void setDate_debut(Date date_debut) {
        this.date_debut = date_debut;
    }

    public Date getDate_fin() {
        return date_fin;
    }

    public void setDate_fin(Date date_fin) {
        this.date_fin = date_fin;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public CatalogueEntreprise getEntreprise() {
        return entreprise;
    }

    public void setEntreprise(CatalogueEntreprise entreprise) {
        this.entreprise = entreprise;
    }

    

    public boolean isEn_cours() {
        return en_cours;
    }

    public void setEn_cours(boolean en_cours) {
        this.en_cours = en_cours;
    }

    @Override
    public String toString() {
        return "Experience{" + "identifiant=" + identifiant + ", nom_entrprise=" + nom_entrprise + ", titre=" + titre + ", date_debut=" + date_debut + ", date_fin=" + date_fin + ", description=" + description + ", entreprise=" + entreprise + ", en_cours=" + en_cours + '}';
    }

    
    
}
