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
import ma.ensa.linked.metier.Formation;

/**
 *
 * @author Yunho
 */
public class FormationService {
    
    public static ArrayList<Formation> getFormationsByEtudiant(Etudiant e)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from formations where etudiant=?");
            st.setString(1, e.getLogin());
            ArrayList<Formation> liste = new ArrayList<Formation>();
            Formation f;
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {
                f = new Formation();
                f.setIdentifiant(rs.getInt("identifiant"));
                f.setNom_ecole(rs.getString("ecole"));
                f.setAnnee_debut(rs.getInt("annee_debut"));
                f.setAnnee_fin(rs.getInt("annee_fin"));
                f.setDiplome(rs.getString("diplome"));
                f.setDescription(rs.getString("description"));
                f.setEcole(EcoleService.getEcoleById(rs.getInt("id_ecole")));
                liste.add(f);
            }
            return liste;
        } catch (SQLException ex) {
            Logger.getLogger(FormationService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    
    public static Formation getFormationById(int id)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from formations where identifiant=?");
            st.setInt(1,id);
            Formation f;
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                f = new Formation();
                f.setIdentifiant(rs.getInt("identifiant"));
                f.setNom_ecole(rs.getString("ecole"));
                f.setAnnee_debut(rs.getInt("annee_debut"));
                f.setAnnee_fin(rs.getInt("annee_fin"));
                f.setDiplome(rs.getString("diplome"));
                f.setDescription(rs.getString("description"));
                f.setEcole(EcoleService.getEcoleById(rs.getInt("id_ecole")));
                return f;
            }
            else
                return null;
        } catch (SQLException ex) {
            Logger.getLogger(FormationService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    
}
