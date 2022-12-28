<%-- 
    Document   : user
    Created on : 26-dic-2022, 18:11:04
    Author     : melinameszaros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/views/partials/header.jsp" %>

<main class="d-flex flex-column justify-content-center align-items-center">
            <h2 class="mb-3">Informacion de ingreso:</h2>
            
            <%
            boolean isLogin = (boolean) session.getAttribute("isLogin");
            if (isLogin) {
            %>
                <h3 class="text-success">Acceso permitido</h3>
                <h3>¡Bienvenido!</h3>
            <%
            }
            else {
            %>
                <h3 class="text-danger">Acceso denegado</h3>
                
            <%
            } 
            %>
            
            <a href="/Yoga" class="mt-3 link-secondary">Volver al INICIO</a>
                
        </main>

            
<%@include file="/views/partials/footer.jsp" %>