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
                    <p>Eléve Ingéieur en Génie informatique ENSA Khouribga</p>
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
                    <div class="date-formation row"><h4>2014 - 2015</h4></div>
                  </div>
                  <div class="col-lg-10">
                    <div class="formation-desc"><p>ENSA Khouribga Cycle d’ingénieur GI.</p></div>
                  </div>
                  <!-- button update -->
                  <div class="col-lg-12 update-btn">
                    <a data-toggle="modal" id="edit_form_<%= form.getIdentifiant() %>" data-target="#add_formation" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                  </div>
                </div>
                </li>
                <%
                }
                %>

                <!-- button add -->
                <div class="col-lg-12 add-btn">
                  <a data-toggle="modal" data-target="#add_formation" class="pull-right"><span class="glyphicon glyphicon-plus"></span>Ajouter</a>
                </div>
                
              </div>
              <!-- FIN Section des formation  -->

              <!-- Section des Expériences  -->
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
                  <!-- button update -->
                  <div class="col-lg-12 update-btn">
                    <a data-toggle="modal" data-target="#add_experience" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                  </div>
                </div>
                

                <!-- button add -->
                <div class="col-lg-12 add-btn">
                  <a data-toggle="modal" data-target="#add_experience" class="pull-right"><span class="glyphicon glyphicon-plus"></span>Ajouter</a>
                </div>

              </div>
              <!-- FIN Section des Expériences  -->

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

                <!-- pour chaque experience -->
                <div class="col-lg-12 projet">
                  <div class="projet-iner col-lg-12">
                    <div class="col-lg-8">
                      <h4>Titre projet</h4>
                      <p>Description</p>
                      <p>poste</p>
                    </div>
                    <div class="col-lg-4 right-side-content">
                      <p><span class="glyphicon glyphicon-map-marker"></span>Lieu : </p>
                      <p><span class="glyphicon glyphicon-calendar"></span>Date : </p>
                    </div>
                  </div>
                  <!-- button update -->
                  <div class="col-lg-12 update-btn">
                    <a data-toggle="modal" data-target="#add_projet" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                  </div>
                </div>
                <!-- pour chaque experience -->
                <div class="col-lg-12 projet">
                  <div class="projet-iner col-lg-12">
                    <div class="col-lg-8">
                      <h4>Titre projet</h4>
                      <p>Description</p>
                      <p>poste</p>
                    </div>
                    <div class="col-lg-4 right-side-content">
                      <p><span class="glyphicon glyphicon-map-marker"></span>Lieu : </p>
                      <p><span class="glyphicon glyphicon-calendar"></span>Date : </p>
                    </div>
                  </div>
                  <!-- button update -->
                  <div class="col-lg-12 update-btn">
                    <a data-toggle="modal" data-target="#add_projet" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                  </div>
                </div>

                <!-- button add -->
                <div class="col-lg-12 add-btn">
                  <a data-toggle="modal" data-target="#add_projet" class="pull-right"><span class="glyphicon glyphicon-plus"></span>Ajouter</a>
                </div>

              </div>
              <!-- FIN Section des Projet  -->

              <!-- Section des Compétences  -->
              <div class="section-title competence-title">
                <div class="col-lg-12">
                  <div class="sub-line"></div>
                  <div class="sub-title">
                    <div class="media">
                      <div class="pull-left">
                        <img class="media-object" src="../images/icons/competence.png">
                      </div>
                      <div class="media-body">
                        <h3>COMPÉTENCES</h3>
                        <p>Compétences Techniques</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="competence-content">
                <div class="col-lg-12">
                  <ul>
                    <li>
                      <span class="label-competence">New</span>
                      <!-- update btn -->
                      <a data-toggle="modal" data-target="#add_competence" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                    </li>
                    <li>
                      <span class="label-competence">Java</span>
                      <!-- update btn -->
                      <a data-toggle="modal" data-target="#add_competence" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                    </li>
                    <li>
                      <span class="label-competence">C++</span>
                      <!-- update btn -->
                      <a data-toggle="modal" data-target="#add_competence" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                    </li>
                    <li>
                      <span class="label-competence">Netbeans</span>
                      <!-- update btn -->
                      <a data-toggle="modal" data-target="#add_competence" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                    </li>
                    <li>
                      <span class="label-competence">Meta</span>
                      <!-- update btn -->
                      <a data-toggle="modal" data-target="#add_competence" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                    </li>
                  </ul>
                </div>

                <!-- button add -->
                <div class="col-lg-12 add-btn">
                  <a data-toggle="modal" data-target="#add_competence" class="pull-right"><span class="glyphicon glyphicon-plus"></span>Ajouter</a>
                </div>
              </div>
              <!-- FIN Section des Compétences  -->


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
                    <li>
                      <div class="langue">
                        <span class="label-langue">Arabe</span><span class="niveau-langue" >Langue maternelle.</span>
                        <!-- update btn -->
                        <a data-toggle="modal" data-target="#add_langue" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                      </div>
                    </li>
                    <li>
                      <div class="langue">
                        <span class="label-langue">Français</span><span class="niveau-langue" >Langue courante.</span>
                        <!-- update btn -->
                        <a data-toggle="modal" data-target="#add_langue" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                      </div>
                    </li>
                    <li>
                      <div class="langue">
                        <span class="label-langue">Anglais</span><span class="niveau-langue" >Bon niveau.</span>
                        <!-- update btn -->
                        <a data-toggle="modal" data-target="#add_langue" class="pull-right"><span class="glyphicon glyphicon-pencil"></span></a>
                      </div>
                    </li>
                  </ul>
                </div>

                <!-- button add -->
                <div class="col-lg-12 add-btn">
                  <a data-toggle="modal" data-target="#add_langue" class="pull-right"><span class="glyphicon glyphicon-plus"></span>Ajouter</a>
                </div>

              </div>

              <!-- FIN Section des language  -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="footer">
              <a class="btn btn-valider" href="#">Valider les modification</a>
            </div>
          </div>
        </div>  
      </div>
      
    </div>



    <!-- Modal add or update formation -->
    <div class="modal fade modal-formation" id="add_formation" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog" >
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Gestion Formation</h4>
          </div>
          <div class="modal-body" >
          <div id="edit_form_div">
            <form class="bs-example form-horizontal" method="POST" action="">
                <fieldset>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" id="edit_form_ecole" name="ecole" placeholder="Ecole" type="text">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" id="edit_form_diplome"name="diplome" placeholder="Diplome" type="text">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <textarea class="form-control" name="desc" id="edit_form_desc" placeholder="Description"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <select  class="form-control" name="debut" id="edit_form_annee_debut">
                            <option selected="selected">Date Début</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <select  class="form-control" name="fin" id="edit_form_annee_fin">
                            <option selected="selected">Date Fin</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option>
                          </select>
                        </div>
                      </div>
                      <input id="button" type="submit" value="Modifier" class="btn btn-submit" id="edit_form_btn_edit"></input>
                      <input id="button" type="submit" value="Supprimer" class="btn btn-submit"></input>
                      <input id="button" type="submit" value="Ajouter" class="btn btn-submit" id="edit_form_btn_add"></input>
                </fieldset>
              </form>

          </div>
              
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-close" data-dismiss="modal">Close</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!-- Modal add or update experience -->
    <div class="modal fade modal-experience" id="add_experience" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Gestion Experience</h4>
          </div>
          <div class="modal-body">

              <form class="bs-example form-horizontal" method="POST" action="">
                <fieldset>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="date_debut" placeholder="Date debut" type="date">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="date_fin" placeholder="Date fin" type="date">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="titre_experience" placeholder="Titre" type="text">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="entreprise_experience" placeholder="Entreprise" type="text">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <textarea class="form-control" name="description_experience" placeholder="Description"></textarea>
                        </div>
                      </div>
                      <input id="button" type="submit" value="Modifier" class="btn btn-submit"></input>
                      <input id="button" type="submit" value="Supprimer" class="btn btn-submit"></input>
                      <input id="button" type="submit" value="Ajouter" class="btn btn-submit"></input>
                </fieldset>
              </form>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-close" data-dismiss="modal">Close</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!-- Modal add or update projet -->
    <div class="modal fade modal-projet" id="add_projet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Gestion Projet</h4>
          </div>
          <div class="modal-body">

              <form class="bs-example form-horizontal" method="POST" action="">
                <fieldset>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="titre_projet" placeholder="Titre Projet" type="text">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="poste_projet" placeholder="Poste" type="text">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <textarea class="form-control" name="description_projet" placeholder="Description"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="lieu_projet" placeholder="Lieu" type="text">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="dateprojet" placeholder="Date" type="date">
                        </div>
                      </div>
                      <input id="button" type="submit" value="Modifier" class="btn btn-submit"></input>
                      <input id="button" type="submit" value="Supprimer" class="btn btn-submit"></input>
                      <input id="button" type="submit" value="Ajouter" class="btn btn-submit"></input>
                </fieldset>
              </form>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-close" data-dismiss="modal">Close</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!-- Modal add or update competence -->
    <div class="modal fade modal-competence" id="add_competence" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Gestion Compétence</h4>
          </div>
          <div class="modal-body">

              <form class="bs-example form-horizontal" method="POST" action="">
                <fieldset>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="nom_langue" placeholder="Intitule Compétence" type="text">
                        </div>
                      </div>
                      <input id="button" type="submit" value="Supprimer" class="btn btn-submit"></input>
                      <input id="button" type="submit" value="Ajouter" class="btn btn-submit"></input>
                </fieldset>
              </form>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-close" data-dismiss="modal">Close</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!-- Modal add or update language -->
    <div class="modal fade modal-langue" id="add_langue" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Gestion Langue</h4>
          </div>
          <div class="modal-body">

              <form class="bs-example form-horizontal" method="POST" action="">
                <fieldset>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="nom_langue" placeholder="Intitule Langue" type="text">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                          <input class="form-control" name="niveau" placeholder="Niveau" type="text">
                        </div>
                      </div>
                      <input id="button" type="submit" value="Modifier" class="btn btn-submit"></input>
                      <input id="button" type="submit" value="Supprimer" class="btn btn-submit"></input>
                      <input id="button" type="submit" value="Ajouter" class="btn btn-submit"></input>
                </fieldset>
              </form>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-close" data-dismiss="modal">Close</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->



    <!-- JavaScript -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="..//js/jquery.js"></script>
    <script type="text/javascript" src="..//dist/js/bootstrap.js"></script>

    <!-- Custom JavaScript for the Menu Toggle -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
    });
    </script>
    <script>
$(document).ready(function(){
                    
                    $("#edit_form_div").hide();
                    $("#edit_exp_div").hide();
                    $("#edit_projet_div").hide();
                    $("#edit_competence_div").hide();
                    $("#edit_langue_div").hide();
                    
                    
                    $("a[id^=edit_form_]").click(function(){
                        var id_formation = this.id.split('_')[2];
                        $("#edit_form_btn_edit").show();
                        $("#edit_form_btn_add").hide();

                            $.ajax({
                                type:'GET',
                                url: "<%= request.getContextPath() %>/AjaxGetFormation?id="+id_formation,
                                success: function(result){
                                    $("#edit_form_ecole").val(result.split(',')[1]);
                                    $("#edit_form_annee_debut option[value="+result.split(',')[2]+"]").attr("selected","selected");
                                    $("#edit_form_annee_fin option[value="+result.split(',')[3]+"]").attr("selected","selected");
                                    $("#edit_form_diplome").val(result.split(',')[4]);
                                    $("#edit_form_desc").val(result.split(',')[5]);
                                    $("#edit_form_div").show();

                                }
                            });

           
                    });
                    
                    $("a[id=add_formation_btn]").click(function(){
                        $("#edit_form_btn_edit").hide();
                        $("#edit_form_btn_add").show();
                        
                        $("#edit_form_ecole").val("");
                        $("#edit_form_diplome").val("");
                        $("#edit_form_desc").val("");
                        $("#edit_form_div").show();
                        $("#edit_form_annee_debut option:first-child").attr("selected","selected");
                        $("#edit_form_annee_fin option:first-child").attr("selected","selected");
                        
                    });
                    
                    $("a[id^=edit_exp_]").click(function(){
                        var id_experience = this.id.split('_')[2];
                       
                       $.ajax({
                                type:'GET',
                                url: "<%= request.getContextPath() %>/AjaxGetExperience?id="+id_experience,
                                success: function(result){
                                    $("#edit_exp_entreprise").val(result.split(",")[0]);
                                    $("#edit_exp_titre").val(result.split(",")[1]);
                                    $("#edit_exp_debut").val(result.split(",")[2]);
                                    $("#edit_exp_fin").val(result.split(",")[3]);
                                    $("#edit_exp_desc").val(result.split(",")[4]);
                                    if(result.split(",")[5]=='true')
                                        $("#edit_exp_encours").attr("checked","checked");
                                    else
                                        $("#edit_exp_encours").removeAttr("checked");
                                    

                                }
                            });
                        $("#edit_exp_div").show();
                        $("#edit_exp_btn_edit").show();
                        $("#edit_exp_btn_add").hide();
                    });
                    
                    $("a[id=add_experience]").click(function(){
                        $("#edit_exp_entreprise").val("");
                        $("#edit_exp_titre").val("");
                        $("#edit_exp_debut").val("");
                        $("#edit_exp_fin").val("");
                        $("#edit_exp_desc").val("");
                        $("#edit_exp_encours").removeAttr("checked");
                        
                        $("#edit_exp_div").show();
                        $("#edit_exp_btn_edit").hide();
                        $("#edit_exp_btn_add").show();
                    });
                    
                    $("a[id^=edit_projet_]").click(function(){
                        var id_projet = this.id.split("_")[2];
                        
                        $.ajax({
                                type:'GET',
                                url: "<%= request.getContextPath() %>/AjaxGetProjet?id="+id_projet,
                                success: function(result){
                                    $("#edit_projet_nom").val(result.split(",")[1]);
                                    $("#edit_projet_date").val(result.split(",")[2]);
                                    $("#edit_projet_desc").val(result.split(",")[3]);
                                    $("#edit_projet_fonction").val(result.split(",")[4]);
                                    $("#edit_projet_lieu").val(result.split(",")[5]);
                                }
                            });
                        
                        $("#edit_projet_div").show();
                        $("#edit_projet_btn_edit").show();
                        $("#edit_projet_btn_add").hide();
                    });
                    
                    $("a[id=add_projet]").click(function(){
                        $("#edit_projet_nom").val("");
                        $("#edit_projet_date").val("");
                        $("#edit_projet_desc").val("");
                        $("#edit_projet_fonction").val("");
                        $("#edit_projet_lieu").val("");
                        
                        $("#edit_projet_div").show();
                        $("#edit_projet_btn_edit").hide();
                        $("#edit_projet_btn_add").show();
                    });
                    
                    $("a[id=add_competence]").click(function(){
                        $("#edit_competence_div").show();
                    });
                    
                    $("a[id=add_langue]").click(function(){
                        $("#edit_langue_div").show();
                    });
 });            
            </script>
</body>
</html>
