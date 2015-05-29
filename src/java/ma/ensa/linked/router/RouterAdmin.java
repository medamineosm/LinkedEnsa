/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.router;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
public class RouterAdmin extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String route = request.getParameter("route");
        switch(route)
        {
            case "Accueil":
                    request.getRequestDispatcher("/WEB-INF/administration/acceuil_admin.jsp").forward(request, response);
                break;
            case "CreationGroupe":
                    request.getRequestDispatcher("/WEB-INF/administration/ajouter_groupe.jsp").forward(request, response);
                break;
            case "ListerGroupe":
                    request.getRequestDispatcher("administration/listerGroupes").forward(request, response);
                break;
            case "ProfileEtudiant":
                    request.getRequestDispatcher("/WEB-INF/Error.jsp").forward(request, response);
                break;
            case "ListerEtudiantGroupe":
                    request.getRequestDispatcher("/WEB-INF/administration/liste_etudiant_groupe.jsp").forward(request, response);
                break;
            default:
                    request.getRequestDispatcher("/WEB-INF/Error.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
