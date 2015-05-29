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
                        Professeur prof = new Professeur();
                        prof.setLogin(rs.getString("login"));
                        prof.setNom(rs.getString("nom"));
                        prof.setTelephone(rs.getString("telephone"));
                        prof.setEmail(rs.getString("email"));
                        prof.setAdresse(rs.getString("adresse"));
                        prof.setType(TypeCompte.PROFESSEUR);
                        PreparedStatement st2 = Connexion.getcon().prepareStatement("select * from professeurs where login=?");
                        st2.setString(1,prof.getLogin());
                        ResultSet rs2 = st2.executeQuery();
                        if(rs2.next())
                        {
                           prof.setGrade(rs2.getString("grade"));
                           return prof;
                        }
  
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