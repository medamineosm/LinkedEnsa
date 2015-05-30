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
import ma.ensa.linked.metier.Projet;

/**
 *
 * @author Yunho
 */
public class ProjetService {
    
    public static ArrayList<Projet> getProjetsByEtudiant(Etudiant e)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from projets where etudiant=?");
            st.setString(1, e.getLogin());
            ResultSet rs = st.executeQuery();
            ArrayList<Projet> liste = new ArrayList<Projet>();
            Projet projet;
            while(rs.next())
            {
                projet = new Projet();
                projet.setIdentifiant(rs.getInt("identifiant"));
                projet.setNom(rs.getString("nom"));
                projet.setDate(new Date(rs.getDate("date").getTime()));
                projet.setDescription(rs.getString("description"));
                projet.setFonction(rs.getString("fonction"));
                projet.setLieu(rs.getString("lieu"));
                liste.add(projet);
            }
            return liste;
        } catch (SQLException ex) {
            Logger.getLogger(ProjetService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public static Projet getProjetById(int id)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from projets where identifiant=?");
            st.setInt(1,id);
            ResultSet rs = st.executeQuery();
            
            Projet projet;
            if(rs.next())
            {
                projet = new Projet();
                projet.setIdentifiant(rs.getInt("identifiant"));
                projet.setNom(rs.getString("nom"));
                projet.setDate(new Date(rs.getDate("date").getTime()));
                projet.setDescription(rs.getString("description"));
                projet.setFonction(rs.getString("fonction"));
                projet.setLieu(rs.getString("lieu"));
                return projet;
            }
            else
                return null;
        } catch (SQLException ex) {
            Logger.getLogger(ProjetService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
