<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ENSAK CV</title>
    <link rel="stylesheet" type="text/css" href="dist/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script src="js/modernizr.custom.js"></script>
</head>

<body class="login-body">

<!-- formulaire login -->
<div id="login" class="login-form">
    <div class="login-content">

        <div class="container">
            <div class="col-lg-12 logo-banner">
                <h1>CV ENSAK</h1>
            </div>
        </div>
        
            <div class="login form-content">
            
                <div class="col-lg-12">
                    <h2>LOGIN FOR PROF</h2>
                    <form class="bs-example form-horizontal" method="POST" action="AuthentificationServlet">
                      <fieldset>

                        <div class="form-group">
                          <div class="col-lg-12">
                            <input class="form-control" name="login" placeholder="Username" type="text">
                          </div>
                        </div>

                        <div class="form-group">
                          <div class="col-lg-12">
                            <input class="form-control" name="password" placeholder="Password" type="password">
                          </div>
                        </div>

                        <button id="button" type="submit" data-loading-text="..." class="btn btn-submit">LOGIN</button>
                      </fieldset>
                    </form>

                </div>
            </div>
        
        

    </div>

    <footer>
        <div class="container">
            <div class="col-lg-6">
                <p>Copyright © 2014 CV ENSAK, All Rights Reserved.</p>
            </div>
        </div>
    </footer>
</div>
<!--END formulaire login -->
    
</body>
</html>
