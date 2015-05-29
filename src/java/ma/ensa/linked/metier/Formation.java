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
    private Ecole ecole;
    private Date annee_debut;
    private Date annee_fin;
    private String diplome;
    private String description;
    private Etudiant etudiant;

    public Formation() {
    }

    public Formation(Ecole ecole, Date annee_debut, Date annee_fin, String diplome, String description, Etudiant etudiant) {
        this.ecole = ecole;
        this.annee_debut = annee_debut;
        this.annee_fin = annee_fin;
        this.diplome = diplome;
        this.description = description;
        this.etudiant = etudiant;
    }

    public Ecole getEcole() {
        return ecole;
    }

    public void setEcole(Ecole ecole) {
        this.ecole = ecole;
    }

    public Date getAnnee_debut() {
        return annee_debut;
    }

    public void setAnnee_debut(Date annee_debut) {
        this.annee_debut = annee_debut;
    }

    public Date getAnnee_fin() {
        return annee_fin;
    }

    public void setAnnee_fin(Date annee_fin) {
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

    public Etudiant getEtudiant() {
        return etudiant;
    }

    public void setEtudiant(Etudiant etudiant) {
        this.etudiant = etudiant;
    }
    
    
}
