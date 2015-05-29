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
                <a href="#" class="active">
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
            <h2 class="main-title">ACCUEIL</h2>
          </div>

          <div class="accueil-content">
            <div class="col-lg-12">

              <div class="offre">
                <div class="sub-line"></div>
                <h3 class="sub-title"></h3>
              </div>

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
</body>
</html>
