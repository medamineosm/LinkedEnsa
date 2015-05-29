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
    private Entreprise entrprise;
    private String titre;
    private Date date_debut;
    private Date date_fin;
    private String description;
    private boolean en_cours;
    private Etudiant etudiant;

    public Experience() {
    }

    public Experience(Entreprise entrprise, String titre, Date date_debut, Date date_fin, String description, boolean en_cours, Etudiant etudiant) {
        this.entrprise = entrprise;
        this.titre = titre;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.description = description;
        this.en_cours = en_cours;
        this.etudiant = etudiant;
    }

    public Entreprise getEntrprise() {
        return entrprise;
    }

    public void setEntrprise(Entreprise entrprise) {
        this.entrprise = entrprise;
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

    public boolean isEn_cours() {
        return en_cours;
    }

    public void setEn_cours(boolean en_cours) {
        this.en_cours = en_cours;
    }

    public Etudiant getEtudiant() {
        return etudiant;
    }

    public void setEtudiant(Etudiant etudiant) {
        this.etudiant = etudiant;
    }
    
    
    
}
