/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import ma.ensa.linked.metier.Connexion;
import ma.ensa.linked.metier.Etudiant;
import ma.ensa.linked.metier.Competence;

/**
 *
 * @author Yunho
 */
public class CompetenceService {
    
    public static ArrayList<Competence> getcompetencesByEtudiant(Etudiant e)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from competences where etudiant=?");
            st.setString(1,e.getLogin());
            ResultSet rs = st.executeQuery();
            ArrayList<Competence> liste = new ArrayList<Competence>();
            Competence comp ;
            while(rs.next())
            {
                comp = new Competence();
                comp.setIdentifiant(rs.getInt("identifiant"));
                comp.setNom(rs.getString("nom"));
                liste.add(comp);
            }
            return liste;
        } catch (SQLException ex) {
            Logger.getLogger(LangueService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
