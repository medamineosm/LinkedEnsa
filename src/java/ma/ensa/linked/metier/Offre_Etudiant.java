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
public class Offre_Etudiant {
  private boolean etat_offre;
  private Etudiant etudiant;

    public Offre_Etudiant() {
    }

    public Offre_Etudiant(boolean etat_offre, Etudiant etudiant) {
        this.etat_offre = etat_offre;
        this.etudiant = etudiant;
    }

    public boolean isEtat_offre() {
        return etat_offre;
    }

    public void setEtat_offre(boolean etat_offre) {
        this.etat_offre = etat_offre;
    }

    public Etudiant getEtudiant() {
        return etudiant;
    }

    public void setEtudiant(Etudiant etudiant) {
        this.etudiant = etudiant;
    }
   
}
