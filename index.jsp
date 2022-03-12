<!DOCTYPE html>
<html lang=es>
   <head>
      <meta charset="utf-8">
      <meta name=viewport content="width=device-width,initial-scale=1,shrink-to-fit=no">
      <title>Eps Curitas</title>
      <link rel=icon type=image/x-icon href="img/EPS.ico">
      <link href=https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css rel="stylesheet">
      <link rel=preconnect href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet">
      <link href=css/styles.css rel="stylesheet">
   </head>
   <body id=page-top>
      <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id=mainNav>
         <div class="container px-5">
            <a class="navbar-brand fw-bold" href=#page-top>EPS Curitas</a> <button class=navbar-toggler type=button data-bs-toggle=collapse data-bs-target=#navbarResponsive aria-controls=navbarResponsive aria-expanded=false aria-label="Toggle navigation">Menu <i class=bi-list></i></button>
            <div class="collapse navbar-collapse" id=navbarResponsive>
               <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                  <li class=nav-item><a class="nav-link me-lg-3" href=#features>Sobre Nosotros</a></li>
               </ul>
               <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle=modal data-bs-target=#Login><span class="d-flex align-items-center"><span class=small>Inicia Sesion</span></span></button> <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle=modal data-bs-target=#Register><span class="d-flex align-items-center"><span class=small>Registrate</span></span></button>
            </div>
         </div>
      </nav>
      <header class=masthead>
         <div class="container px-5">
            <div class="row gx-5 align-items-center">
               <div class=col-lg-6>
                  <div class="mb-5 mb-lg-0 text-center text-lg-start">
                     <h1 class="display-1 lh-1 mb-3">Consigue una cita rapido y eficazmente.</h1>
                     <p class="lead fw-normal text-muted mb-5">Aprende mas en sobre nosotros de lo que necesitas para tener una cita correcta</p>
                     <div class="d-flex flex-column flex-lg-row align-items-center"><a class="me-lg-3 mb-4 mb-lg-0" href=#!><img class=app-badge src=assets/img/google-play-badge.svg alt="..."></a> <a href=#!><img class=app-badge src=assets/img/app-store-badge.svg alt="..."></a></div>
                  </div>
               </div>
               <div class=col-lg-6>
                  <div class=masthead-device-mockup>
                     <svg class=circle viewbox="0 0 100 100" xmlns=http://www.w3.org/2000/svg>
                        <defs>
                           <lineargradient id=circleGradient gradienttransform=rotate(45)>
                              <stop class=gradient-start-color offset=0%></stop>
                              <stop class=gradient-end-color offset=100%></stop>
                           </lineargradient>
                        </defs>
                        <circle cx=50 cy=50 r=50></circle>
                     </svg>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <aside class="text-center bg-gradient-primary-to-secondary">
         <div class="container px-5">
            <div class="row gx-5 justify-content-center">
               <div class=col-xl-8>
                  <div class="h2 fs-1 text-white mb-4">"Una solucion intuitiva para aquellos que prefieren manejar todo en linea"</div>
               </div>
            </div>
         </div>
      </aside>
      <section class=bg-light>
         <div class="container px-5">
            <div class="row gx-5 align-items-center justify-content-center justify-content-lg-between">
               <div class="col-12 col-lg-5">
                  <h2 class="display-4 lh-1 mb-4">Bienvenidos a la nueva era de la medicina</h2>
                  <p class="lead fw-normal text-muted mb-5 mb-lg-0">Esta sección es perfecta para todos aquellos que les gusta las ultimas caracteristicas, este sistema resuelve el problema de tener que hacer largas filas y ademas de eso, largos tiempos de espero para una respuesta.</p>
               </div>
               <div class="col-sm-8 col-md-6">
                  <div class="px-5 px-sm-0"><img class="img-fluid rounded-circle" src=https://source.unsplash.com/u8Jn2rzYIps/900x900 alt="..."></div>
               </div>
            </div>
         </div>
      </section>
      <section class=bg-gradient-primary-to-secondary id=download>
         <div class="container px-5">
            <h2 class="text-center text-white font-alt mb-4">Descarga la app ahora!</h2>
            <div class="d-flex flex-column flex-lg-row align-items-center justify-content-center"><a class="me-lg-3 mb-4 mb-lg-0" href=#!><img class=app-badge src=assets/img/google-play-badge.svg alt="..."></a> <a href=#!><img class=app-badge src=assets/img/app-store-badge.svg alt="..."></a></div>
         </div>
      </section>
      <footer class="bg-black text-center py-5">
         <div class="container px-5">
            <div class="text-white-50 small">
               <div class=mb-2>&copy; EPS Curitas 2022. All Rights Reserved.</div>
               <a href=#!>Privacy</a> <span class=mx-1>&middot;</span> <a href=#!>Terms</a> <span class=mx-1>&middot;</span> <a href=#!>FAQ</a>
            </div>
         </div>
      </footer>
      <div class="modal fade" id=Login tabindex=-1 aria-labelledby=feedbackModalLabel aria-hidden=true>
         <div class="modal-dialog modal-dialog-centered">
            <div class=modal-content>
               <div class="modal-header bg-gradient-primary-to-secondary p-4">
                  <h5 class="modal-title font-alt text-white" id=feedbackModalLabel>Inicia Sesion</h5>
                  <button class="btn-close btn-close-white" type=button data-bs-dismiss=modal aria-label=Close></button>
               </div>
               <div class="modal-body border-0 p-4">
                  <form action="validaciones/validar_login.jsp" method="POST">
                     <div class="form-floating mb-3">
                        <input class=form-control placeholder="Enter your name..." required name="usuario">
                        <label for=name>Usuario</label>
                    </div>
                     <div class="form-floating mb-3">
                        <input class="form-control" type="password" placeholder="Enter your password" required name="clave">
                        <label for=password>Clave</label>
                    </div>
                  </form>
               </div>
               <div class=d-grid>
                <button class="mx-3 btn btn-primary rounded-pill btn-lg" type="submit">Iniciar Sesion</button>
            </div>
               <br>
            </div>
         </div>
      </div>
      <div class="modal fade" id=Register tabindex=-1 aria-labelledby=feedbackModalLabel aria-hidden=true>
         <div class="modal-dialog modal-dialog-centered">
            <div class=modal-content>
               <div class="modal-header bg-gradient-primary-to-secondary p-4">
                  <h5 class="modal-title font-alt text-white" id=feedbackModalLabel>Registrate</h5>
                  <button class="btn-close btn-close-white" type=button data-bs-dismiss=modal aria-label=Close></button>
               </div>
               <div class="modal-body border-0 p-4">
                  <form id=contactForm action="validaciones/validar_register.jsp" method="POST">
                     <div class="form-floating mb-3">
                        <input class=form-control id=name placeholder="Enter your name..." data-sb-validations="required"><label for=name>Nickname</label>
                    </div>
                     <div class="form-floating mb-3">
                        <input class=form-control id=password type=password placeholder="Enter your password" data-sb-validations="required"><label for=password>password</label>
                    </div>
                     <div class="form-floating mb-3">
                        <input class=form-control id=Confirmpassword type=Confirmpassword placeholder="Confirm your password" data-sb-validations="required">
                        <label for=password>Confirm your password</label>
                    </div>
                  </form>
               </div>
                <div class=d-grid>
                    <button class="mx-3 btn btn-primary rounded-pill btn-lg" id=submitButton type=submit>Registrate mamabicho</button>
                </div>
               <br>
            </div>
         </div>
      </div>
      <script src=https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js></script>
      <script src=js/scripts.js></script>
      <script src=https://cdn.startbootstrap.com/sb-forms-latest.js></script>
   </body>
</html>