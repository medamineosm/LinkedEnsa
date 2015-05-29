<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ENSAK CV</title>
    <link rel="stylesheet" type="text/css" href="dist/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script src="js/modernizr.custom.js"></script>
</head>

<body>
    
    <div class="container-login">
      <div id="splitlayout" class="splitlayout">
        <div class="intro">
          <div class="side side-left">
            <div class="intro-content">
              <div class="profile"><img src="images/flat/entreprise-login.png" alt="profile1"></div>
              <h1><span>SE CONNECTER</span><span>ENTREPRISES</span></h1>
            </div>
            <div class="overlay"></div>
          </div>
          <div class="side side-right">
            <div class="intro-content">
              <div class="profile"><img src="images/flat/etudiants-login.png" alt="profile2"></div>
              <h1><span>SE CONNECTER</span><span>ETUDIANTS</span></h1>
            </div>
            <div class="overlay"></div>
          </div>
        </div><!-- /intro -->
        <div class="page page-right">
          <div class="page-inner">
            <section>
              <div class="col-lg-3"></div>
              <div class="col-lg-6">
                <h2>Se Connecter</h2>
                <form class="form-horizontal">
                  <fieldset>
                    <div class="form-group">
                      <div class="input-group">
                        <input class="form-control" name="username" id="username" type="text" value="" tabindex="1" placeholder="Username">
                        <span class="input-group-addon">
                          <span class="glyphicon glyphicon-user"></span>
                        </span>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group">
                        <input class="form-control" name="password" id="password" type="password" value="" tabindex="1" placeholder="Password">
                        <span class="input-group-addon">
                          <span class="glyphicon glyphicon-user"></span>
                        </span>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-lg-offset-6">
                        <button type="submit" class="btn btn-valide">Se connecter</button>
                      </div>
                    </div>
                  </fieldset>
                </form>
              </div>
            </section>
          </div><!-- /page-inner -->
        </div><!-- /page-right -->

        <div class="page page-left">
          <div class="page-inner">
            <section>
              <div class="col-lg-3"></div>
              <div class="col-lg-6">
                <h2>Se Connecter</h2>
                <form class="form-horizontal" action="/AuthentificationServlet" method="post">
                  <fieldset>
                    <div class="form-group">
                      <div class="input-group">
                        <input class="form-control" name="username" id="username" type="text" value="" tabindex="1" placeholder="Username">
                        <span class="input-group-addon">
                          <span class="glyphicon glyphicon-user"></span>
                        </span>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group">
                        <input class="form-control" name="password" id="password" type="password" value="" tabindex="1" placeholder="Password">
                        <span class="input-group-addon">
                          <span class="glyphicon glyphicon-user"></span>
                        </span>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-lg-offset-6">
                        <button type="submit" class="btn btn-valide">Se connecter</button>
                      </div>
                    </div>
                  </fieldset>
                </form>
              </div>
            </section>
          </div><!-- /page-inner -->
        </div><!-- /page-left -->

        <a href="#" class="back back-right" title="back to intro">&rarr;</a>
        <a href="#" class="back back-left" title="back to intro">&larr;</a>
      </div><!-- /splitlayout -->
    </div><!-- /container -->
    
    <script src="js/classie.js"></script>
    <script src="js/cbpSplitLayout.js"></script>
</body>
</html>
