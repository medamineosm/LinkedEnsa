<%-- 
    Document   : index
    Created on : 28 mai 2015, 16:22:55
    Author     : Yunho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Authentification :</h1>
        <form method="post" action="<%= request.getContextPath() %>/Authentification">
            <% 
            if(request.getAttribute("message")!=null)
                out.println(request.getAttribute("message"));
            %>
            <pre>
Utilisateur : <input type="text" name="login" />

Mot de passe : <input type="password" name="password" />

<input type="submit" value="Valider" />            
            </pre>
        </form>
    </body>
</html>
