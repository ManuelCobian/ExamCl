<?php
$old_password = array(
	'name'	=> 'old_password',
	'id'	=> 'old_password',
	'value' => set_value('old_password'),
	'size' 	=> 30,
	'class' => "form-control",
	'placeholder' => 'Password Anterior',
);
$new_password = array(
	'name'	=> 'new_password',
	'id'	=> 'new_password',
	'maxlength'	=> $this->config->item('password_max_length', 'tank_auth'),
	'size'	=> 30,
	'class' => "form-control",
	'placeholder' => 'Password Nuevo',
);
$confirm_new_password = array(
	'name'	=> 'confirm_new_password',
	'id'	=> 'confirm_new_password',
	'maxlength'	=> $this->config->item('password_max_length', 'tank_auth'),
	'size' 	=> 30,
	'class' => "form-control",
	'placeholder' => 'Confirme el Password Nuevo',
);
?>

<section class="content-header">
          <h1>
            Cambiar la contrase&ntilde;a o password del usuario
            
          </h1>
          <ol class="breadcrumb">
            <li><a href="<?php echo base_url('admin'); ?>"><i class="fa fa-dashboard"></i> Inicio</a></li>
			<li><a href="<?php echo base_url('admin/opciones'); ?>"><i class="fa fa-gears"></i> Administraci&oacute;n</a></li>
			<li><a href="<?php echo base_url('usuarios/vertodos'); ?>"><i class="fa fa-gears"></i> Usuarios</a></li>
            <li class="active">Cambiar Contrase&ntilde;a</li>
          </ol>
    </section>
	
	 <!-- Main content -->
    <section class="content">
	<div class="row">      
		<div class="col-md-12">
                    <h4><a href="<?php echo base_url('usuarios/vertodos'); ?>" class="btn btn-default">Ver todos los usuarios</a></h4>
         </div>
    </div>

	<div class="row">      
		<div class="col-md-12">
      <h3>Usuario: <small><?php echo $user->username; ?></small></h3>
	  <h4><?php echo $user->nom." ".$user->app." ".$user->apm; ?></h4>
	  
      <p>Indique los datos requeridos</p>
		<?php echo form_open($this->uri->uri_string()); ?>
		<table>
			
			<tr>
				<td><?php echo form_label('Nuevo Password', $new_password['id']); ?></td>
				<td><?php echo form_password($new_password); ?></td>
				<td style="color: red;"><?php echo form_error($new_password['name']); ?><?php echo isset($errors[$new_password['name']])?$errors[$new_password['name']]:''; ?></td>
			</tr>
			<tr>
				<td><?php echo form_label('Confirme el Nuevo Password', $confirm_new_password['id']); ?></td>
				<td><?php echo form_password($confirm_new_password); ?></td>
				<td style="color: red;"><?php echo form_error($confirm_new_password['name']); ?><?php echo isset($errors[$confirm_new_password['name']])?$errors[$confirm_new_password['name']]:''; ?></td>
			</tr>
		</table>
		<?php echo form_submit('change', 'Cambiar Password','class = "btn btn-success"'); ?>
		<?php echo form_close(); ?>
	 </div>
    </div>
</section>