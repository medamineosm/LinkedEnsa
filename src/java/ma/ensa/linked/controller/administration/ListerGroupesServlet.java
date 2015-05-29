/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.controller.administration;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ensa.linked.metier.Groupe;
import ma.ensa.linked.metier.Professeur;
import ma.ensa.linked.service.GroupeService;

/**
 *
 * @author Yunho
 */
@WebServlet(name = "ListerGroupesServlet", urlPatterns = {"/administration/listerGroupes"})
public class ListerGroupesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<Groupe> groupes = GroupeService.getGroupesByProf((Professeur)request.getSession().getAttribute("user"));
        ArrayList<Integer> counts = new ArrayList<Integer>();
        for(Groupe g : groupes)
        {
            counts.add(GroupeService.getCountMembers(g));
        }
        request.setAttribute("groupes", groupes);
        request.setAttribute("counts", counts);
        
        request.getRequestDispatcher("/WEB-INF/administration/liste_groupe.jsp").forward(request, response);
    }

}
