<%-- 
    Document   : Administracion
    Created on : 12/05/2015, 12:44:25 PM
    Author     : ulises
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administraci&oacute;n de Cat&aacute;logos</title>
        
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
                    <a class="navbar-brand" href="./Administracion.jsp">Administraci&oacute;n</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="./Altas.jsp">Altas M&eacute;dicos</a>
                        </li>
                        <li>
                            <a href="./Bajas.jsp">Bajas M&eacute;dicos</a>
                        </li>
                        <li>
                            <a href="./Cambios.jsp">Cambios M&eacute;dicos</a>
                        </li>
                        <li>
                            <a href="./AltasPaciente.jsp">Altas Paciente</a>
                        </li>
                        <li>
                            <a href="./BajasPaciente.jsp">Bajas Paciente</a>
                        </li>
                        <li>
                            <a href="./Cambiospaciente.jsp">Cambios Paciente</a>
                        </li>
                        <li>
                        </li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
        
    <div class="container">
      <div class="starter-template">
        <h1>
            Bienvenido a la administraci&oacute;n de los cat&aacute;logos del sistema
        </h1>
        <p class="lead">
            Seleccione lo que dese&eacute; hacer:
        </p>
        <div class="row">
          <div class="col-md-4">
            <h3>
                Alta de Personal M&eacute;dico
            </h3>
            <p>
                Ingrese los datos para dar de alta a otro personal m&eacute;dico
            </p>
            <button onclick="location.href = 'Altas.jsp';" type="submit" class="btn btn-primary">
              Altas
            </button>
          </div>
          <div class="col-md-4">
            <h3>
                Baja de Personal M&eacute;dico
            </h3>
            <p>
              Seleccione a un m&eacute;dico para eliminarlo del sistema
            </p>
            <button onclick="location.href = './Bajas.jsp';" type="submit" class="btn btn-primary">
              Bajas
            </button>
          </div>
          <div class="col-md-4">
            <h3>
              Cambios al personal M&eacute;dico
            </h3>
            <p>
                Cambiar los datos del un miembro del personal m&eacute;dico
            </p>
            <button onclick="location.href = './Cambios.jsp';" type="submit" class="btn btn-primary">
              Cambios
            </button>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-4">
            <h3>
                Alta de Pacientes
            </h3>
            <p>
                Ingrese los datos para dar de alta a otro paciente
            </p>
            <button onclick="location.href = 'AltasPaciente.jsp';" type="submit" class="btn btn-primary">
              Altas
            </button>
          </div>
          <div class="col-md-4">
            <h3>
                Baja de Pacientes
            </h3>
            <p>
              Seleccione a un paciente para eliminarlo del sistema
            </p>
            <button onclick="location.href = 'BajasPaciente.jsp';" type="submit" class="btn btn-primary">
              Bajas
            </button>
          </div>
          <div class="col-md-4">
            <h3>
              Cambios al un Paciente
            </h3>
            <p>
                Cambiar los datos del un paciente
            </p>
            <button onclick="location.href = 'Cambiospaciente.jsp';" type="submit" class="btn btn-primary">
              Cambios
            </button>
          </div>
        </div>
        
        <div class="form-group">
          <div class="form-group">
          </div>
        </div>
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
