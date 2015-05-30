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
import ma.ensa.linked.metier.CatalogueEntreprise;
import ma.ensa.linked.metier.Connexion;

/**
 *
 * @author Yunho
 */
public class CatalogueEntrepriseService {
    
    public static CatalogueEntreprise getEntrepriseById(int id)
    {
        try {
            PreparedStatement st = Connexion.getcon().prepareStatement("select * from catalogue_entreprises where id_entreprise=?");
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                CatalogueEntreprise entreprise = new CatalogueEntreprise();
                entreprise.setIdentifiant(rs.getInt("id_entreprise"));
                entreprise.setNom(rs.getString("nom"));
                entreprise.setAdresse(rs.getString("adresse"));
                entreprise.setTelephone(rs.getString("telephone"));
                entreprise.setImage(rs.getString("image"));
                return entreprise;
            }
            else
                return null;
        } catch (SQLException ex) {
            Logger.getLogger(CatalogueEntrepriseService.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
