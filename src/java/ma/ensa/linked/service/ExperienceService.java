/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import ma.ensa.linked.metier.Connexion;
import ma.ensa.linked.metier.Etudiant;
import ma.ensa.linked.metier.Experience;

/**
 *
 * @author Yunho
 */
public class ExperienceService {
    
    public static ArrayList<Experience> getExperiencesByEtudiant(Etudiant e)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from experiences where etudiant=?");
            st.setString(1, e.getLogin());
            ResultSet rs = st.executeQuery();
            ArrayList<Experience> liste = new ArrayList<Experience>();
            Experience exp;
            while(rs.next())
            {
                exp = new Experience();
                exp.setIdentifiant(rs.getInt("identifiant"));
                exp.setNom_entrprise(rs.getString("entreprise"));
                exp.setTitre(rs.getString("titre"));
                exp.setDate_debut(new Date(rs.getDate("debut").getTime()));
                exp.setDate_fin(new Date(rs.getDate("fin").getTime()));
                exp.setDescription(rs.getString("description"));
                exp.setEn_cours(rs.getBoolean("en_cours"));
                exp.setEntreprise(CatalogueEntrepriseService.getEntrepriseById(rs.getInt("id_entreprise")));
                
                liste.add(exp);
            }
            return liste;
        } catch (SQLException ex) {
            Logger.getLogger(ExperienceService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    
    
    public static Experience getExperienceById(int id)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from experiences where identifiant=?");
            st.setInt(1,id);
            ResultSet rs = st.executeQuery();
            Experience exp;
            if(rs.next())
            {
                exp = new Experience();
                exp.setIdentifiant(rs.getInt("identifiant"));
                exp.setNom_entrprise(rs.getString("entreprise"));
                exp.setTitre(rs.getString("titre"));
                exp.setDate_debut(new Date(rs.getDate("debut").getTime()));
                exp.setDate_fin(new Date(rs.getDate("fin").getTime()));
                exp.setDescription(rs.getString("description"));
                exp.setEn_cours(rs.getBoolean("en_cours"));
                exp.setEntreprise(CatalogueEntrepriseService.getEntrepriseById(rs.getInt("id_entreprise")));
                
                return exp;
            }
            return null;
        } catch (SQLException ex) {
            Logger.getLogger(ExperienceService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
  
}
