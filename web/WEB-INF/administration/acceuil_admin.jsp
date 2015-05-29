<%@include file="HEADERADMIN.jsp"%>          
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
  
    <!-- Custom JavaScript for the Menu Toggle -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
    });
    </script>
    <%@include file="FOOTERADMIN.jsp" %>