<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * principal
 */

class Publico extends CI_Controller
{
	var $_plantilla;
	var $_modulo_id;
	function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->helper('security');
		$this->load->library('tank_auth');
		$this->lang->load('tank_auth');
		$this->load->library('grocery_CRUD');
		$this->load->library('image_lib');
		$this->load->library("upload");
		$this->load->model("Principal_modal");
		$this->_plantilla = "plantillas/admin_lte.php";
		$this->_plantilla_login = "plantillas/login.php";
	}

		function index(){
				
		if (!$this->tank_auth->is_logged_in()) {
				redirect('/auth/login');
			} else {
				
				$data['user_id']	= $this->tank_auth->get_user_id();
				$data['username']	= $this->tank_auth->get_username();
				$data['user']=$this->users->get_user_info($data['user_id']);

				$script = "";

				$script.= '<script type="text/javascript"> function cargar() { ';
				$script.= ' /* Traer el widget */
								
								';
				$script.= ' } ';
				$script.= ' var link = document.getElementById("cuadros"); ';
				$script.= ' link.onload = cargar(); ';
				$script.= '</script>';

				$data['user_id']	= $this->tank_auth->get_user_id();
				$data['user']=$this->users->get_user_info($data['user_id']);

				$data['username']	= $this->tank_auth->get_username();
				
				$data['isadmin']=$data['user']->isadmin;


				

				$data['leafmapcss'] = '<link rel="stylesheet" href="'.base_url()."css/leaflet.css".'"/> <link rel="stylesheet" href="'.base_url()."css/leafmap.css".'"/>';
				$data['leafmapjs'] = '<script src="'.base_url()."js/leaflet.js".'"></script>';
				
				$data['jqueryui'] = true;
				$data['scripts_chart'] = $script;
				$data['scripts'] = 'admin/scripts';

				$data['isadmin']=$data['user']->isadmin;
				//$data['scripts'] = 'admin/scripts';
				$data['pagina'] = 'admin/admin_inicio_dos';
				$data['titulo'] = 'Bienvenidos(as)';
				

				$this->load->view($this->_plantilla, $data);
			}
		}



		function agregar_paciente(){
				
			if (!$this->tank_auth->is_logged_in()) {
					redirect('/auth/login');
				} else {
					
					$data['user_id']	= $this->tank_auth->get_user_id();
					$data['username']	= $this->tank_auth->get_username();
					$data['user']=$this->users->get_user_info($data['user_id']);
	
					
					$data['user_id']	= $this->tank_auth->get_user_id();
					$data['user']=$this->users->get_user_info($data['user_id']);
	
					$data['username']	= $this->tank_auth->get_username();
					
					$data['isadmin']=$data['user']->isadmin;
					
	
					
	
					$data['leafmapcss'] = '<link rel="stylesheet" href="'.base_url()."css/leaflet.css".'"/> <link rel="stylesheet" href="'.base_url()."css/leafmap.css".'"/>';
					$data['leafmapjs'] = '<script src="'.base_url()."js/leaflet.js".'"></script>';
					
					$data['jqueryui'] = true;
					
					$data['isadmin']=$data['user']->isadmin;
					//$data['scripts'] = 'admin/scripts';
					$data['pagina'] = 'admin/add_pacientes';
					$data['titulo'] = 'Bienvenidos(as)';
					
	
					$this->load->view($this->_plantilla, $data);
				}
			}



			function editar_paciente($id=-1){
				
				if (!$this->tank_auth->is_logged_in()) {
						redirect('/auth/login');
					} else {
						
						$data['user_id']	= $this->tank_auth->get_user_id();
						$data['username']	= $this->tank_auth->get_username();
						$data['user']=$this->users->get_user_info($data['user_id']);
		
						
						$data['user_id']	= $this->tank_auth->get_user_id();
						$data['user']=$this->users->get_user_info($data['user_id']);
		
						$data['username']	= $this->tank_auth->get_username();
						
						$data['isadmin']=$data['user']->isadmin;
						
						$data['paciente']=$this->Principal_modal->get_paciente($id);
						
		
						
		
						$data['leafmapcss'] = '<link rel="stylesheet" href="'.base_url()."css/leaflet.css".'"/> <link rel="stylesheet" href="'.base_url()."css/leafmap.css".'"/>';
						$data['leafmapjs'] = '<script src="'.base_url()."js/leaflet.js".'"></script>';
						
						$data['jqueryui'] = true;
						
						$data['isadmin']=$data['user']->isadmin;
						//$data['scripts'] = 'admin/scripts';
						$data['pagina'] = 'admin/edit_pacientes';
						$data['titulo'] = 'Bienvenidos(as)';
						
		
						$this->load->view($this->_plantilla, $data);
					}
				}


				function detalle_paciente($id=-1){
				
					if (!$this->tank_auth->is_logged_in()) {
							redirect('/auth/login');
						} else {
							
							$data['user_id']	= $this->tank_auth->get_user_id();
							$data['username']	= $this->tank_auth->get_username();
							$data['user']=$this->users->get_user_info($data['user_id']);
			
							
							$data['user_id']	= $this->tank_auth->get_user_id();
							$data['user']=$this->users->get_user_info($data['user_id']);
			
							$data['username']	= $this->tank_auth->get_username();
							
							$data['isadmin']=$data['user']->isadmin;
							
				
							$data['paciente']=$this->Principal_modal->get_paciente($id);
							
							
			
							$data['leafmapcss'] = '<link rel="stylesheet" href="'.base_url()."css/leaflet.css".'"/> <link rel="stylesheet" href="'.base_url()."css/leafmap.css".'"/>';
							$data['leafmapjs'] = '<script src="'.base_url()."js/leaflet.js".'"></script>';
							
							$data['jqueryui'] = true;
							
							$data['isadmin']=$data['user']->isadmin;
							//$data['scripts'] = 'admin/scripts';
							$data['pagina'] = 'admin/detalle_pacientes';
							$data['titulo'] = 'Bienvenidos(as)';
							
			
							$this->load->view($this->_plantilla, $data);
						}
					}
	


		function miPerfil(){

			if (!$this->tank_auth->is_logged_in()) {
					redirect('/auth/login');
				} else {
					
					$data['user_id']	= $this->tank_auth->get_user_id();
					$data['username']	= $this->tank_auth->get_username();
					$data['user']=$this->users->get_user_info($data['user_id']);

					$data['isadmin']=$data['user']->isadmin;

						
						
						$this->form_validation->set_rules('tnom', 'Nombre','trim|callback_escapar');
						$this->form_validation->set_rules('tapp', 'Apellido Paterno','trim|callback_escapar');
						$this->form_validation->set_rules('tapm', 'Apellido Materno','trim|callback_escapar');
						$this->form_validation->set_rules('tmail', 'Correo electr&oacute;nico','trim|valid_email|callback_escapar');
						
						

						if ($this->form_validation->run()) {

						
							$datos['nom'] = $this->input->post('tnom');
							$datos['app'] = $this->input->post('tapp');
							$datos['apm'] = $this->input->post('tapm');
							$datos['email'] = $this->input->post('tmail');
							


			                if (!empty($_FILES['tfoto']['name']))
			                {
			                    //
			                    $configb['upload_path'] = './'.RUTA_USUARIOS;
			                    $configb['allowed_types'] = 'jpg|gif|png';
			                    $configb['max_size']    = '1000'; // 3Mb
			                    $configb['max_width']  = '3000';
			                    $configb['max_height']  = '3000';

			                    // Initialize config for File 1
			                    $this->upload->initialize($configb);



			                    // Upload file 1
			                    if ($this->upload->do_upload('tfoto'))
			                    {
			                        $arch2 = $this->upload->data();

			                        // Cambiamos el tama�o de la imagen
			                        $config3['image_library'] = 'gd2';
			                        $config3['source_image'] = $this->upload->upload_path.$this->upload->file_name;

			                        $config3['maintain_ratio'] = TRUE;
			                        $config3['width'] = 200;
			                        $config3['height'] = 200;
			                        $config3['overwrite'] = TRUE; // Si el nombre del archivo existe, entonces los sobreescribe
			                        $this->image_lib->initialize($config3);

			                        if ( ! $this->image_lib->resize())
			                        {
			                            $data['error'] = array('error' => $this->image_lib->display_errors());
			                        }

			                    }
			                    else
			                    {
			                        $data['error'] = array('error' => $this->upload->display_errors());
			                    }

			                }
					                     // Si se han enviado archivos a subir y si no ha habido errores
			                if ((!empty($arch2['file_name'])) && !isset($data['error']))
			                {
			                    

			                    if (!empty($arch2['file_name'])) {
			                        $datos['foto']  = $arch2['file_name'];
			                    }



			                   
			                    // --- FIN DE IMAGENES
			                    // Guardamos el registro

			                }

			                if (!isset($data['error'])) {

			                   $this->users->actualizar($data['user_id'], $datos);
							   $data['exito'] = "Su perfil se ha actualizado con &eacute;xito";
			                }
						
						}


					
						$data['perfusr']	= $this->users->get_user_info($data['user_id']);


					
						$data['pagina'] = 'admin/usuarios/miperfil';
						
						$data['titulo'] = 'Bienvenidos(as)';
					

						$this->load->view($this->_plantilla, $data);
				}

		}

		


		function vertodos()
		{
			if (!$this->tank_auth->is_logged_in()) {
				redirect('/auth/login/');
				} else {
				$data['user_id']	= $this->tank_auth->get_user_id();
				$data['username']	= $this->tank_auth->get_username();
				$data['user']=$this->users->get_user_info($data['user_id']);

				$data['isadmin']=$data['user']->isadmin;
				if($data['isadmin']>0) {
					
					try{
						
						$crud = new grocery_CRUD();
						
						$crud->set_theme('bootstrap');
						$crud->set_table('users');
						$crud->set_primary_key('id'); // Indicar el campo Llave
						$crud->set_subject('Usuarios');
						

						$crud->set_primary_key('id','ca_cargos');
						$crud->set_relation('cargo','ca_cargos','cargo');
						
						
						 
						 
						

						
						
					
						 
						$crud->columns('username','nom', 'email', 'cargo','tel', 'foto'); 
						$crud->display_as('nom','Nombre')
						->display_as('app','Apellido Paterno')
						->display_as('apm','Apellido Materno')
						->display_as('email','Correo Electr&oacute;nico')
						->display_as('tel','Tel&eacute;fono')
						;
						
						

						$crud->fields('nom','app','apm', 'email','cargo','tel', 'foto');
						 $crud->set_field_upload('foto', RUTA_USUARIOS);
						
						$crud->add_action('Cambiar Password', '', 'auth/change_user_password','fa-key');
						
						
						
						$crud->unset_add();
						$crud->unset_bootstrap();
						$crud->unset_jquery();
						$output = $crud->render();
						
						
						
						$data['grid'] = $output;
						$data['titulo'] = 'Cargos de Usuarios';
						
						$data['anterior'] = base_url('publico');
						$data['contraer'] = true;
						$data['pagina'] = 'admin/usuarios/ca_ocupacion';
					
						
						$this->load->view($this->_plantilla, $data);
						
						}catch(Exception $e){
						show_error($e->getMessage().' --- '.$e->getTraceAsString());
					}
					
					
					}else{
					
					redirect(base_url("publico"));
				}
			}
		}






		/* ****************************************************** */


		function escapar($str)
		{
			return mysqli_real_escape_string($this->db->conn_id, $str);
		}
		
		
		function nocero($str)
		{
			if($str <> 0){
				return true;
				}else{
				$this->form_validation->set_message('nocero', 'Debe seleccionar %s ');
				return false;
			}
		}
		
		
		function porciento($str) {
			
			if($str >= 0 and $str <=100){
				return true;
				}else{
				$this->form_validation->set_message('porciento', 'El valor del campo debe estar entre 0 y 100');
				return false;
			}
			
		}
}



 ?>