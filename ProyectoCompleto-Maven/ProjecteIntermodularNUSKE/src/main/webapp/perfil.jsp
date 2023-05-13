<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="dto.Cliente"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="dto.Responsable"%>
<%@page import="dto.Socio"%>
<%@page import="dto.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Usuario usuarioSesion = (session != null && session.getAttribute("usuario") != null) ? (Usuario) session.getAttribute("usuario") : null;

    usuarioSesion = (usuarioSesion != null) ? UsuarioDAO.tipoUsuario(usuarioSesion.getCodigo()) : null;
%>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/perfil/styles.css">
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
            />
        <title>Nuskë - Login</title>
    </head>
    <body>
        <header>
            <section class="header-wrapper">
                <section class="titulo">
                    <a href="./index.jsp">
                        <h3>NUSKË</h3>
                    </a>
                </section>
                <section class="navegacion">
                    <ul>
                        <li class="perro">
                            <a href="#">Perros</a>
                            <ul class="subcategoria">
                                <li><a href="#">Hogar</a></li>
                                <li><a href="#">Entretenimiento</a></li>
                                <li><a href="#">Alimentación</a></li>
                                <li><a href="#">Salud e higiene</a></li>
                            </ul>
                        </li>
                        <li class="gato">
                            <a href="#">Gatos</a>
                            <ul class="subcategoria">
                                <li><a href="#">Hogar</a></li>
                                <li><a href="#">Entretenimiento</a></li>
                                <li><a href="#">Alimentación</a></li>
                                <li><a href="#">Salud e higiene</a></li>
                            </ul>
                        </li>
                        <li class="exotico">
                            <a href="#">Exóticos</a>
                            <ul class="subcategoria">
                                <li><a href="#">Hogar</a></li>
                                <li><a href="#">Entretenimiento</a></li>
                                <li><a href="#">Alimentación</a></li>
                                <li><a href="#">Salud e higiene</a></li>
                            </ul>
                        </li>
                        <li class="buscador"><i class="bi bi-search"></i><input type="text" placeholder="Buscar..."/></li>
                                  <li class="inicio-sesion">
              <%
                  if(usuarioSesion!=null){
                  out.println("<a href=\"./perfil.jsp\"><i class=\"bi bi-person-fill\"></i>"+usuarioSesion.getNombre()+"</a>");
                  }
                  else{
                  out.println("<a href=\"./login.jsp\"><i class=\"bi bi-person-fill\"></i></a>");
                  }
              %>
            
          </li>
                        <li class="cesta">
                            <a href="carrito.jsp"><i class="bi bi-cart-fill"></i></a>
                        </li>
                    </ul>
                </section>
            </section>
        </header>

        <main>
            <%
                if (usuarioSesion != null) {
            %>

            <section class="der-foto">
                <figure>
                    <img src="./img/<%= usuarioSesion.getFoto() %>" alt="Nombre de usuario">
                </figure>
                <p><a href="#">Editar perfil</a></p>
                <%
                   if(usuarioSesion instanceof Responsable){
                %>
                <p><a href="registro-mascota.jsp">Registrar mascota</a></p>
                <%
                    }
                %>
            </section>
            <section class="centro-inf">
                <p>
                    <span>Nombre</span>
                    <span><%= usuarioSesion.getNombre()%></span>
                </p>
                <p>
                    <span>Apellidos</span>
                    <span><%= usuarioSesion.getApellidos()%></span>
                </p>
                <p>
                    <span>Email</span>
                    <span><%= usuarioSesion.getEmail()%></span>
                </p>
                <p>
                    <span>Contraseña</span>
                    <span>**********</span>
                </p>
                <p>
                    <span>Fecha de nacimiento</span>
                    <span><%= usuarioSesion.getFechaNacimiento().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) %></span>
                </p>
                <p>
                    <span>Teléfono</span>
                    <span><%= usuarioSesion.getTelefono() %></span>
                </p>
                <%
                    if (usuarioSesion instanceof Responsable) {
                %>
                <p>
                    <span>DNI</span>
                    <span><%= ((Responsable) usuarioSesion).getDNI()%></span>
                </p>
                <%
                } else if (usuarioSesion instanceof Cliente) {
                %>
                <p>
                    <span>DNI</span>
                    <span><%= ((Cliente) usuarioSesion).getDNI()%></span>
                </p>
                <%
                    }


                    if(usuarioSesion instanceof Socio){
                %>
                <p>
                    <span>Correo de empresa</span>
                    <span><%= ((Socio)usuarioSesion).getCorreoEmpresa() %></span>
                </p>
                <p>
                    <span>Nombre de empresa</span>
                    <span><%= ((Socio)usuarioSesion).getNombreEntidad() %></span>
                </p>
                <p>
                    <span>Teléfono de empresa</span>
                    <span><%= ((Socio)usuarioSesion).getTelefonoEntidad() %></span> 
                </p>
                
                <%
                    }
                %>
            </section>
            <section class="izq-botones">
                <a href="./listas.jsp">Listas</a>
                <a href="./pedidos.jsp">Pedidos</a>
                <a href="./facturas.jsp">Facturas</a>
                <%
                   if(usuarioSesion instanceof Responsable){
                %>
                <a href="#">Mascotas</a>
                
                <%
                    }
                %>
                <a href="LogOut" id="logOut">Cerrar sesión</a>
            </section>
            <%
            } else {
            %>
            <section class="s-sinLogin" style="height:60vh;display:flex;align-items:center;">
                <p class="p-sinLogin">Sabía que ibas a intentar esto, José Ramón</p>
            </section>

            <%
                }
            %>
        </main>
        <footer>
            <ul>
                <li><a href="#">Contacta con nosotros</a></li>
                <li><a href="#">Sobre nosotros</a></li>
                <li><a href="#">Preguntas frecuentes</a></li>
            </ul>
            <ul>
                <li><a href="#">Aviso legal</a></li>
                <li><a href="#">Preguntas frecuentes</a></li>
                <li><a href="#">Política de privacidad</a></li>
            </ul>
            <ul>
                <li><a href="#">Condiciones generales</a></li>
                <li><a href="#">Términos y condiciones</a></li>
                <li><a href="#">Otros</a></li>
            </ul>
        </footer>
    </body>
</html>