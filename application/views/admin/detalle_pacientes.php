<?php
		if(isset($error)){
			
			if(is_array($error)){
				
				foreach($error as $er){
				?>
				<div class="alert alert-danger alert-dismissable">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
					<h4><i class="icon fa fa-ban"></i> Ha ocurrido un error!</h4>
					<?php echo $er; ?>
				</div>
				<?php
				}
				}else{
			?>
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
				<h4><i class="icon fa fa-ban"></i> Ha ocurrido un error!</h4>
				<?php echo $error; ?>
			</div>
			<?php
			}
			
		}
	?>

<?php
		if(isset($exito)){
			
			if(is_array($exito)){
				
				foreach($exito as $er){
				?>
				<div class="alert alert-info alert-dismissable">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
					<h4><i class="icon fa fa-check"></i> Felicidades!</h4>
					<?php echo $er; ?>
				</div>
				<?php
				}
				}else{
			?>
			<div class="alert alert-info alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
				<h4><i class="icon fa fa-check"></i> Felicidades!</h4>
				<?php echo $exito; ?>
			</div>
			<?php
			}
			
		}
	?>
	

 <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Perfil del Usuario
          </h1>
          <ol class="breadcrumb">
            <li><a href="<?php echo base_url('admin'); ?>"><i class="fa fa-dashboard"></i> Inicio</a></li>
			
            <li class="active">Perfil del Usuario</li>
          </ol>
		  
		 
        </section>

        <!-- Main content -->
        <section class="content">

          <div class="row">
            <div class="col-md-3">

              <!-- Profile Image -->
              <div class="box box-primary">
                <div class="box-body box-profile">
					
                  <img class="profile-user-img img-responsive img-circle" src="<?php if(isset($paciente->foto) and (!empty($paciente->foto) and !is_null($paciente->foto)) ) { echo base_url(RUTA_PACIENTES.$paciente->foto); }else{ echo base_url(RUTA_USUARIOS."sinfoto.png"); } ?>" alt="Imagen de Perfil del Usuario">
					
                  <h3 class="profile-username text-center"><?php echo $paciente->nombre.' '.$paciente->ap_materno; ?></h3>
                

                
					
                </div><!-- /.box-body -->
              </div><!-- /.box -->

             
            </div><!-- /.col -->
            <div class="col-md-9">
              <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                 
				  
					<li class="active"><a href="#settings" data-toggle="tab">Datos Personales</a></li>
				  
                </ul>
                <div class="tab-content">
                  <div class=" tab-pane" id="activity">
                    <!-- Post -->
                    <div class="post">
                      <div class="user-block">
                        
                      </div><!-- /.user-block -->
                      <p>
                        No hay actividad reciente.
                      </p>
                     

                   
                    </div><!-- /.post -->

                    

                   
                  </div><!-- /.tab-pane -->
                  <div class="tab-pane" id="timeline">
                    <!-- The timeline -->
                    <ul class="timeline timeline-inverse">
                      <!-- timeline time label -->
                      <li class="time-label">
                        <span class="bg-red">
                          <?php echo date('Y-m-d'); ?>
                        </span>
                      </li>
                      <!-- /.timeline-label -->
                      <!-- timeline item -->
                      <li>
                        <i class="fa fa-envelope bg-blue"></i>
                        <div class="timeline-item">
                          <span class="time"><i class="fa fa-clock-o"></i> <?php echo date('h:m:s'); ?></span>
                          <h3 class="timeline-header">No olvide actualizar su <a href="<?php echo base_url('usuarios/miperfil'); ?>">Perfil</a></h3>
                          <div class="timeline-body">
                           Indique los datos necesarios sobre su persona y cambie la fotograf&iacute;a para mostrar.
                          </div>
                          
                        </div>
                      </li>
                      <!-- END timeline item -->
                      
                     
                      <li>
                        <i class="fa fa-clock-o bg-gray"></i>
                      </li>
                    </ul>
                  </div><!-- /.tab-pane -->
				
                  <div class="active tab-pane" id="settings">
                    <?php 
					
					$attributes = array('class' => 'form-horizontal', 'id' => 'frmPerfil', 'name' => 'frmPerfil', 'target' => '_self');
					
					echo form_open_multipart('publico/miperfil', $attributes);
					
				?>
                      <div class="form-group">
                        <label for="tnom" class="col-sm-2 control-label">Nombre</label>
                        <div class="col-sm-10">
                          <?php echo form_error('tnom','<div class="alert alert-danger">','</div>'); 
								
								$campo = array(
								'name'	=> 'tnom',
								'id'	=> 'tnom',
								'value' => set_value('tnom', $paciente->nombre),
								'placeholder' => 'Indique su nombre',
								'class' => 'form-control',
								'data-validation-required-message' => "Por favor indique su nombre.",
								
								'data-toggle'=>"tooltip", 'data-placement'=>"top", 'title'=>"Indique su nombre o nombres"
								);
								
								echo form_input($campo); 
							?>
							
							<p class="help-block text-danger"></p>
                        </div>
                      </div>
					  <div class="form-group">
                        <label for="tapp" class="col-sm-2 control-label">Apellido Materno</label>
                        <div class="col-sm-10">
                          <?php echo form_error('tapp','<div class="alert alert-danger">','</div>'); 
								
								$campo = array(
								'name'	=> 'tapp',
								'id'	=> 'tapp',
								'value' => set_value('tapp', $paciente->ap_materno),
								'placeholder' => 'Indique su apellido paterno',
								'class' => 'form-control',
								'data-validation-required-message' => "Por favor indique su apellido paterno.",
								
								'data-toggle'=>"tooltip", 'data-placement'=>"top", 'title'=>"Indique su apellido paterno"
								);
								
								echo form_input($campo); 
							?>
							
							<p class="help-block text-danger"></p>
                        </div>
                      </div>
					  
					
					  <div class="form-group">
                        <label for="tmail" class="col-sm-2 control-label">Fecha de Nacimiento</label>
                        <div class="col-sm-10">
                          <?php echo form_error('tmail','<div class="alert alert-danger">','</div>'); 
								
								$campo = array(
								'name'	=> 'tmail',
								'id'	=> 'tmail',
								'value' => set_value('tmail', $paciente->fecha_nacimiento),
								'placeholder' => 'Indique su correo electr&oacute;nico',
								'class' => 'form-control',
								'data-validation-required-message' => "Por favor indique su correo electr&oacute;nico.",
								
								'data-toggle'=>"tooltip", 'data-placement'=>"top", 'title'=>"Indique su correo electr&oacute;nico, ser&aacute; utilizado para enviarle notificaciones en el futuro"
								);
								
								echo form_input($campo); 
							?>
							
							<p class="help-block text-danger"></p>
                        </div>
                      </div>
					  
					  <div class="form-group">
                        <label for="tcargo" class="col-sm-2 control-label">CPF</label>
                        <div class="col-sm-10">
                          <?php echo form_error('tcargo','<div class="alert alert-danger">','</div>'); 
								
								$campo = array(
								'name'	=> 'tcargo',
								'id'	=> 'tcargo',
								'value' => set_value('tcargo', $paciente->cpf),
								'placeholder' => 'Indique su cargo',
								'class' => 'form-control',
								'data-validation-required-message' => "Por favor indique su cargo.",
								'disabled'=>"disabled",
								'data-toggle'=>"tooltip", 'data-placement'=>"top", 'title'=>"Indique su cargo"
								);
								
								echo form_input($campo); 
							?>
							
							<p class="help-block text-danger"></p>
                        </div>
                      </div>



                      <div class="form-group">
                        <label for="tcargo" class="col-sm-2 control-label">CNS</label>
                        <div class="col-sm-10">
                          <?php echo form_error('tcargo','<div class="alert alert-danger">','</div>'); 
								
								$campo = array(
								'name'	=> 'tcargo',
								'id'	=> 'tcargo',
								'value' => set_value('tcargo', $paciente->cns),
								'placeholder' => 'Indique su cargo',
								'class' => 'form-control',
								'data-validation-required-message' => "Por favor indique su cargo.",
								'disabled'=>"disabled",
								'data-toggle'=>"tooltip", 'data-placement'=>"top", 'title'=>"Indique su cargo"
								);
								
								echo form_input($campo); 
							?>
							
							<p class="help-block text-danger"></p>
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="tcargo" class="col-sm-2 control-label">Domicilio</label>
                        <div class="col-sm-10">
                          <?php echo form_error('tcargo','<div class="alert alert-danger">','</div>'); 
								
								$campo = array(
								'name'	=> 'tcargo',
								'id'	=> 'tcargo',
								'value' => set_value('tcargo', $paciente->direccion),
								'placeholder' => 'Indique su cargo',
								'class' => 'form-control',
								'data-validation-required-message' => "Por favor indique su cargo.",
								'disabled'=>"disabled",
								'data-toggle'=>"tooltip", 'data-placement'=>"top", 'title'=>"Indique su cargo"
								);
								
								echo form_input($campo); 
							?>
							
							<p class="help-block text-danger"></p>
                        </div>
                      </div>
					  
					
                     
					 
					  
					  
					  
					  
					  <div class="form-group">
                        <label for="inputSkills" class="col-sm-2 control-label">Imagen</label>
						<div class="col-sm-2">
							<img src="<?php if(isset($paciente->foto) and (!empty($paciente->foto) and !is_null($paciente->foto)) ) { echo base_url(RUTA_PACIENTES.$paciente->foto); }else{ echo base_url(RUTA_USUARIOS."sinfoto.png"); } ?>" class=" img img-responsive user-image" alt="Imagen del Usuario">
						</div>
                        <div class="col-sm-8">
                          <?php echo form_error('tfoto','<div class="alert alert-danger">','</div>'); 
								
								$campo = array(
								'name'	=> 'tfoto',
								'id'	=> 'tfoto',
								
								'value' => set_value('tfoto'),
								'placeholder' => 'Seleccione una foto',
								'class' => 'form-control',
								
								'data-toggle'=>"tooltip", 'data-placement'=>"top", 'title'=>"Seleccione un archivo con su foto"
								
								
								);
								
								echo form_upload($campo); 
							?>
                        </div>
                      </div>
					  
					
                      
                      
				
				
				
					<?php echo form_close(); ?>
					<div class="pull-left">
                        <a href="<?php echo base_url('publico')  ?>" class="btn btn-danger"> Volver </a>
                    </div>
                  </div><!-- /.tab-pane -->
				
                </div><!-- /.tab-content -->
              </div><!-- /.nav-tabs-custom -->
            </div><!-- /.col -->
          </div><!-- /.row -->

        </section><!-- /.content -->