<%-- 
    Document   : Login
    Created on : 12/05/2015, 12:37:12 PM
    Author     : ulises
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log-In Expediente Médico Electrónico</title>
        
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.png">
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
    rel="stylesheet">
  
    <link href="css/screen-23cb0929f2.css" rel="stylesheet">
    </head>
    
    <body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="./index.html">Expediente Electr&oacute;nico</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li>
              <a href="./Login.jsp">Log-In</a>
            </li>
            
          </ul>
        </div>
        <!--/.nav-collapse -->
      </div>
    </div> 
        
    <div class="container">
      <div class="starter-template">
          <form method="POST" action="./Login">
        <h1>
          Ingreso a la administración de Catálogos
        </h1>
        <p class="lead">
          Ingrese su nombre de usuario y contraseña
        </p>
        <div class="form-group">
          <label>
            Nombre de Usuario
          </label>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="usuario" name="username">
          </div>
          <label>
              Contrase&ntilde;a
          </label>
          <input type="password" class="form-control" placeholder="contrase&ntilde;a" name="password">
        </div>
        <button type="submit" class="btn btn-primary">
            Ingresar
        </button>
          </form>
      </div>
    </div>
    <!-- /.container -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"
    >
    </script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"
    >
    </script>
  </body>
</html>
