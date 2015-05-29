/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.ensa.linked.metier.Utilisateur;
import ma.ensa.linked.service.UtilisateurService;

/**
 *
 * @author Yunho
 */
@WebServlet(name = "AuthentificationServlet", urlPatterns = {"/Authentification"})
public class AuthentificationServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        if(request.getParameter("login")!=null && request.getParameter("password")!=null)
        {
            Utilisateur user = UtilisateurService.authentifierUtilisateur(login,password);
            if(user==null)
            {
                request.setAttribute("message", "Utilisateur/Mot de passe incorrectes");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            else
            {
                request.getSession().setAttribute("user", user);
                request.getRequestDispatcher("/WEB-INF/administration/acceuil_admin.jsp").forward(request, response);
            }
        }
    }

}
