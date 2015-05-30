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
public class Formation {
    
    private int identifiant;
    private String nom_ecole;
    private int annee_debut;
    private int annee_fin;
    private String diplome;
    private String description;
    private Ecole ecole;

    public int getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(int identifiant) {
        this.identifiant = identifiant;
    }

    public String getNom_ecole() {
        return nom_ecole;
    }

    public void setNom_ecole(String nom_ecole) {
        this.nom_ecole = nom_ecole;
    }

    public int getAnnee_debut() {
        return annee_debut;
    }

    public void setAnnee_debut(int annee_debut) {
        this.annee_debut = annee_debut;
    }

    public int getAnnee_fin() {
        return annee_fin;
    }

    public void setAnnee_fin(int annee_fin) {
        this.annee_fin = annee_fin;
    }

    

    public String getDiplome() {
        return diplome;
    }

    public void setDiplome(String diplome) {
        this.diplome = diplome;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Ecole getEcole() {
        return ecole;
    }

    public void setEcole(Ecole ecole) {
        this.ecole = ecole;
    }

    @Override
    public String toString() {
        return "Formation{" + "identifiant=" + identifiant + ", nom_ecole=" + nom_ecole + ", annee_debut=" + annee_debut + ", annee_fin=" + annee_fin + ", diplome=" + diplome + ", description=" + description + ", ecole=" + ecole + '}';
    }
    
    

    
    
}
