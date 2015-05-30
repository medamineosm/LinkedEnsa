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
import ma.ensa.linked.metier.Groupe;
import ma.ensa.linked.metier.TypeCompte;

/**
 *
 * @author Yunho
 */
public class EtudiantService {
    
    public static boolean addEtudiant(Etudiant etudiant)
    {
        try {
            Connexion.getcon().setAutoCommit(false);
            if(UtilisateurService.insertUser(etudiant))
            {
                PreparedStatement st = Connexion.getcon().prepareStatement("insert into etudiants values(?,?,?,?)");
                st.setString(1, etudiant.getLogin());
                st.setString(2, etudiant.getCne());
                if(etudiant.getDate_naissance()!=null)
                    st.setDate(3, new java.sql.Date(etudiant.getDate_naissance().getTime()));
                else
                    st.setDate(3, null);
                st.setInt(4, etudiant.getGroupe().getIdentifiant());
                
                if(st.executeUpdate()!=0)
                {
                    Connexion.getcon().commit();
                    Connexion.getcon().setAutoCommit(true);
                    return true;
                }
                else
                {
                    Connexion.getcon().rollback();
                    Connexion.getcon().setAutoCommit(true);
                    return false;
                }
            }
            Connexion.getcon().setAutoCommit(true);
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(EtudiantService.class.getName()).log(Level.SEVERE, null, ex);
            try {
                Connexion.getcon().setAutoCommit(true);
            } catch (SQLException ex1) {
                Logger.getLogger(EtudiantService.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            return false;
        }
    }
    
    public static String generatePassword()
    {
        String alpha = "abcdefgijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789*$&";
        String password="";
        while(password.length()<10)
        {
            password += alpha.charAt((int)Math.round(Math.random()*63));
        }
        return password;
    }
    
    public static ArrayList<Etudiant> getEtudiantsByGroupe(Groupe grp)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from logins l,etudiants e where l.login=e.login and id_groupe=?");
            st.setInt(1, grp.getIdentifiant());
            ResultSet rs = st.executeQuery();
            ArrayList<Etudiant> liste = new ArrayList<Etudiant>();
            Etudiant e;
            while(rs.next())
            {
                e = new Etudiant();
                e.setLogin(rs.getString("login"));
                e.setNom(rs.getString("nom"));
                e.setTelephone(rs.getString("telephone"));
                e.setEmail(rs.getString("email"));
                e.setAdresse(rs.getString("adresse"));
                e.setType(TypeCompte.ETUDIANT);
                e.setCne(rs.getString("cne"));
                e.setDate_naissance(rs.getDate("date_naissance"));
                e.setGroupe(grp);
                liste.add(e);
            }
            return liste;   
        } catch (SQLException ex) {
            Logger.getLogger(EtudiantService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public static Etudiant getEtudiantById(String login)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from logins l,etudiants e where l.login=e.login and e.login=?");
            st.setString(1, login);
            ResultSet rs = st.executeQuery();
            Etudiant e;
            if(rs.next())
            {
                e = new Etudiant();
                e.setLogin(rs.getString("login"));
                e.setNom(rs.getString("nom"));
                e.setTelephone(rs.getString("telephone"));
                e.setEmail(rs.getString("email"));
                e.setAdresse(rs.getString("adresse"));
                e.setType(TypeCompte.ETUDIANT);
                e.setCne(rs.getString("cne"));
                e.setDate_naissance(rs.getDate("date_naissance"));
                e.setGroupe(GroupeService.getGroupeById(rs.getInt("id_groupe")));
                e.setFormations(FormationService.getFormationsByEtudiant(e));
                e.setExperiences(ExperienceService.getExperiencesByEtudiant(e));
                e.setProjets(ProjetService.getProjetsByEtudiant(e));
                e.setLangues(LangueService.getLanguesByEtudiant(e));
                e.setCompetences(CompetenceService.getcompetencesByEtudiant(e));
                return e;
            }
            else
                return null;
        } catch (SQLException ex) {
            Logger.getLogger(EtudiantService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    
}
