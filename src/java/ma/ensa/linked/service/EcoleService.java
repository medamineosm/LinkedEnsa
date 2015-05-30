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
import ma.ensa.linked.metier.Ecole;

/**
 *
 * @author Yunho
 */
public class EcoleService {
    
    public static Ecole getEcoleById(int id)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from catalogue_ecoles where id_ecole=?");
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                Ecole ecole = new Ecole();
                ecole.setIdentifiant(rs.getInt("id_ecole"));
                ecole.setNom(rs.getString("nom"));
                ecole.setAdresse(rs.getString("adresse"));
                ecole.setTelephone(rs.getString("telephone"));
                ecole.setImage(rs.getString("image"));
                return ecole;
                        
            }
            else
                return null;
        } catch (SQLException ex) {
            Logger.getLogger(EcoleService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
}
