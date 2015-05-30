/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import ma.ensa.linked.metier.Connexion;
import ma.ensa.linked.metier.Utilisateur;

/**
 *
 * @author Yunho
 */
public class UtilisateurService {
    
    public static Utilisateur authentifierUtilisateur(String login,String password)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from logins where login=? and password=?");
            st.setString(1,login);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                if(rs.getString("type_compte").equals("prof"))
                {
                    return ProfesseurService.getProfesseurById(login);
                }
                else if(rs.getString("type_compte").equals("etudiant"))
                {
                    return EtudiantService.getEtudiantById(login);  
                }
            }

                return null;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public static boolean insertUser(Utilisateur user)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("insert into logins values(?,?,?,?,?,?,?)");
            st.setString(1, user.getLogin());
            st.setString(2, user.getPassword());
            st.setString(3, user.getNom());
            st.setString(4, user.getTelephone());
            st.setString(5, user.getEmail());
            st.setString(6, user.getAdresse());
            st.setString(7, user.getType().getIntitule());
            return st.executeUpdate()!=0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
 
    
}