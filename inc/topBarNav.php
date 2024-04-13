
<style>
/* Estilos para las letras y los iconos de la barra de navegación */
.nav-item:hover .nav-link {
    transform: translateY(-5px); /* Mover hacia arriba 5px al pasar el cursor */
    transition: transform 0.2s; /* Agregar una transición suave */
}

/* Cambiar el tamaño del icono al pasar el cursor */
.nav-item:hover .nav-link .fa-lg {
    transform: scale(1.2); /* Escalar un 20% más grande al pasar el cursor */
    transition: transform 0.2s; /* Agregar una transición suave */
}
 /* Estilos para las letras y los iconos de la barra de navegación */
 .nav-item .nav-link {
        text-decoration: none; /* Quita el subrayado por defecto */
    }

    /* Subrayado al pasar el cursor sobre los elementos */
    .nav-item .nav-link:hover {
        text-decoration: underline; /* Agrega un subrayado al pasar el cursor */
    }
</style>
<nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background: linear-gradient(to bottom, rgba(0, 70, 163, 0.7), rgba(0, 50, 81, 0.9)); height: 80px;">
   <div class="container px-10 px-lg-10">
        <a class="navbar-brand" href="./">
            <img src="<?php echo validate_image($_settings->info('logo')) ?>" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
            <?php echo $_settings->info('short_name') ?>
        </a>
        <button class="navbar-toggler btn btn-sm" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4" style="text-align: center;">
    <li class="nav-item"><a class="nav-link text-white" aria-current="page" href="./">Inicio</a></li>
    <li class="nav-item"><a class="nav-link text-white" href="./?p=inmobiliarios">Inmobiliarios</a></li>
    <li class="nav-item"><a class="nav-link text-white" href="./?p=about">Sobre nosotros</a></li>
</ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link text-light mx-2 text-decoration-none" href="./agent">
                        <i class="fas fa-user fa-lg" style="color: #FFFFFF;"></i> <!-- Icono de usuario para Acceso de Agente en rojo -->
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light mx-2 text-decoration-none" href="./admin">
                        <i class="fas fa-cogs fa-lg" style="color: #FFFFFF;"></i> <!-- Icono de engranaje para Acceso de Administrador en verde -->
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light mx-2 text-decoration-none" href="https://api.whatsapp.com/send?phone=4442259579">
                        <i class="fab fa-whatsapp fa-lg" style="color: #0BDE32;">whatsapp</i> <!-- Icono de WhatsApp con enlace en azul -->
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<script>
  $(function(){
    $('#login-btn').click(function(){
      uni_modal("","login.php")
    })
    $('#navbarResponsive').on('show.bs.collapse', function () {
        $('#mainNav').addClass('navbar-shrink')
    })
    $('#navbarResponsive').on('hidden.bs.collapse', function () {
        if($('body').offset.top == 0)
          $('#mainNav').removeClass('navbar-shrink')
    })
  })

  $('#search-form').submit(function(e){
    e.preventDefault()
     var sTxt = $('[name="search"]').val()
     if(sTxt != '')
      location.href = './?p=products&search='+sTxt;
  })
</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
