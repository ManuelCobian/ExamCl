  <!-- Content Header (Page header) -->

        <section class="content-header">
          <meta charset="utf-8">
          <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
          <h1>
            <?php if(isset($titulo)){ echo $titulo; }else{ echo "Administración ".''.$user->central->nombre; } ?>
            <small></small>
          </h1>
          
        </section>

        <!-- Main content -->
        <section class="content">

          <div class="row">
            <div class="col-md-2">
                
                <?php if (isset($corrida) and is_object($corrida)) {
                        # code...
               ?>
                <?php if ($carpeta==3 and $corrida->abierto>=1 and $corrida->finalizado<=0) {
                  # code...
                ?>
                <a href="<?php echo base_url('Administracion/add_ingresos').'/'.$corrida->id ?>" class="btn btn-success btn-block margin-bottom"><i class="fa fa-check"></i> Registrar <br>Ingresos</a>
                <?php } ?>
              <?php }if ($carpeta==3 and !is_object($corrida)) {?>
                  <a href="<?php echo base_url('Administracion/add_ingresos') ?>" class="btn btn-success btn-block margin-bottom"><i class="fa fa-check"></i> Registrar <br>Ingresos</a>
              <?php } ?>



              <?php if (isset($corrida) and is_object($corrida)) {
                        # code...

               ?>
                <?php if ($carpeta==1 and $corrida->abierto>=1 and $corrida->finalizado<=0) {
                  # code...
                ?>
                <a href="<?php echo base_url('Administracion/add_gastos').'/'.$corrida->id ?>" class="btn btn-success btn-block margin-bottom"><i class="fa fa-check"></i> Registrar <br>Gastos</a>
                <?php } ?>
              <?php }?>
                 


              
             


                <?php if (isset($corrida) and is_object($corrida)) {
                        # code...
               ?>
                <?php if ($carpeta==2 and $corrida->abierto>=1 and $corrida->finalizado<=0) {
                  # code...
                ?>
                <a href="<?php echo base_url('Administracion/add_gastos_provedores').'/'.$corrida->id ?>" class="btn btn-success btn-block margin-bottom"><i class="fa fa-check"></i> Registrar<br>Gastos Provedores</a>
                <?php } ?>
              <?php }
                # code...
              ?>
                 


              <div class="box box-solid">
                <div class="box-header with-border">
                  <h3 class="box-title">Opciones</h3>
                  <br>
                  
                  <div class="box-tools">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  </div>
                </div>
                <div class="box-body no-padding">

                  
                  <ul class="nav nav-pills nav-stacked">

                      <?php if (isset($corrida) and is_object($corrida)) {
                        # code...
                      ?>

                       <li <?php if($carpeta == 3 ){ echo "class='active'"; } ?>><a href="<?php echo base_url('Administracion/ingresos').'/'.$corrida->id; ?>"><i class="fa fa-money"></i>Ganancias
                       <?php }   else{?>

                       <li <?php if($carpeta == 3 ){ echo "class='active'"; } ?>><a href="<?php echo base_url('Administracion/ingresos'); ?>"><i class="fa fa-money"></i>Ganancias</a>
                        <?php } ?>
                </a>
      					
                <?php if (isset($corrida) and is_object($corrida)) {
                        # code...
                      ?>
                 <li <?php if($carpeta == 1 ){ echo "class='active'"; } ?>><a href="<?php echo base_url('Administracion/gastos').'/'.$corrida->id; ?>"><i class="fa fa-bus"></i> Gastos </a>
      					</a>
                <?php 
                   }
                   else{
                ?>

                  <li <?php if($carpeta == 1 ){ echo "class='active'"; } ?>><a href="<?php echo base_url('Administracion/gastos'); ?>"><i class="fa fa-bus"></i> Gastos</a> 

                 <?php } ?>

                <?php if (isset($corrida) and is_object($corrida)) {
                        # code...
                ?>
                <li <?php if($carpeta == 2 ){ echo "class='active'"; } ?>><a href="<?php echo base_url('Administracion/provedores_gastos').'/'.$corrida->id; ?>"><i class="fa fa-user"></i>Gastos Proveedores
                </a>
                <?php }else{
                        # code...
                  ?>

                   <li <?php if($carpeta == 2 ){ echo "class='active'"; } ?>><a href="<?php echo base_url('Administracion/provedores_gastos'); ?>"><i class="fa fa-user"></i>Gastos Proveedores</a>

                <?php } ?>
             
                    
              <!-- <li <?php if($carpeta == 2 ){ echo "class='active'"; } ?>><a href="<?php echo base_url('metas/reportes'); ?>"><i class="fa fa-print"></i> Reportes</a></li>-->
                  </ul>
                </div><!-- /.box-body -->
              </div><!-- /. box -->




        
			  
            </div><!-- /.col -->
            <div class="col-md-10">
			
				<?php if(isset($pagina_interna)) { $this->load->view($pagina_interna); } ?>
			
			</div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->