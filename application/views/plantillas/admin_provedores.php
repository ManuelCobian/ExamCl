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

              <a href="<?php echo base_url('Publico/add_gastos_provedores') ?>" class="btn btn-success btn-block margin-bottom"><i class="fa fa-check"></i> Registrar<br> Facturas </a>
               
                 


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

                    <li <?php if($carpeta == 2 ){ echo "class='active'"; } ?>><a href="<?php echo base_url('Publico/facturas_Provedores'); ?>"><i class="fa fa-book"></i>Facturas de Proveedores</a>

                    <li <?php if($carpeta == 1 ){ echo "class='active'"; } ?>><a href="<?php echo base_url('Publico/cat_Provedores'); ?>"><i class="fa fa-user"></i>Catalogo de Proveedores</a>


                      

                    
                    
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