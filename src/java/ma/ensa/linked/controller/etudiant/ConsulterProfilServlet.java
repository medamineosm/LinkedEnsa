/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.controller.etudiant;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ensa.linked.metier.Etudiant;
import ma.ensa.linked.metier.TypeCompte;
import ma.ensa.linked.metier.Utilisateur;
import ma.ensa.linked.service.EtudiantService;

/**
 *
 * @author Yunho
 */
@WebServlet(name = "ConsulterProfilServlet", urlPatterns = {"/etudiant/profil"})
public class ConsulterProfilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Utilisateur user = (Utilisateur)request.getSession().getAttribute("user");
        if(user!=null)
        {
            if(request.getParameter("etudiant")==null && user.getType()==TypeCompte.ETUDIANT)
            {
                request.setAttribute("etudiant", user);
                request.getRequestDispatcher("/WEB-INF/etudiant/etudiant.jsp").forward(request, response);
            }
            else if(user.getType()==TypeCompte.PROFESSEUR && request.getParameter("etudiant")!=null)
            {
                Etudiant etudiant = EtudiantService.getEtudiantById(request.getParameter("etudiant"));
                if(etudiant!=null)
                {
                    request.setAttribute("etudiant", etudiant);
                    request.getRequestDispatcher("/WEB-INF/etudiant/etudiant.jsp").forward(request, response);
                }
                else
                    response.getWriter().println("Etudiant introuvable");
            }
            else
                    response.getWriter().println("404");
        }
        else
                    response.getWriter().println("Vous devez etre connecté");
    }

}
