/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.controller.administration;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
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
import org.apache.commons.fileupload.FileUploadException;
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
@WebServlet(name = "ImportEtudiantsServlet", urlPatterns = {"/administration/importEtudiants"})
public class ImportEtudiantsServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                        Groupe grp = GroupeService.getGroupeById(Integer.parseInt(request.getParameter("id_groupe")));
                        response.getWriter().println(grp);
                        
                        
                        
         if(ServletFileUpload.isMultipartContent(request)){
                    try {
                        String chemin="";
                        List<FileItem> multiparts = new ServletFileUpload(
                                                 new DiskFileItemFactory()).parseRequest(request);
                      
                        for(FileItem item : multiparts){
                            if(!item.isFormField()){
                                String name = new File(item.getName()).getName();
                                
                                chemin = "C://Users//Yunho//Desktop//"+File.separator + name;
                                item.write( new File(chemin));
                        
                            }
                        }
                        
                            
                            
                           InputStream inp = null;
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
                               EtudiantService.addEtudiant(etud);
                           }
                        
                        request.setAttribute("resultat", "Etudiants importés avec succès");
                        
                        //request.getRequestDispatcher("/administration/listerGroupes");
                    } catch (Exception ex) {
                        Logger.getLogger(ImportEtudiantsServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    
                    
            
         }
    }

}
