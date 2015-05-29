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
                <a href="#" class="active">
                  <span class="glyphicon glyphicon-log-out"></span>
                  LISTE GROUPES
                </a>
              </li>
              <li>
                <a href="#">
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
            <h2 class="main-title">LISTES DES ETUDIANTS</h2>
          </div>

          <div class="col-lg-12">
            <div class="groupe-content">
              <div class="sub-line"></div>
              <div class="sub-title">
                <div class="col-lg-4 row"><h3 class="row">(nom du groupe)</h3></div>
              </div>
            </div>
          </div>

          <div class="col-lg-12">
            <div class="groupe-content-table">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <td>#</td>
                    <td>Nom</td>
                    <td>Prénom</td>
                    <td>Email</td>
                    <td>Options</td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Sahi</td>
                    <td>Mouad</td>
                    <td>mouad.sahi@gmail.com</td>
                    <td><a class="btn btn-submit" href="#">Afficher</a></td>
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
