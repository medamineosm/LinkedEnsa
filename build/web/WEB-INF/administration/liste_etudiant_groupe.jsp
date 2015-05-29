<%@page import="ma.ensa.linked.metier.Etudiant"%>
<%@page import="ma.ensa.linked.service.GroupeService"%>
<%@page import="ma.ensa.linked.metier.Groupe"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ma.ensa.linked.metier.Professeur"%>
<%@include file="HEADERADMIN.jsp"%>
<%Groupe g = (Groupe)request.getAttribute("groupe");%>
      <!-- Page content -->
      <div id="page-content-wrapper">
        <div class="content-header">
          <h1>
            <a id="menu-toggle" href="#" class="btn btn-default"><i class="icon-reorder"></i></a>
          </h1>
        </div>
        <!-- Keep all page content within the page-content inset div! -->
        <div class="page-content inset">

          <div class="col-lg-12">
            <h2 class="main-title">LISTES DES ETUDIANTS</h2>
          </div>

          <div class="col-lg-12">
            <div class="groupe-content">
              <div class="sub-line"></div>
              <div class="sub-title">
                <div class="col-lg-4 row"><h3 class="row"><%= g.getNom() %></h3></div>
              </div>
            </div>
          </div>

          <div class="col-lg-12">
            <div class="groupe-content-table">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th>CNE</th>
                    <th>Nom</th>
                    <th>Telephone</th>
                    <th>Email</th>
                    <th>Login</th>
                    <th>Profil</th>
                  </tr>
                </thead>
                <tbody>
                    </tr>
                    <%
                    for(Etudiant e : g.getListeEtudiants())
                    {
                    %>
                    <tr>
                        <td><%= e.getCne() %></td>
                        <td><%= e.getNom() %></td>
                        <td><%= e.getTelephone()==null?"-":e.getTelephone() %></td>
                        <td><%= e.getEmail() %></td>
                        <td><%= e.getLogin() %></td>
                        <td><a href="RouterAdmin?route=ProfileEtudiant&id_etudiant=1" class="btn btn-submit" href="#">Afficher</a></td>
                    </tr>
                    <%
                    }
                    %>   
                </tbody>
              </table>

            </div>
          </div>
          
        </div>  
      </div>
      
    </div>
  


                    
    <!-- Custom JavaScript for the Menu Toggle -->
    <script>
      $("#menu-toggle").click(function(e) {
          e.preventDefault();
          $("#wrapper").toggleClass("active");
      });
    </script>
    <script type="text/javascript">
      $('input[id=fileHolder]').change(function() {
      $('#excelFile').val($(this).val());
      });
    </script>
</body>
</html>
