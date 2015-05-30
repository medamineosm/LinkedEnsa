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
import ma.ensa.linked.metier.Langue;

/**
 *
 * @author Yunho
 */
public class LangueService {
    
    public static ArrayList<Langue> getLanguesByEtudiant(Etudiant e)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from langues where etudiant=?");
            st.setString(1,e.getLogin());
            ResultSet rs = st.executeQuery();
            ArrayList<Langue> liste = new ArrayList<Langue>();
            Langue langue ;
            while(rs.next())
            {
                langue = new Langue();
                langue.setIdentifiant(rs.getInt("identifiant"));
                langue.setIntitule(rs.getString("intitule"));
                langue.setNiveau(rs.getString("niveau"));
                liste.add(langue);
            }
            return liste;
        } catch (SQLException ex) {
            Logger.getLogger(LangueService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
