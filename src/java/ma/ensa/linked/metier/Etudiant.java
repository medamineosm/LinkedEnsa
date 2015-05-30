/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.metier;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Yunho
 */
public class Etudiant extends Utilisateur{
    
    private String cne;
    private Date date_naissance;
    private Groupe groupe;
    private ArrayList<Formation> formations;
    private ArrayList<Experience> experiences;
    private ArrayList<Projet> projets;
    private ArrayList<Langue> langues;
    private ArrayList<Competence> competences;
    
    public Date getDate_naissance() {
        return date_naissance;
    }

    public void setDate_naissance(Date date_naissance) {
        this.date_naissance = date_naissance;
    }

    public Groupe getGroupe() {
        return groupe;
    }

    public void setGroupe(Groupe groupe) {
        this.groupe = groupe;
    }

    public String getCne() {
        return cne;
    }

    public void setCne(String cne) {
        this.cne = cne;
    }

    public ArrayList<Formation> getFormations() {
        return formations;
    }

    public void setFormations(ArrayList<Formation> formations) {
        this.formations = formations;
    }

    public ArrayList<Experience> getExperiences() {
        return experiences;
    }

    public void setExperiences(ArrayList<Experience> experiences) {
        this.experiences = experiences;
    }

    public ArrayList<Projet> getProjets() {
        return projets;
    }

    public void setProjets(ArrayList<Projet> projets) {
        this.projets = projets;
    }

    public ArrayList<Langue> getLangues() {
        return langues;
    }

    public void setLangues(ArrayList<Langue> langues) {
        this.langues = langues;
    }

    public ArrayList<Competence> getCompetences() {
        return competences;
    }

    public void setCompetences(ArrayList<Competence> competences) {
        this.competences = competences;
    }

    
    
    @Override
    public String toString() {
        return super.toString()+" Etudiant{" + "cne=" + cne + ", date_naissance=" + date_naissance + ", groupe=" + groupe + '}';
    }

    
    
    
    
    
}
