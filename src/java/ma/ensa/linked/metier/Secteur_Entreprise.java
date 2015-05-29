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
public class Secteur_Entreprise {
    private Secteur_Activite secteur_activite;
    private Entreprise entreprise;

    public Secteur_Entreprise() {
    }

    public Secteur_Entreprise(Secteur_Activite secteur_activite, Entreprise entreprise) {
        this.secteur_activite = secteur_activite;
        this.entreprise = entreprise;
    }

    public Secteur_Activite getSecteur_activite() {
        return secteur_activite;
    }

    public void setSecteur_activite(Secteur_Activite secteur_activite) {
        this.secteur_activite = secteur_activite;
    }

    public Entreprise getEntreprise() {
        return entreprise;
    }

    public void setEntreprise(Entreprise entreprise) {
        this.entreprise = entreprise;
    }
    
}
