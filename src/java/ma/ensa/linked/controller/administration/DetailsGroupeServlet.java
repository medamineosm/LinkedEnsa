/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.controller.administration;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ensa.linked.metier.Groupe;
import ma.ensa.linked.service.GroupeService;

/**
 *
 * @author Yunho
 */
@WebServlet(name = "DetailsGroupeServlet", urlPatterns = {"/administration/detailsGroupe"})
public class DetailsGroupeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Groupe grp = GroupeService.getGroupeById(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("groupe", grp);
        request.getRequestDispatcher("/administration/details_groupe.jsp").forward(request, response);
    }

}
