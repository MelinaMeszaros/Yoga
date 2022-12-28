<%-- 
    Document   : cuenta
    Created on : 27-dic-2022, 12:27:38
    Author     : melinameszaros
--%>

<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/views/partials/header.jsp" %>




<%
    if (!(boolean)session.getAttribute("isLogin")){
        response.sendRedirect("/Yoga");
    }
    Usuario actualUser = (Usuario) session.getAttribute("actualUser");
    String username = actualUser.getUsername();
    String password = actualUser.getPassword();
    String name = actualUser.getName();
    String last_name = actualUser.getLast_name();
    String email = actualUser.getEmail();
%>


<main>
        <div class="marco2">
        
         <h3>Mi Cuenta</h3>
            
            <form method="POST" action="/Yoga/usuario/updateUser" class="rounded">
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span class="material-symbols-outlined">person</span>
                </span>
                <input type="text" class="form-control" id="username" name="username" placeholder="Usuario" aria-label="Username" aria-describedby="addon-wrapping" value="<%= username%>" disabled>
            </div>
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span
                        class="material-symbols-outlined">lock</span></span>
                <input type="password" class="form-control" id="password" name="password" placeholder="Contraseña" aria-label="Contraseña"
                    aria-describedby="addon-wrapping" value="<%= password%>">
            </div>
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span class="material-symbols-outlined">person</span>
                </span>
                <input type="text" class="form-control" id="name" name="name" placeholder="Nombre" aria-label="Nombre"
                    aria-describedby="addon-wrapping" value="<%= name%>">
            </div>
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span class="material-symbols-outlined">person</span>
                </span>
                <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Apellido" aria-label="Apellido"
                    aria-describedby="addon-wrapping" value="<%= last_name%>">
            </div>
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span
                        class="material-symbols-outlined">alternate_email</span>
                </span>
                <input type="email" class="form-control" id="email" name="email" placeholder="Mail" aria-label="Email"
                    aria-describedby="addon-wrapping" value="<%= email%>">
            </div>
            <div class="col-auto botoning">
                <button type="submit" class="btn btn-secondary" style="width: 10rem;">Modificar</button>
            </div>
            <div class="col-auto botoning">
                <a href="/Yoga/usuario/deleteUser" class="btn btn-secondary">Eliminar</a>
            </div>
            <div class="col-auto botoning">
                <a href="/Yoga" class="link-secondary">Inicio</a>
            </div>
        </form>
          </div>
        
    </main>


<%@include file="/views/partials/footer.jsp" %>