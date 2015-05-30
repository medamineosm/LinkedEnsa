/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.controller.etudiant;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ensa.linked.metier.Formation;
import ma.ensa.linked.service.FormationService;

/**
 *
 * @author Yunho
 */
@WebServlet(name = "AjaxGetFormationServlet", urlPatterns = {"/AjaxGetFormation"})
public class AjaxGetFormationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Formation formation = FormationService.getFormationById(Integer.parseInt(request.getParameter("id")));
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(formation.getIdentifiant()+","+formation.getNom_ecole()+","+formation.getAnnee_debut()+","+formation.getAnnee_fin()+","+formation.getDiplome()+","+formation.getDescription());
    }

}
