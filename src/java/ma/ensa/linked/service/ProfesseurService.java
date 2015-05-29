/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import ma.ensa.linked.metier.Connexion;
import ma.ensa.linked.metier.Professeur;
import ma.ensa.linked.metier.TypeCompte;

/**
 *
 * @author Yunho
 */
public class ProfesseurService {
    
    public static Professeur getProfesseurById(String login)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from logins l,professeurs p where l.login=p.login and l.login=?");
            st.setString(1, login);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                Professeur prof = new Professeur();
                prof.setLogin(rs.getString("login"));
                prof.setNom(rs.getString("nom"));
                prof.setTelephone(rs.getString("telephone"));
                prof.setEmail(rs.getString("email"));
                prof.setAdresse(rs.getString("adresse"));
                prof.setType(TypeCompte.PROFESSEUR);
                prof.setGrade(rs.getString("grade"));
                return prof;
                
            }
            return null;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
        
    }
    
}
