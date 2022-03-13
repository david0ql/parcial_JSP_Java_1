<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Imports -->
<%@page session="true"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" session="true"%>
<%@ page import="java.math.BigInteger"%>
<%@ page import="java.security.MessageDigest"%>
<%@ include file="conexion/conexion.jsp" %>
<%
//Inicializo una sesión

HttpSession sesion = request.getSession();

//Declaración de variables

String query = "";

if (sesion.getAttribute("id_usuario") == null || sesion.getAttribute("id_usuario").equals("0")) {
    response.sendRedirect("index.jsp");
}

%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />        
        <title>Dashboard</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/stylesDashboard.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="#!">Dashboard</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">                
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">                        
                        <li><a class="dropdown-item" data-bs-toggle=modal data-bs-target=#change_data>Editar Datos</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="validaciones/logout.jsp">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Panel administrativo</div>
                            <a class="nav-link" href="index.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>                            
                            <div class="sb-sidenav-menu-heading">Tablas</div>                            
                            <a class="nav-link" href="tables.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Crear citas
                            </a>
                        </div>
                    </div>                    
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Administrador</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Bienvenido a tu gestionador de tablas, <% out.println(sesion.getAttribute("nombre")); %>.</li>
                        </ol>
                        <%
                        if (sesion.getAttribute("id_permiso").equals("1")) {
                        %>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Tabla usuarios
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Usuario</th>
                                            <th>Nombre</th>
                                            <th>Estado civil</th>
                                            <th>Dirección</th>
                                            <th>Correo</th>
                                            <th>Permisos</th>
                                            <th>Afiliación</th>
                                            <th>IPS</th>
                                            <th>Grupo ingresos</th>
                                            <th>Estado afiliación</th>
                                            <th>Fecha creación</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<%
                                        query = "select *, afiliaciones.nombre as 'afiliar', grupos_ingresos.nombre as 'grupito', permisos.nombre as 'rol', ips.nombre as 'ips_name' from usuarios inner join afiliaciones ON afiliaciones.id_afiliacion = usuarios.id_afiliacion inner join grupos_ingresos ON grupos_ingresos.id_grupo_ingreso = usuarios.id_grupo_ingreso inner join permisos ON permisos.id_permiso = usuarios.id_permiso inner join ips ON ips.id_ips = usuarios.id_ips WHERE id_usuario != 1";
                                        sentencia = conexion.prepareStatement(query);
                                        rs = sentencia.executeQuery();
                                    	while(rs.next()){
                                    	%>
                                        <tr>
                                            <td><%=rs.getString("usuario")%></td>
                                            <td><%=rs.getString("nombre")%></td>
                                            <td><%=rs.getString("estado_civil")%></td>
                                            <td><%=rs.getString("direccion")%></td>
                                            <td><%=rs.getString("correo")%></td>
                                            <td><%=rs.getString("rol")%></td>
                                            <td><%=rs.getString("afiliar")%></td>
                                            <td><%=rs.getString("ips_name")%></td>
                                            <td><%=rs.getString("grupito")%></td>
                                            <td><%=rs.getString("estado_afiliacion")%></td>
                                            <td><%=rs.getString("fecha_creacion")%></td>
                                            <td><a href="validaciones/eliminar_usuarios.jsp?id=<%=rs.getString("id_usuario")%>"><button type="button" class="btn btn-danger">Eliminar</button></a></td>
                                        </tr>  
                                        <%
                                    	}
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <%
                   		}
                        %>
                    </div>
                </main>
                      <!--modal register cliente-->
      <div class="modal fade" id="change_data" tabindex=-1 aria-labelledby=feedbackModalLabel aria-hidden=true>
         <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
               <div class="modal-header bg-gradient-primary-to-secondary p-4">
                  <h5 class="modal-title font-alt text-black" id="feedbackModalLabel">Cambiar datos - Deberá volver a iniciar sesión</h5>
                  <button class="btn-close btn-close-white" type="button" data-bs-dismiss="modal" aria-label=Close></button>
               </div>
               <div class="modal-body border-0 p-4">
                  <form id=contactForm action="validaciones/validar_cambiar_datos.jsp" method="POST">
                    <input type="hidden" name="id_usuario" value="<% out.print(sesion.getAttribute("id_usuario")); %>">
                     <div class="form-floating mb-3">
                        <input class="form-control" name="usuario" placeholder="Enter your name..." required value="<% out.println(sesion.getAttribute("usuario")); %>">
                        <label for="usuario">Usuario</label>
                     </div>
                     <div class="form-floating mb-3">
                        <input class="form-control" name="nombre" type="text" placeholder="Ingresa tu Nombre" required value="<% out.println(sesion.getAttribute("nombre")); %>">
                        <label for="nombre">Nombre</label>
                     </div>
                     <div class="form-floating mb-3">
                        <select class="custom-select" name="estado_civil" required>
                           <option value="Soltero">Soltero</option>
                           <option value="Casado">Casado</option>
                           <option value="Union">Union Libre</option>                                          
                        </select>
                     </div>                                          
                     <div class="form-floating mb-3">
                        <input class="form-control" name="direccion" type="text" placeholder="Ingrese su Direccion" required value="<% out.println(sesion.getAttribute("direccion")); %>">
                        <label for="Direccion">Ingrese su Direccion</label>
                     </div>
                     <div class="form-floating mb-3">
                        <input class="form-control" name="email" type="email" placeholder="Ingrese su email" required value="<% out.println(sesion.getAttribute("correo")); %>">
                        <label for="email">Ingrese su email</label>
                     </div>
                     <div class="form-floating mb-3">
                        Afiliacion
                        <select class="custom-select" name="id_afiliciacion" required>
                           <%
                           //Select afiliación
                            query = "select * from afiliaciones";
                            sentencia = conexion.prepareStatement(query);
                            rs = sentencia.executeQuery();
                            while(rs.next()){
                           %>
                           <option value="<%=rs.getString("id_afiliacion")%>"><%=rs.getString("nombre")%></option>
                           <%
                            }
                           %>                                      
                        </select>
                     </div> 
                     <div class="form-floating mb-3">
                        IPS
                        <select class="custom-select" name="id_ips" required>
                           <%
                            //Select ips
                            query = "SELECT * FROM ips";
                            sentencia = conexion.prepareStatement(query);
                            rs = sentencia.executeQuery();
                            while(rs.next()){
                           %>
                           <option value="<%=rs.getString("id_ips")%>"><%=rs.getString("nombre")%></option>
                           <%
                            }
                           %>                                        
                        </select>
                     </div> 
                     <div class="form-floating mb-3">
                        Grupo Ingreso
                        <select class="custom-select" name="id_grupo_ingreso" required>
                           <%
                            //Select grupos_ingresos
                            query = "SELECT * FROM grupos_ingresos";
                            sentencia = conexion.prepareStatement(query);
                            rs = sentencia.executeQuery();
                            while(rs.next()){
                           %>
                           <option value="<%=rs.getString("id_grupo_ingreso")%>"><%=rs.getString("nombre")%></option>
                           <%
                            }
                           %>                                            
                        </select>
                     </div>
                    <div class="d-grid">
                        <button class="mx-3 btn btn-primary rounded-pill btn-lg" id=submitButton type=submit>Registrate
                    </button>
                    </div>
                  </form>
               </div>                
               <br>
            </div>
         </div>
      </div>
                <footer c   ass="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Parcial 2022</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>