/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.controller.etudiant;

import java.io.IOException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ensa.linked.metier.Experience;
import ma.ensa.linked.service.ExperienceService;

/**
 *
 * @author Yunhoo
 */
@WebServlet(name = "AjaxGetExperienceServlet", urlPatterns = {"/AjaxGetExperience"})
public class AjaxGetExperienceServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Experience experience = ExperienceService.getExperienceById(Integer.parseInt(request.getParameter("id")));
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        response.setCharacterEncoding("UTF-8");
        if(experience!=null)
        response.getWriter().print(experience.getNom_entrprise()+","+experience.getTitre()+","+format.format(experience.getDate_debut())+
                ","+format.format(experience.getDate_fin())+","+experience.getDescription()+","+experience.isEn_cours());
    }

}
