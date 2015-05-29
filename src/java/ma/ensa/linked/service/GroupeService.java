/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import ma.ensa.linked.metier.Connexion;
import ma.ensa.linked.metier.Groupe;
import ma.ensa.linked.metier.Professeur;

/**
 *
 * @author Yunho
 */
public class GroupeService {
    
    public static int ajoutGroupe(Groupe grp)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("insert into groupes values(null,?,?,?,?,?)");
            st.setString(1,grp.getNom());
            st.setString(2,grp.getFiliere());
            st.setString(3,grp.getNiveau());
            st.setString(4,grp.getPromotion());
            st.setString(5,grp.getProfesseur().getLogin());
            if(st.executeUpdate()!=0)
            {
                Statement st2 = Connexion.getcon().createStatement();
                ResultSet rs = st2.executeQuery("select max(id_groupe) from groupes");
                rs.next();
                return rs.getInt(1);
            }
            else
                return -1;
        } catch (SQLException ex) {
            Logger.getLogger(GroupeService.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
        
    }
    
    public static ArrayList<Groupe> getGroupesByProf(Professeur prof)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select id_groupe,nom_groupe,filiere,niveau,promotion,createur from groupes where createur=?");
            st.setString(1, prof.getLogin());
            ResultSet rs = st.executeQuery();
            ArrayList<Groupe> liste = new ArrayList<Groupe>();
            Groupe grp ;
            while(rs.next())
            {
                grp = new Groupe();
                grp.setIdentifiant(rs.getInt("id_groupe"));
                grp.setNom(rs.getString("nom_groupe"));
                grp.setFiliere(rs.getString("filiere"));
                grp.setNiveau(rs.getString("niveau"));
                grp.setPromotion(rs.getString("promotion"));
                grp.setProfesseur(prof);
                liste.add(grp);
            }
            return liste;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public static int getCountMembers(Groupe grp)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select count(*) from etudiants where id_groupe=?");
            st.setInt(1, grp.getIdentifiant());
            ResultSet rs = st.executeQuery();
            rs.next();
            return rs.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return -1;
        }
    }
    
    public static Groupe getGroupeById(int identifiant)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select id_groupe,nom_groupe,filiere,niveau,promotion,createur from groupes where id_groupe=?");
            st.setInt(1, identifiant);
            ResultSet rs = st.executeQuery();
            
            Groupe grp ;
            if(rs.next())
            {
                grp = new Groupe();
                grp.setIdentifiant(rs.getInt("id_groupe"));
                grp.setNom(rs.getString("nom_groupe"));
                grp.setFiliere(rs.getString("filiere"));
                grp.setNiveau(rs.getString("niveau"));
                grp.setPromotion(rs.getString("promotion"));
                grp.setProfesseur(ProfesseurService.getProfesseurById(rs.getString("createur")));
                grp.setListeEtudiants(EtudiantService.getEtudiantsByGroupe(grp));
                return grp;
            }
            return null;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
