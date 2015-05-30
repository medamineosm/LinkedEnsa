/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
import ma.ensa.linked.metier.Utilisateur;

/**
 *
 * @author PC
 */
@WebServlet(name = "EditProfilEtudiant", urlPatterns = {"/etudiant/EditProfilEtudiant"})
public class EditProfilEtudiant extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Utilisateur user = (Utilisateur)request.getSession().getAttribute("user");
        if(user!=null)
        {
            request.setAttribute("etudiant", user);
            request.getRequestDispatcher("/WEB-INF/etudiant/etudiant_edit.jsp").forward(request, response);
        }else{
            response.getWriter().println("404");
        }
    }

    
}
