<%-- 
    Document   : pagregistro
    Created on : 17-dic-2022, 19:38:41
    Author     : melinameszaros
--%>

<%@include file="/views/partials/header.jsp" %>

<%
  if ((boolean)session.getAttribute("isLogin")){
    response.sendRedirect("/");
  }  
%>


  
<main>
    <div class="marco2">   
        <h3>Registro</h3>
            <form method="POST" action="/Yoga/usuario/createUser" class="rounded">
          
            
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span class="material-symbols-outlined">person</span>
                </span>
                <input type="text" id="username" name="username" class="form-control" placeholder="Usuario" aria-label="Username"aria-describedby="addon-wrapping">
            </div>
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span
                        class="material-symbols-outlined">lock</span></span>
                <input type="password" id="password" name="password" class="form-control" placeholder="Contraseña" aria-label="Username"
                    aria-describedby="addon-wrapping">
            </div>
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span class="material-symbols-outlined">person</span>
                </span>
                <input type="text" id="name" name="name" class="form-control" placeholder="Nombre" aria-label="Nombre"
                    aria-describedby="addon-wrapping">
            </div>
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span class="material-symbols-outlined">person</span>
                </span>
                <input type="Apellido" id="last_name" name="last_name" class="form-control" placeholder="Apellido" aria-label="Apellido"
                    aria-describedby="addon-wrapping">
            </div>
            <div class="input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><span
                        class="material-symbols-outlined">alternate_email</span>
                </span>
                <input type="email" id="email" name="email" class="form-control" placeholder="Mail" aria-label="Email"
                    aria-describedby="addon-wrapping">
            </div>
            <div class="col-auto botoning">
                <button type="submit" class="btn btn-secondary" style="width: 10rem;">Registrar</button>
            </div>
            <div class="col-auto botoning">
                <a href="/Yoga" class="link-secondary">Inicio</a>
            </div>
     
            </form>
    </div>
       
</main>


<%@include file="/views/partials/footer.jsp" %>
