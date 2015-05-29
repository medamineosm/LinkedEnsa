<%@include  file="HEADERADMIN.jsp" %>          
<%@page import="ma.ensa.linked.metier.Groupe"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ma.ensa.linked.metier.Professeur"%>
<%
    ArrayList<Groupe> groupes = (ArrayList<Groupe>)request.getAttribute("groupes");
    ArrayList<Integer> counts = (ArrayList<Integer>)request.getAttribute("counts");
%>
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
            <h2 class="main-title">LISTES DES GROUPES</h2>
          </div>

          <div class="col-lg-12">
            <div class="groupe-content">
              <div class="sub-line"></div>
              <div class="sub-title">
                <div class="col-lg-5 row"><h3 class="row">Groupe de <%= ((Professeur)request.getSession().getAttribute("user")).getNom() %></h3></div>
              </div>
            </div>
          </div>

          <div class="col-lg-12">
            <div class="groupe-content-table">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <td>Nom du Groupe</td>
                    <td>Filiere</td>
                    <td>Niveau</td>
                    <td>Promotion</td>
                    <td>Nombre Etudiants</td>
                    <td>Options</td>
                  </tr>
                </thead>
                <tbody>
                  <%
                    for(int i=0;i<groupes.size();i++)
                    {
                        Groupe g = groupes.get(i);
                  %>
                <tr>
                    <td><%= g.getNom() %></td>
                    <td><%= g.getFiliere() %></td>
                    <td><%= g.getNiveau() %></td>
                    <td><%= g.getNiveau() %></td>
                    <td><%= counts.get(i) %></td>  
                    <td><a href="<%= request.getContextPath() %>/administration/detailsGroupe?id=<%= g.getIdentifiant() %>" class="btn btn-submit" href="#">Afficher</a></td>
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
  


                    
    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

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
    <%@include file="FOOTERADMIN.jsp" %>