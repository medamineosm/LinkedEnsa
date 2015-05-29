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
public class Suggestion {
    private Professeur professeur;
    private Etudiant etudiant;
    private Offre offre;
    private Date date_suggesion;

    public Suggestion() {
    }

    public Suggestion(Professeur professeur, Etudiant etudiant, Offre offre, Date date_suggesion) {
        this.professeur = professeur;
        this.etudiant = etudiant;
        this.offre = offre;
        this.date_suggesion = date_suggesion;
    }

    public Professeur getProfesseur() {
        return professeur;
    }

    public void setProfesseur(Professeur professeur) {
        this.professeur = professeur;
    }

    public Etudiant getEtudiant() {
        return etudiant;
    }

    public void setEtudiant(Etudiant etudiant) {
        this.etudiant = etudiant;
    }

    public Offre getOffre() {
        return offre;
    }

    public void setOffre(Offre offre) {
        this.offre = offre;
    }

    public Date getDate_suggesion() {
        return date_suggesion;
    }

    public void setDate_suggesion(Date date_suggesion) {
        this.date_suggesion = date_suggesion;
    }
    
    
}
