
	<section class="content-header">
          <h1>
            Cat&aacute;logo de <?php echo $titulo; ?>
            
          </h1>
          <ol class="breadcrumb">
            <li><a href="<?php echo base_url('admin'); ?>"><i class="fa fa-dashboard"></i> Inicio</a></li>
			<li><a href="<?php echo base_url('admin'); ?>"><i class="fa fa-gears"></i> Administraci&oacute;n</a></li>
            <li class="active">Cat&aacute;logo de <?php echo $titulo; ?></li>
          </ol>
    </section>
	
	 <!-- Main content -->
    <section class="content">
		<div class="row">
			<div class="col-sm-12 ">
				<div class="box table-responsive">
			
				
					<?php echo $grid->output; ?>
				</div>
			</div>

			<div class="box-footer with-border">
									<p><a href="<?php echo base_url('publico') ?>" class="btn btn-warning"><i class="fa fa-arrow-left"></i>Volver al Inicio</a></p>
							</div>
		</div>
	</section>
