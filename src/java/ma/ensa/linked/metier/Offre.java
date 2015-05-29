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
public class Offre {
    private Date date_offre;
    private Date date_expiration;
    private String etat_offre;
    private String description;
    private Entreprise entreprise;

    public Offre() {
    }

    public Offre(Date date_offre, Date date_expiration, String etat_offre, String description, Entreprise entreprise) {
        this.date_offre = date_offre;
        this.date_expiration = date_expiration;
        this.etat_offre = etat_offre;
        this.description = description;
        this.entreprise = entreprise;
    }

    public Date getDate_offre() {
        return date_offre;
    }

    public void setDate_offre(Date date_offre) {
        this.date_offre = date_offre;
    }

    public Date getDate_expiration() {
        return date_expiration;
    }

    public void setDate_expiration(Date date_expiration) {
        this.date_expiration = date_expiration;
    }

    public String getEtat_offre() {
        return etat_offre;
    }

    public void setEtat_offre(String etat_offre) {
        this.etat_offre = etat_offre;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Entreprise getEntreprise() {
        return entreprise;
    }

    public void setEntreprise(Entreprise entreprise) {
        this.entreprise = entreprise;
    }
        
}
