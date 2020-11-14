<!-- Content Header (Page header) -->
<section class="content-header">







</section>

<!-- Content Header (Page header) -->
<section class="content">
	<!-- Main row -->

	<div class="row">
		<!-- Left col -->
		<section id="cuadros" class="col-lg-8 connectedSortable">

			<div class="row">
				<h1 class="text-center">Dasboard Medico</h1>


				<div class="row">


					<div class="col-md-12">

						<!-- TABLE: LATEST ORDERS -->
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title"><i class='fa fa-User'></i> Pacientes</h3>
								<a href="<?php echo base_url('publico/agregar_paciente') ?>" class="btn btn-info"><i class="fa fa-pencil"></i>Agregar Paciente</a>
								<div class="box-tools pull-right">


									<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
									<button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
								</div>
							</div><!-- /.box-header -->
							<div class="box-body">


								<table class="table table-bordered table-hover ">
									<thead>
										<tr>
											<th>
												<center>Opciones</center>
											</th>
											<th>
												<center>Nombre </center>
											</th>
											
											<th>
												<center>CPF</center>
											</th>
											<th>
												<center>CNS</center>
											</th>


										</tr>

									</thead>

									<tbody  >

										<tr v-for="item in pacientes" >
											<td>
												<center>
													<a @click="toDetalleView(item.id)" class="btn btn-success" data-toggle="tooltip"  data-placement="top" title="" data-original-title="Revisar la información de la Solicitud"><i class="fa fa-eye"></i>Detalle</a>
													<a @click="toEditView(item.id)"  class="btn btn-info" data-toggle="tooltip"  data-placement="top" title="" data-original-title="Revisar la información de la Solicitud"><i class="fa fa-pencil"></i>Editar</a>
													<a @click="Eliminar(item.id)" class="btn btn-danger" data-toggle="tooltip"  data-placement="top" title="" data-original-title="Revisar la información de la Solicitud"><i class="fa fa-trash"></i>Eliminar</a>

												</center>

											</td>

											<td>  {{item.nombre}} {{item.ap_materno}} </td>
											
											<td>{{item.cpf}}</td>
											<td>{{item.cns}}</td>
										

										</tr>



									</tbody>



								</table>


							</div>

						</div>
					</div>

				</div>






		</section><!-- /.Left col -->
		<!-- right col (We are only adding the ID to make the widgets sortable)-->
		<section class="col-lg-4 connectedSortable">
			<!-- Bienvenida -->
			<?php
			echo "<h3>Bienvenid@</h3>";

			?>
			<div class="box box-widget widget-user-2">
				<!-- Add the bg color to the header using any of the bg-* classes -->
				<div class="widget-user-header bg-aqua-active">
					<div class="widget-user-image">
						<img src="<?php if (isset($user->foto) and (!empty($user->foto) and !is_null($user->foto))) {
										echo base_url(RUTA_USUARIOS . $user->foto);
									} else {
										echo base_url(RUTA_USUARIOS . "sinfoto.png");
									} ?>" class="img-circle" alt="Imagen del Usuario" width="50%">
					</div>
					<h3 class="widget-user-username"><?php echo $user->nom . ' ' . $user->app . ' ' . $user->apm; ?></h3>
					<h5 class="widget-user-desc"><?php echo $user->cargo->cargo ?></h5>
				</div>

			</div>
			<br>
			<!-- Fin Bienvenida -->

			<!-- Fin Usuarios -->
			<!-- Calendario -->
			<!-- Calendar -->
			<!-- Fin Usuarios -->

			<div class="box box-solid bg-green-gradient">
				<div class="box-header">

					<center>

						<i class="fa fa-calendar"></i>
						<h1 class="box-title">Calendario</h1>
					</center>
					<!-- tools box -->

				</div><!-- /.box-header -->

				<div class="box-body no-padding">
					<!--The calendar -->
					<div id="calendar" style="width: 100%"></div>
				</div><!-- /.box-body -->


			</div><!-- /.box -->

			<!-- Fin Calendario -->
			<!-- chat -->
			<?php
			if ($isadmin) {
			?>



			<?php
			}
			?>
			<!-- fin chat -->

		</section><!-- /.Right col -->
	</div><!-- /.row (main row) -->

</section>