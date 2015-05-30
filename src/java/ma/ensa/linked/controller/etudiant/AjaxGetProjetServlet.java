/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.controller.etudiant;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ensa.linked.metier.Formation;
import ma.ensa.linked.metier.Projet;
import ma.ensa.linked.service.FormationService;
import ma.ensa.linked.service.ProjetService;

/**
 *
 * @author Yunho
 */
@WebServlet(name = "AjaxGetProjetServlet", urlPatterns = {"/AjaxGetProjet"})
public class AjaxGetProjetServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Projet projet = ProjetService.getProjetById(Integer.parseInt(request.getParameter("id")));
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        response.setCharacterEncoding("UTF-8");
        if(projet!=null)
            response.getWriter().print(projet.getIdentifiant()+","+projet.getNom()+","+format.format(projet.getDate())+","+projet.getDescription()+","+
                    projet.getFonction()+","+projet.getLieu());
    }

}
