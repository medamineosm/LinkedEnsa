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
public class Langue {
    
    private int identifiant;
    private String intitule;
    private String niveau;

    public Langue() {
    }

    public int getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(int identifiant) {
        this.identifiant = identifiant;
    }

    public String getNiveau() {
        return niveau;
    }

    public void setNiveau(String niveau) {
        this.niveau = niveau;
    }

    public String getIntitule() {
        return intitule;
    }

    public void setIntitule(String intitule) {
        this.intitule = intitule;
    }

    @Override
    public String toString() {
        return "Langue{" + "identifiant=" + identifiant + ", intitule=" + intitule + ", niveau=" + niveau + '}';
    }

    

    
    
}
