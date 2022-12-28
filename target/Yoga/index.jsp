<%-- 
    Document   : index
    Created on : 17-dic-2022, 19:16:22
    Author     : melinameszaros
--%>

<%@include file="/views/partials/header.jsp" %>

 <%
                boolean isLogin;
                if(session.isNew()){
                    session.setAttribute("isLogin", false); 
                }
                isLogin = (boolean) session.getAttribute("isLogin");
            %>

<nav class="navbar">
      <div class="container-fluid justify-content-lg-between">
        <nav class="navbar navbar-expand-lg">
          <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#nosotros">Nosotros</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#clases">Clases</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#profesoras">Profesores</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#precios">Precios</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#contacto">Contacto</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
          
        <div>
          <i class="bi bi-person-circle usuario"></i>
          <button class="btn botingresar" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight" style="display: <%= isLogin?"none":"initial" %>"> Iniciar sesión</button> 
          <a class="btn botingresar" href="/Yoga/usuario/viewUser" type="button" style="display: <%= !isLogin?"none":"initial" %>"> Mi Cuenta</a> 
          <a class="btn botingresar" href="/Yoga/usuario/logoutUser" type="button" style="display: <%= !isLogin?"none":"initial" %>"> Salir</a> 
           
          <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
            <div class="offcanvas-header justify-content-end">
              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>                      
            <div class="offcanvas-body">
              <h4>Bienvenido</h4>
              <form method="POST" action="/Yoga/usuario/loginUser">
              <div class="marco">
                <i class="material-symbols-outlined">face</i>
                <div class="input-group flex-nowrap">
                  <span class="input-group-text" id="addon-wrapping"><span class="material-symbols-outlined">person</span>
                  </span>
                  <input type="text" name="username" id="username" class="form-control" placeholder="Usuario" aria-label="Username" aria-describedby="addon-wrapping">
                </div>
                <div class="input-group flex-nowrap">
                  <span class="input-group-text" id="addon-wrapping2"><span class="material-symbols-outlined">lock</span></span>
                  <input type="password" name="password" id="password" class="form-control" placeholder="Contraseña" aria-label="Username" aria-describedby="addon-wrapping2">
                </div>
                <div class="form-check" id="recordarme">
                  <input class="form-check-input" type="checkbox" id="autoSizingCheck">
                  <label class="form-check-label" for="autoSizingCheck">Recordarme</label>
                </div>
              </div>
              <div class="col-auto botoning">
                <button type="submit" class="btn btn-secondary" style="width: 10rem;">Ingresar</button>
              </div>
              <div class="col-auto botoning">
                <a href="/Yoga/views/pagregistro.jsp" class="link-secondary">Registrarme</a>
              </div>
            </form>
            </div>
          </div>
        </div> 
      </div>
    </nav>
    <div>
      <img src="img/yoga1.jpg" loading="lazy" decoding="async" alt="FotoYoga" class="foto1">
    </div>
    <main id="nosotros">
      <span class="material-symbols-outlined">keyboard_arrow_down</span>
      <h5 class="textogris">Sobre Nosotros</h5>
      <span class="material-symbols-outlined">horizontal_rule</span>
      <p class="textogris">Lorem ipsum dolor sit amet fghu kikdgs consectetur adipisicing elit. Obcaecati quaerat, incidunt sit, odit nesciunt quia magni non in beatae autem perspiciatis voluptas.
        Reiciendis odio beatae illo quasi perferendis! Lorem ipsum bhdyd kohyts dolor sit amet consectetur adipisicing elit. Blanditiis officia doloribus? Vero, accusantium deleniti. Sapiente, quam! Fuga numquam vitae ducimus dolore beatae consectetur quos aliquid, necessitatibus vero nemo.</p>
    </main>

    <h5 class="titulo" id="clases">Nuestras Clases</h5>
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/clase1.jpg" loading="lazy" decoding="async" class="d-block w-100 fotooscura" alt="Clase1">
          <div class="carousel-caption d-none d-md-block">
            <h5>Clase Grupal</h5>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque eaque cum vero dicta molestiae quasi. Sint aliquam.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/clase2.jpg" class="d-block w-100 fotooscura" loading="lazy" decoding="async" alt="Clase2">
          <div class="carousel-caption d-none d-md-block">
            <h5>Clase Individual</h5>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis, optio expedita incidunt voluptatibus dicta eos nesciunt enim culpa.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/clase3.jpeg" class="d-block w-100 fotooscura" loading="lazy" decoding="async" alt="Clase3">
          <div class="carousel-caption d-none d-md-block">
            <h5>Clase con Cintas</h5>
            <p>Lorem ipsum, dolor sitasperiores veniam saepe aliquam, voluptatem nisi non ut illo tempora qui perferendis!</p>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

    <h4 class="titulo" id="profesoras">Nuestras Profesoras</h4>
    <div class="row row-cols-1 row-cols-md-3 g-4 tarjetas">
      <div class="col">
        <div class="card">
          <img src="img/profe1.jpg" class="card-img-top" loading="lazy" decoding="async" alt="Maria">
          <div class="card-body">
            <h5 class="card-title">Maria Laura Lopez</h5>
            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia aut deserunt incidunt velit quo asperiores.</p>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card">
          <img src="img/profe2.jpg" class="card-img-top" loading="lazy" decoding="async" alt="Lucia">
          <div class="card-body">
            <h5 class="card-title">Lucia Miranda</h5>
            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia aut deserunt incidunt velit quo asperiores.</p>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card">
          <img src="img/profe3.jpg" class="card-img-top" loading="lazy" decoding="async" alt="Clara">
          <div class="card-body">
            <h5 class="card-title">Clara Martinez</h5>
            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia aut deserunt incidunt velit quo asperiores.</p>
          </div>
        </div>
      </div>
    </div>
  
    <h4 id="precios" class="titulo">Precios</h4>
    <div class="card-group">
      <div class="card mb-3" style="max-width: 18rem;">
        <div class="card-header bg-transparent">Clases Individuales</div>
        <div class="card-body">
          <p class="card-title">- Precio por Clase <br> $500</p>
          <p class="card-text">- 12 Clases x mes $10000</p>
        </div>
      
      </div>
      <div class="card mb-3" style="max-width: 18rem;">
        <div class="card-header bg-transparent">Clases Grupales</div>
        <div class="card-body">
          <p class="card-title">- 8 Clases al mes $4000</p>
          <p class="card-text">- 12 Clases x mes $6000</p>
        </div>
      </div>
      <div class="card mb-3" style="max-width: 18rem;">
        <div class="card-header bg-transparent">Clases con Cinta</div>
        <div class="card-body">
          <p class="card-title">- 8 Clases al mes $6000</p>
          <p class="card-text">- 12 Clases x mes $8000</p>
        </div>
      </div>
    </div>

    <div class="container contact">
      <h3 id="contacto">
        Contacto
      </h3>
      <div class="row justify-content-md-center">
        <div class="col">
          <iframe class="mapa" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2243.190665410154!2d-58.51369373218959!3d-34.59933574977815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb7cbb0fa766d%3A0xf4df583774d56070!2sPareja%203941%2C%20C1419%20Villa%20Devoto%2C%20Buenos%20Aires!5e0!3m2!1ses!2sar!4v1670943994583!5m2!1ses!2sar" width="500" height="300" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="col col-med-auto datos">
          <p><b>Dirección:</b> Pareja 3941, C1419 Villa Devoto, Buenos Aires</p>
          <p><b>Tel.:</b> +54911 55558989</p>
          <p><b>Mail:</b> yogaestudio@gmail.com</p>
          <div class="redes">
            <p><b>Seguinos:</b></p>
            <a href="https://www.facebook.com/"  target="_blank" style="font-size: x-large;"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/" target="_blank" style="font-size: x-large;"><i class="bi bi-instagram"></i></a>
            <a href="https://www.tiktok.com/es/" target="_blank" style="font-size: x-large;"><i class="bi bi-tiktok"></i></a>
          </div>
        </div>
      </div>
    </div>





<%@include file="/views/partials/footer.jsp" %>