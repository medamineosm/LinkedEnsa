package ma.ensa.linked.metier;
import java.sql.*;

public class Connexion {
  
    public static Connection connexion=null;
      public static Connection getcon()
    {
        try {
            if(connexion==null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            connexion= DriverManager.getConnection("jdbc:mysql://localhost/linkedensa","root","");
            }
            return connexion;
            
            
        } catch (ClassNotFoundException ex) {
            System.err.println("Erreur chargement classe : " +ex.getMessage());
            
        } catch(SQLException ex){
            System.err.println("Erreur SQL : " +ex.getMessage());
            
        }
        return null;
        
    }

}