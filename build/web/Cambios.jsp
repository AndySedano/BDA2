<%-- 
    Document   : Cambios
    Created on : 12/05/2015, 01:51:40 PM
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
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
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
                    Baja de Personal M&eacute;dico
                </h1>
                <p class="lead">
                    Ingrese el n&uacute;mero de c&eacute;dula del m&eacute;dico:
                </p>

                <div class="form-group">   

                    <form method="GET" action="${pageContext.request.contextPath}/BajaMedico">
                        <div class="form-group">
                            <label>
                                N&uacute;mero de C&eacute;dula:
                            </label>
                            <div class="form-group">
                                <input type="text" class="form-control" name="numcedula">
                            </div>

                            <button type="submit" class="btn btn-primary">
                                Buscar
                            </button>
                        </div>

                    </form>

                    </div>
                    <br /><br />

                    <div class="form-group">
                        <div class="form-group">

                            <form method="POST" action="${pageContext.request.contextPath}/CambiosMedicos">

                                <label>Nombre de Pila</label>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="nombrePila">
                                </div>
                                <label>Apellido Paterno</label>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="apellidoPaterno">
                                </div>
                                <label>Apellido Materno</label>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="apellidoMaterno">
                                </div>
                                <label>Tel&eacute;fono</label>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="telefonoso">
                                </div>
                                <label>Fecha de Nacimiento</label>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="fechaNacimiento">
                                </div>
                                <label>Direcci&oacute;n</label>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="direccion">
                                </div>
                                <label>Perfil</label>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="perfil">
                                </div>
                                <label>Especialidad</label>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="especialidad">
                                </div>

                            </form>

                        </div>

                        <button type="submit" class="btn btn-primary">
                            Modificar M&eacute;dico
                        </button>
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
