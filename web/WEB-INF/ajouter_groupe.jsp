<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ENSAK CV</title>
    <link rel="stylesheet" type="text/css" href="dist/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/admin.css" />
</head>

<body>
    <div id="wrapper">
      
      <!-- Sidebar -->
      <div id="sidebar-wrapper">
        <div class="sidebar-nav">
          <div class="image-holder">
            <img src="images/flat/admin.png">
          </div>

          <div class="admin-menu">
            <ul class="sidebar-menu">
              <li>
                <a href="#">
                  <span class="glyphicon glyphicon-log-out"></span>
                  ACCUEIL
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="glyphicon glyphicon-log-out"></span>
                  LISTE GROUPES
                </a>
              </li>
              <li>
                <a href="#" class="active">
                  <span class="glyphicon glyphicon-log-out"></span>
                  CREATION GROUPES
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="glyphicon glyphicon-log-out"></span>
                  MESSAGE
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="glyphicon glyphicon-log-out"></span>
                  DÉCONNEXION
                </a>
              </li>
            </ul>
          </div>
        </div>    
      </div>
          
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
                <form class="bs-example form-horizontal row" method="POST" action="">
                  <fieldset>
                    <div class="col-lg-8">
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="nom_groupe" placeholder="Nom du Groupe" type="text">
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="username" placeholder="Filiere" type="text">
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="username" placeholder="Niveau" type="text">
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="username" placeholder="Promotion" type="text">
                        </div>
                      </div>

                      <input id="button" type="submit" value="Ajouter" class="btn btn-submit"></input>
                    </div>

                    <div class="col-lg-4">
                      <div class="media">
                        <div class="pull-left">
                          <img class="media-object" src="images/flat/excel.png">
                        </div>
                        <div class="media-body">
                          Inserer le fichier Excel des etudiant du groupe 
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                            <input type="file" id="fileHolder" name="excelFile" style="display:none">
                            <input id="excelFile" type="text" class="form-control">
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
