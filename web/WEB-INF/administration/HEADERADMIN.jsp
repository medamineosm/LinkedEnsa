<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ENSAK CV</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/dist/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/admin.css" />
    <script src="<%=request.getContextPath()%>/dist/js/jquery-1.11.3.min.js"></script>
</head>

<body>
    <div id="wrapper">
      
      <!-- Sidebar -->
      <div id="sidebar-wrapper">
        <div class="sidebar-nav">
          <div class="image-holder">
            <img src="<%=request.getContextPath()%>/images/flat/admin.png">
          </div>

          <div class="admin-menu">
            <ul class="sidebar-menu">
              <li>
                <a href="RouterAdmin?route=Accueil" class="active">
                  <span class="glyphicon glyphicon-log-out"></span>
                  ACCUEIL
                </a>
              </li>
              <li>
                  <a href="<%=request.getContextPath()%>/administration/listerGroupes">
                  <span class="glyphicon glyphicon-log-out"></span>
                  LISTE GROUPES
                </a>
              </li>
              <li>
                <a href="<%=request.getContextPath()%>/administration/AjouterGroupeFormServlet">
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
                  DECONNEXION
                </a>
              </li>
            </ul>
          </div>
        </div>    
      </div>
