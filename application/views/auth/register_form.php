<?php
if ($use_username) {
	$username = array(
		'name'	=> 'username',
		'id'	=> 'username',
		'class' => "form-control",
		'value' => set_value('username'),
		'maxlength'	=> $this->config->item('username_max_length', 'tank_auth'),
		'size'	=> 30,
	);
}
$email = array(
	'name'	=> 'email',
	'id'	=> 'email',
	'class' => "form-control",
	'value'	=> set_value('email'),
	'maxlength'	=> 80,
	'size'	=> 30,
);
$password = array(
	'name'	=> 'password',
	'id'	=> 'password',
	'class' => "form-control",
	'value' => set_value('password'),
	'maxlength'	=> $this->config->item('password_max_length', 'tank_auth'),
	'size'	=> 30,
);
$confirm_password = array(
	'name'	=> 'confirm_password',
	'id'	=> 'confirm_password',
	'class' => "form-control",
	'value' => set_value('confirm_password'),
	'maxlength'	=> $this->config->item('password_max_length', 'tank_auth'),
	'size'	=> 30,
);
$captcha = array(
	'name'	=> 'captcha',
	'id'	=> 'captcha',
	'maxlength'	=> 8,
);
?>

<section class="content-header">
	<h1>
		Agregar un Usuario
		
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo base_url('admin'); ?>"><i class="fa fa-dashboard"></i> Inicio</a></li>
		<li><a href="<?php echo base_url('admin/opciones'); ?>"><i class="fa fa-gears"></i> Administraci&oacute;n</a></li>
		<li class="active">Agregar Usuario</li>
	</ol>
</section>


<!-- Main content -->
<section class="content">

<div class="row">
		<div class="col-md-8">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Indique los datos del nuevo Usuario</h3>
				</div>
				<div class="panel-body">
					
					
					<?php echo form_open($this->uri->uri_string()); ?>
					
					<?php if ($use_username) { ?>
						<div class="control-group form-group">
							<div class="controls">
								<?php echo form_label('Usuario', $username['id']); ?>
								<?php echo form_input($username); ?>
								<?php echo form_error($username['name']); ?><?php echo isset($errors[$username['name']])?$errors[$username['name']]:''; ?>
								<p class="help-block"></p>
							</div>
						</div>
					<?php } ?>
					<div class="control-group form-group">
						<div class="controls">
							<?php echo form_label('Correo electr&oacute;nico', $email['id']); ?>
							<?php echo form_input($email); ?>
							<?php echo form_error($email['name']); ?><?php echo isset($errors[$email['name']])?$errors[$email['name']]:''; ?>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<?php echo form_label('Contrase&ntilde;a', $password['id']); ?>
							<?php echo form_password($password); ?>
							<?php echo form_error($password['name']); ?>	
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<?php echo form_label('Confirme Contrase&ntilde;a', $confirm_password['id']); ?>
							<?php echo form_password($confirm_password); ?>
							<?php echo form_error($confirm_password['name']); ?>
						</div>
					</div>
					
					<?php if ($captcha_registration) {
						if ($use_recaptcha) { ?>
						<tr>
							<td colspan="2">
								<div id="recaptcha_image"></div>
							</td>
							<td>
								<a href="javascript:Recaptcha.reload()">Get another CAPTCHA</a>
								<div class="recaptcha_only_if_image"><a href="javascript:Recaptcha.switch_type('audio')">Obtenga un audio CAPTCHA</a></div>
								<div class="recaptcha_only_if_audio"><a href="javascript:Recaptcha.switch_type('image')">Obtenga una imagen CAPTCHA</a></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="recaptcha_only_if_image">Ingrese las palabras de arriba</div>
								<div class="recaptcha_only_if_audio">Ingrese los numeros que escuche</div>
							</td>
							<td><input type="text" id="recaptcha_response_field" name="recaptcha_response_field" /></td>
							<td style="color: red;"><?php echo form_error('recaptcha_response_field'); ?></td>
							<?php echo $recaptcha_html; ?>
						</tr>
						<?php } else { ?>
						<tr>
							<td colspan="3">
								<p>Escriba el codigo exactamente como aparece:</p>
								<?php echo $captcha_html; ?>
							</td>
						</tr>
						<tr>
							<td><?php echo form_label('Confirmation Code', $captcha['id']); ?></td>
							<td><?php echo form_input($captcha); ?></td>
							<td style="color: red;"><?php echo form_error($captcha['name']); ?></td>
						</tr>
						<?php }
					} ?>
				</table>
				<?php echo form_submit('register', 'Registrar el Usuario', 'class="btn btn-success"'); ?>
				<?php echo form_close(); ?>
			</div>
		</div>
	</div>
</div>
</div>

</section>



