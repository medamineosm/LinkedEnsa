<%@page import="ma.ensa.linked.metier.Langue"%>
<%@page import="ma.ensa.linked.metier.Competence"%>
<%@page import="ma.ensa.linked.metier.Projet"%>
<%@page import="ma.ensa.linked.metier.Experience"%>
<%@page import="ma.ensa.linked.metier.Formation"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="ma.ensa.linked.metier.Etudiant"%>
<%
  Etudiant etudiant =(Etudiant)request.getAttribute("etudiant");
  SimpleDateFormat format_date = new SimpleDateFormat("dd/MM/yyyy");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Profil</title>
    <link rel="stylesheet" type="text/css" href="../dist/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>

<body>
    <div id="wrapper">
      
      <!-- Sidebar -->
      <div id="sidebar-wrapper">
        <div class="sidebar-nav">
          <div class="info">
            <div class="media">
              <div class="pull-left">
                <img class="media-object" src="../images/1.jpg">
              </div>
              <div class="media-body">
                <h3><%= etudiant.getNom() %></h3>
              </div>
            </div>
          </div>

          <div class="main-menu">
            <ul class="sidebar-menu">
              <li>
                <a href="#" class="active">
                  <span class="glyphicon glyphicon-tasks"></span>
                  PROFILE
                </a>
              </li>
              <li>
                  <a href="<%=request.getContextPath()%>/etudiant/EditProfilEtudiant">
                  <span class="glyphicon glyphicon-cog"></span>
                  EDIT PROFILE
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="glyphicon glyphicon-envelope"></span>
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
            <div class="main-header">
              <h2>PROFILE</h2>
            </div>
          </div>

          <div class="col-lg-12">
            <div class="profile-content row">
              
              <div class="info-general">
                <div class="col-lg-12">
                  <div class="col-lg-6">
                    <h2><%= etudiant.getNom() %></h2>
                    <p>Elève Ingéieur en Génie informatique ENSA Khouribga</p>
                    <p>Groupe : <%= etudiant.getGroupe().getNom() %></p>
                    <p>Proprietaire : <%= etudiant.getGroupe().getProfesseur().getNom() %></p>
                  </div>
                  <div class="col-lg-6 contact">
                    <p class="contact-component"><span class="glyphicon glyphicon-envelope"></span><%= etudiant.getEmail() %></p>
                    <p class="contact-component"><span class="glyphicon glyphicon-map-marker"></span><%= etudiant.getAdresse()!=null?etudiant.getAdresse():"-" %></p>
                    <p class="contact-component"><span class="glyphicon glyphicon-phone"></span><%= etudiant.getTelephone()!=null?etudiant.getTelephone():"-" %></p>
                    <p class="contact-component"><span class="glyphicon glyphicon-tag"></span><%= (etudiant.getDate_naissance()!=null)?format_date.format(etudiant.getDate_naissance()):"-" %></p>
                  </div>
                </div>
              </div>

              <!-- Section des formation  -->
              <div class="section-title formation-title">
                <div class="col-lg-12">
                  <div class="sub-line"></div>
                  <div class="sub-title">
                    <div class="media">
                      <div class="pull-left">
                        <img class="media-object" src="../images/icons/formation.png">
                      </div>
                      <div class="media-body">
                        <h3>FORMATIONS</h3>
                        <p>Liste des Formations Académiques</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="formation-content">
                <%
                for(Formation form : etudiant.getFormations())
                {
                %>            
                <!-- pour chaque formation -->
                <div class="col-lg-12 formation">
                  <div class="col-lg-2">
                    <div class="date-formation row"><h4><%= form.getAnnee_debut()+" - "+form.getAnnee_fin() %></h4></div>
                  </div>
                  <div class="col-lg-10">
                    <div class="formation-desc">
                    <p><b><i><%=((form.getEcole()!=null)?form.getEcole().getNom():form.getNom_ecole()) %></i></b>, <i><%= form.getDiplome() %></i></p>
                    <p><%= form.getDescription() %></p>
                    </div>
                  </div>
                </div>
                <%
                }
                %>
              </div>
              <!-- FIN Section des formation  -->
              <!-- Section des ExpÃ©riences  -->
              <div class="section-title  experience-title">
                <div class="col-lg-12">
                  <div class="sub-line"></div>
                  <div class="sub-title">
                    <div class="media">
                      <div class="pull-left">
                        <img class="media-object" src="../images/icons/experience.png">
                      </div>
                      <div class="media-body">
                        <h3>EXPERIENCES</h3>
                        <p>Liste des Expériences et Stages</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="experience-content">
                <%
                for(Experience exp : etudiant.getExperiences())
                {
                %>
                <!-- pour chaque experience -->
                <div class="col-lg-12 experience">
                  <div class="col-lg-2 date-experience">
                    <h4><%= format_date.format(exp.getDate_debut())%></h4>
                    <div class="short-line"></div>
                    <h4><%=format_date.format(exp.getDate_fin()) %></h4>
                  </div>
                  <div class="col-lg-10">
                    <div class="bs-callout-experience">
                      <h4><%= exp.getTitre()%></h4>
                      <p><b>Entreprise</b> : <%=((exp.getEntreprise()!=null)?exp.getEntreprise().getNom():exp.getNom_entrprise()) %></p>
                      <p><%= exp.getDescription() %></p>
                    </div>
                  </div>
                </div>
                <%
                }
                %>
              </div>
              <!-- FIN Section des ExpÃ©riences  -->

              <!-- Section des Projet  -->
              <div class="section-title projet-title">
                <div class="col-lg-12">
                  <div class="sub-line"></div>
                  <div class="sub-title">
                    <div class="media">
                      <div class="pull-left">
                        <img class="media-object" src="../images/icons/projet.png">
                      </div>
                      <div class="media-body">
                        <h3>PROJETS</h3>
                        <p>Liste des projets</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="projet-content">
                <%
                for(Projet projet : etudiant.getProjets())
                {
                %>
                <!-- pour chaque experience -->
                <div class="col-lg-12 projet">
                  <div class="projet-iner col-lg-12">
                    <div class="col-lg-8">
                      <h4><%= projet.getNom()%></h4>
                      <p><%= projet.getDescription() %></p>
                      <p><%=projet.getFonction() %></p>
                    </div>
                    <div class="col-lg-4 right-side-content">
                      <p><span class="glyphicon glyphicon-map-marker"></span><b>Lieu</b> : <%= projet.getLieu() %></p>
                      <p><span class="glyphicon glyphicon-calendar"></span><b>Date</b> : <%= format_date.format(projet.getDate()) %></p>
                    </div>
                  </div>
                </div>
                <%
                }
                %>
              </div>
              <!-- FIN Section des Projet  -->

              <!-- Section des CompÃ©tences  -->
              <div class="section-title competence-title">
                <div class="col-lg-12">
                  <div class="sub-line"></div>
                  <div class="sub-title">
                    <div class="media">
                      <div class="pull-left">
                        <img class="media-object" src="../images/icons/competence.png">
                      </div>
                      <div class="media-body">
                        <h3>COMPETENCES</h3>
                        <p>Competences Techniques</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="competence-content">
                <div class="col-lg-12">
                  <ul>
                  <%
                    for(Competence comp : etudiant.getCompetences())
                    {
                  %>
                    <li><span class="label-competence"><%= comp.getNom() %></span></li>
                  <%
                    }
                  %>
                    </ul>
                </div>
              </div>
              <!-- FIN Section des CompÃ©tences  -->


              <!-- Section des language  -->
              <div class="section-title langue-title">
                <div class="col-lg-12">
                  <div class="sub-line"></div>
                  <div class="sub-title">
                    <div class="media">
                      <div class="pull-left">
                        <img class="media-object" src="../images/icons/language.png">
                      </div>
                      <div class="media-body">
                        <h3>LANGUES</h3>
                        <p>Connaissances linguistiques</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="langue-content">
                <div class="col-lg-12">
                  <ul>
                   <%
                      for(Langue langue : etudiant.getLangues())
                      {
                      %>
                    <li>
                      <div class="langue">
                        <span class="label-langue"><%= langue.getIntitule()%></span><span class="niveau-langue" ><%=langue.getNiveau()  %></span>
                      </div>
                    </li>
                    <%
                    }
                    %>
                  </ul>
                </div>
              </div>

              <!-- FIN Section des language  -->
            </div>
          </div>

        </div>  
      </div>
      
    </div>
  
    <!-- JavaScript -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="../dist/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../dist/js/bootstrap.js"></script>

    <!-- Custom JavaScript for the Menu Toggle -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
    });
    </script>
</body>
</html>
