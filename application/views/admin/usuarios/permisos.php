<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Nivel Jer&aacute;rquico del Usuario
		<small>Indique los datos requeridos</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo base_url('admin'); ?>"><i class="fa fa-dashboard"></i> Inicio</a></li>
		<li><a href="<?php echo base_url('usuarios'); ?>"><i class="fa fa-circle-o"></i> Usuarios</a></li>
		
		<li class="active">Nivel Jer&aacute;rquico</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<!-- Info boxes -->
	
	<div class="row">
		<div class="col-md-12">
			<!-- TABLE: LATEST ORDERS -->
			<div class="box box-info">
                <div class="box-header with-border">
					<h3 class="box-title">Nivel Jer&aacute;rquico del Usuario <small>Ingrese toda la informaci&oacute;n requerida</small></h3>
					<div class="box-tools pull-right">
						<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
					</div>
				</div><!-- /.box-header -->
                <div class="box-body">
					<?php
					if(isset($usuario)){
						if($usuario){
					?>
						<h4 class="box-title"><strong>Usuario: </strong><?php echo $usuario->nom." ".$usuario->app." ".$usuario->apm; ?></h4>
					<?php
						}
					}
					?>
					<div class="row">
						<div class="col-lg-12">
							
							
							
							<?php echo $grid->output; ?>
						</div>
					</div>
				</div><!-- /.box-body -->
				<div class="box-footer clearfix">
					
					<a href="<?php echo base_url('usuarios/vertodos'); ?>" class="btn btn-success btn-flat pull-left">Volver a Control de Usuarios</a>
				</div><!-- /.box-footer -->
			</div><!-- /.box -->
		</div><!-- /.col -->
	</div><!-- /.row -->
	
	
	
	
	
</section><!-- /.content -->