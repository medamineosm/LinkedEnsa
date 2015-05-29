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
            <h2 class="main-title">CREATION GROUPES</h2>
          </div>

          <div class="col-lg-12">
            <div class="groupe-content">
              <div class="sub-line"></div>
              <div class="sub-title">
                <div class="col-lg-4 row"><h3 class="row">Nouveau Groupe</h3></div>
              </div>
            </div>
          </div>

          <div class="col-lg-12">
            <div class="groupe-content-form">
                <form class="bs-example form-horizontal row" method="POST" action="<%=request.getContextPath()%>/administration/ajoutGroupe" enctype="multipart/form-data" >
                  <fieldset>
                    <div class="col-lg-8">
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="nom" placeholder="Nom du Groupe" type="text">
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="filiere" placeholder="Filiere" type="text">
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="niveau" placeholder="Niveau" type="text">
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="promotion" placeholder="Promotion" type="text">
                        </div>
                      </div>

                      <input id="button" type="submit" value="Ajouter" class="btn btn-submit"></input>
                    </div>

                    <div class="col-lg-4">
                      <div class="media">
                        <div class="pull-left">
                            <img class="media-object" src="<%=request.getContextPath()%>/images/flat/excel.png">
                        </div>
                        <div class="media-body">
                          Inserer le fichier Excel des etudiant du groupe 
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                            <input type="file" id="fileHolder" name="excelFile" style="display:none">
                            <input id="excelFile" type="text" class="form-control" disabled="disabled">
                        </div>
                      </div>
                      <botton class="btn btn-submit" onclick="$('input[id=fileHolder]').click();">Upload</botton>
                    </div>

                  </fieldset>
                </form>
              
            </div>
          </div>
          
        </div>  
      </div>
      
    </div>
   <!-- Custom JavaScript for the Menu Toggle -->
    <script type="text/javascript">
    $(document).ready(function(){
        
      $("#menu-toggle").click(function(e) {
          e.preventDefault();
          $("#wrapper").toggleClass("active");
      });
    
        
      $('#fileHolder').change(function() {
      $('#excelFile').val($(this).val());
      alert($("#excelFile").val());
      });  
    });
      
    </script>
 <%@include  file="FOOTERADMIN.jsp"%>
 