/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.metier;

import java.util.Date;

/**
 *
 * @author Yunho
 */
public class Etudiant extends Utilisateur{
    
    private String cne;
    private Date date_naissance;
    private Groupe groupe;

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

    @Override
    public String toString() {
        return super.toString()+" Etudiant{" + "cne=" + cne + ", date_naissance=" + date_naissance + ", groupe=" + groupe + '}';
    }
    
    
    
}
