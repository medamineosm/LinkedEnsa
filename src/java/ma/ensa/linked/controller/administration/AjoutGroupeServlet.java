    /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.controller.administration;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ensa.linked.metier.Etudiant;
import ma.ensa.linked.metier.Groupe;
import ma.ensa.linked.metier.Professeur;
import ma.ensa.linked.metier.TypeCompte;
import ma.ensa.linked.service.EtudiantService;
import ma.ensa.linked.service.GroupeService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

/**
 *
 * @author Yunho
 */
@WebServlet(name = "AjoutGroupeServlet", urlPatterns = {"/administration/ajoutGroupe"})
public class AjoutGroupeServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                        Groupe grp = new Groupe();
                        /*grp.setNom(request.getParameter("nom"));
                        grp.setFiliere(request.getParameter("filiere"));
                        grp.setNiveau(request.getParameter("niveau"));
                        grp.setPromotion(request.getParameter("promotion"));*/
                        grp.setProfesseur((Professeur)request.getSession().getAttribute("user"));
                        
                        
         if(ServletFileUpload.isMultipartContent(request)){
                    try {
                        String chemin="";
                        List<FileItem> multiparts = new ServletFileUpload(
                                                 new DiskFileItemFactory()).parseRequest(request);
                      
                        for(FileItem item : multiparts){
                            if(!item.isFormField()){
                                String name = new File(item.getName()).getName();
                                
                                chemin = "D:\\"+File.separator + name;
                                item.write( new File(chemin));
                        
                            }
                            else
                            {
                                if(item.getFieldName().equals("nom"))
                                    grp.setNom(item.getString());
                                if(item.getFieldName().equals("filiere"))
                                    grp.setFiliere(item.getString());
                                if(item.getFieldName().equals("niveau"))
                                    grp.setNiveau(item.getString());
                                if(item.getFieldName().equals("promotion"))
                                    grp.setPromotion(item.getString());
                            }
                        }
                        int id_groupe=-1;
                        
                        
                        response.getWriter().println(grp);
                        if((id_groupe=GroupeService.ajoutGroupe(grp))!=-1)
                        {
                            grp.setIdentifiant(id_groupe);
                            
                            InputStream inp = null;
                           response.getWriter().println("Chemin du fichier a ouvrir : "+chemin);
                           inp = new FileInputStream(chemin);

                           Workbook wb = WorkbookFactory.create(inp);

                           Sheet sheet = wb.getSheetAt(0);
                           for(int i=1;sheet.getRow(i)!=null;i++)
                           {
                               Row row = sheet.getRow(i);
                               row.getCell(0).setCellType(Cell.CELL_TYPE_STRING);
                               String cne = row.getCell(0).getStringCellValue();
                               String nom=row.getCell(1).getStringCellValue();
                               String email=row.getCell(2).getStringCellValue();
                               Etudiant etud = new Etudiant();
                               etud.setCne(cne);
                               etud.setNom(nom);
                               etud.setEmail(email);
                               etud.setGroupe(grp);
                               etud.setType(TypeCompte.ETUDIANT);
                               etud.setLogin(nom.split(" ")[0]+cne.substring(2));
                               etud.setPassword(EtudiantService.generatePassword());
                               response.getWriter().println(etud);
                               EtudiantService.addEtudiant(etud);
                           }
                        }
                        else
                        {
                            request.setAttribute("resultat", "Echec d'ajout du groupe !");
                        }
                        request.setAttribute("resultat", "Le groupe a été ajouté avec succès");
                        
                        request.getRequestDispatcher("/administration/ajouter_groupe.jsp");
                    } catch (Exception ex) {
                        Logger.getLogger(AjoutGroupeServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    
                    
            
         }
    }

}
