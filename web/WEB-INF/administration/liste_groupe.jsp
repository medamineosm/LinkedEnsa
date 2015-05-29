<%@include  file="HEADERADMIN.jsp" %>          
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
                <div class="col-lg-4 row"><h3 class="row">Groupe</h3></div>
              </div>
            </div>
          </div>

          <div class="col-lg-12">
            <div class="groupe-content-table">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <td>#</td>
                    <td>Nom du Groupe</td>
                    <td>Filiere</td>
                    <td>Niveau</td>
                    <td>Promotion</td>
                    <td>Nombre Etudiants</td>
                    <td>Options</td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Groupe GI</td>
                    <td>GI</td>
                    <td>2 ème année</td>
                    <td>2011/2016</td>
                    <td>10</td>
                    <td><a href="RouterAdmin?route=ListerEtudiantGroupe&id_etudiant=1" class="btn btn-submit" href="#">Afficher</a></td>
                  </tr>    
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
</body>
</html>
