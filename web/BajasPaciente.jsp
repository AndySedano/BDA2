<%-- 
    Document   : BajasPaciente
    Created on : 13/05/2015, 01:21:47 PM
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
                    Baja de Pacientes
                </h1>
                <p class="lead">
                    Ingrese el n&uacute;mero de seguro del páciente
                </p>

                <div class="form-group">  
                    <form method="GET" action="${pageContext.request.contextPath}/BajaPaciente">
                        <div class="form-group">
                            <label>
                                N&uacute;mero de seguro:
                            </label>
                            <div class="form-group">
                                <input type="text" class="form-control" name="numSeguro">
                            </div>
                            <button type="submit" class="btn btn-primary">
                                Buscar
                            </button>
                        </div>
                    </form>

                    <form method="POST" action="${pageContext.request.contextPath}/BajaPaciente">
                        <!-- Los resultados de la BD-->
                        <table>
                            <tr>
                                <th>Seleccionar</th>
                                <th>Nombre</th>
                                <th>Apellido Paterno</th>
                                <th>Apellido Materno</th>
                                <th>Sexo</th>
                                <th>Fecha de Nacimiento</th>
                            </tr>

<!-- Esto no se que tan mal esta :( -->
                            <c:forEach items="${uli}" var="uli">
                                <tr>
                                    <td><input type="checkbox" name="ok" value="yes"></td>
                                    <td>
                                        <!-- Nombre de Pila -->
                                        ${uli}
                                    </td>
                                    <td>
                                        <!-- Apellido Paterno -->
                                        ${uli}
                                    </td>
                                    <td>
                                        <!-- Apellido Materno -->
                                        ${uli}
                                    </td>
                                    <td>
                                        <!-- Snu Snu -->
                                        ${uli}
                                    </td>
                                    <td>
                                        <!-- Fecha de Nacimiento -->
                                        ${uli}
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>


                        <button type="submit" class="btn btn-primary">
                            Eliminar del Sistema
                        </button>
                    </form>
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
