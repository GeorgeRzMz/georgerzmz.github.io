<script>
  $(document).ready(function(){
    $('#p_use').click(function(){
      uni_modal("Privacy Policy","policy.php","mid-large")
    })
     window.viewer_modal = function($src = ''){
      start_loader()
      var t = $src.split('.')
      t = t[1]
      if(t =='mp4'){
        var view = $("<video src='"+$src+"' controls autoplay></video>")
      }else{
        var view = $("<img src='"+$src+"' />")
      }
      $('#viewer_modal .modal-content video,#viewer_modal .modal-content img').remove()
      $('#viewer_modal .modal-content').append(view)
      $('#viewer_modal').modal({
              show:true,
              backdrop:'static',
              keyboard:false,
              focus:true
            })
            end_loader()  

  }
    window.uni_modal = function($title = '' , $url='',$size=""){
        start_loader()
        $.ajax({
            url:$url,
            error:err=>{
                console.log()
                alert("An error occured")
            },
            success:function(resp){
                if(resp){
                    $('#uni_modal .modal-title').html($title)
                    $('#uni_modal .modal-body').html(resp)
                    if($size != ''){
                        $('#uni_modal .modal-dialog').addClass($size+'  modal-dialog-centered')
                    }else{
                        $('#uni_modal .modal-dialog').removeAttr("class").addClass("modal-dialog modal-md modal-dialog-centered")
                    }
                    $('#uni_modal').modal({
                      show:true,
                      backdrop:'static',
                      keyboard:false,
                      focus:true
                    })
                    end_loader()
                }
            }
        })
    }
    window._conf = function($msg='',$func='',$params = []){
       $('#confirm_modal #confirm').attr('onclick',$func+"("+$params.join(',')+")")
       $('#confirm_modal .modal-body').html($msg)
       $('#confirm_modal').modal('show')
    }
  })
</script>

<style>
    /* Cambia el color de texto al pasar el cursor sobre los enlaces */
    .text-white a:hover {
        color: #FF00FF; /* Cambia el color a un tono de púrpura (o el color que desees) */
        transition: color 0.3s ease; /* Transición suave del cambio de color */
    }
</style>
<footer class="py-4" style="background-color: #3692F2;">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
            <p class="m-0 text-white"><strong>Síguenos:</strong></p>
                <ul class="list-unstyled">
                    <li>
                        <a href="#" class="text-white">
                            <i class="fab fa-facebook"></i> Facebook
                        </a>
                    </li>
                    <li>
                        <a href="#" class="text-white">
                            <i class="fab fa-twitter"></i> Twitter
                        </a>
                    </li>
                    <li>
                        <a href="#" class="text-white">
                            <i class="fab fa-instagram"></i> Instagram
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-4">
            <p class="m-0 text-white"><strong>Contactenos:</strong></p>
                <p class="m-0 text-white">Direccion: Rivas guillen #2408, col. Rivas guillen sur. </p>
                <p class="m-0 text-white">Correo: <a href="mailto: daniel.lavador.g@gmail.com" class="text-white">daniel.lavador.g@gamil.com</a></p>
                <p class="m-0 text-white">Teléfono: <a href="tel:4442259579" class="text-white">4442259579</a></p>
            </div>
            <div class="col-md-4">
                <!-- Your new content for the "Services" column -->
                <p class="m-0 text-white"><strong>Nuestros Servicios:</strong></p>
                <ul class="list-unstyled">
                    <li>
                        <a href="#" class="text-white">Asesoria</a>
                    </li>
                    <li>
                        <a href="#" class="text-white">Venta</a>
                    </li>
                    <li>
                        <a href="#" class="text-white">Renta</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row">
    <div class="col-md-12">
        <hr style="border-top: 1px solid #fff; margin-top: 30px;">
        <p class="m-0 text-center text-white">Copyright &copy; <?php echo $_settings->info('short_name') ?> 2023</p>
        <p class="m-0 text-center text-white">Desarrollado por: <a href="daniel.lavador.g@gmail.com" class="text-white">Daniel/Jorge </a></p>
    </div>
</div>
    </div>
</footer>


   
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="<?php echo base_url ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="<?php echo base_url ?>plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="<?php echo base_url ?>plugins/sparklines/sparkline.js"></script>
    <!-- Select2 -->
    <script src="<?php echo base_url ?>plugins/select2/js/select2.full.min.js"></script>
    <!-- JQVMap -->
    <script src="<?php echo base_url ?>plugins/jqvmap/jquery.vmap.min.js"></script>
    <script src="<?php echo base_url ?>plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="<?php echo base_url ?>plugins/jquery-knob/jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="<?php echo base_url ?>plugins/moment/moment.min.js"></script>
    <script src="<?php echo base_url ?>plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="<?php echo base_url ?>plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Summernote -->
    <script src="<?php echo base_url ?>plugins/summernote/summernote-bs4.min.js"></script>
    <script src="<?php echo base_url ?>plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?php echo base_url ?>plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="<?php echo base_url ?>plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="<?php echo base_url ?>plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <!-- overlayScrollbars -->
    <!-- <script src="<?php echo base_url ?>plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script> -->
    <!-- AdminLTE App -->
    <script src="<?php echo base_url ?>dist/js/adminlte.js"></script>
    <div class="daterangepicker ltr show-ranges opensright">
      <div class="ranges">
        <ul>
          <li data-range-key="Today">Hoy</li>
          <li data-range-key="Yesterday">Ayer</li>
          <li data-range-key="Last 7 Days">Los últimos 7 días</li>
          <li data-range-key="Last 30 Days">Últimos 30 días</li>
          <li data-range-key="This Month">Este mes</li>
          <li data-range-key="Last Month">El mes pasado</li>
          <li data-range-key="Custom Range">Rango personalizado</li>
        </ul>
      </div>
      <div class="drp-calendar left">
        <div class="calendar-table"></div>
        <div class="calendar-time" style="display: none;"></div>
      </div>
      <div class="drp-calendar right">
        <div class="calendar-table"></div>
        <div class="calendar-time" style="display: none;"></div>
      </div>
      <div class="drp-buttons"><span class="drp-selected"></span><button class="cancelBtn btn btn-sm btn-default" type="button">Cancelar</button><button class="applyBtn btn btn-sm btn-primary" disabled="disabled" type="button">Aplicar</button> </div>
    </div>
    <div class="jqvmap-label" style="display: none; left: 1093.83px; top: 394.361px;">T...C...</div>