<%-- 
    Document   : intermaidiare
    Created on : 30 mai 2015, 18:50:35
    Author     : PC
--%>

<%@page import="ma.ensa.linked.metier.TypeCompte"%>
<%@page import="ma.ensa.linked.metier.Utilisateur"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <nav style="float:left;">
            <%
            if(((Utilisateur)request.getSession().getAttribute("user")).getType()==TypeCompte.PROFESSEUR ||
                   ((Utilisateur)request.getSession().getAttribute("user")).getType()==TypeCompte.ADMINISTRATEUR )
            {
            %>
            <li><a href="<%= request.getContextPath() %>/administration/index.jsp">Administration</a></li>
            <li><a href="<%= request.getContextPath() %>/administration/ajout_groupe.jsp">Creation de groupe</a></li>
            <li><a href="<%= request.getContextPath() %>/administration/listerGroupes">Liste des groupes</a></li>
            <%
            }
            %>
            
            <%
            
            if(((Utilisateur)request.getSession().getAttribute("user")).getType()==TypeCompte.ETUDIANT)
            {
            %>
            <li><a href="<%= request.getContextPath() %>/etudiant/profil">Profil</a></li>
            
            <%
            }
            %>
 </nav><br>
<%@include file="administration/FOOTERADMIN.jsp" %>