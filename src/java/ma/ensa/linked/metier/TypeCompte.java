/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.metier;

/**
 *
 * @author Yunho
 */
public enum TypeCompte {
    PROFESSEUR("prof"),ETUDIANT("etudiant"),ADMINISTRATEUR("admin"),ENTREPRISE("entreprise");
    
    private String intitule;

    TypeCompte(String intitule)
    {
        this.intitule=intitule;
    }
    
    public String getIntitule() {
        return intitule;
    }
    
    
}
