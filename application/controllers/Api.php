<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * principal
 */

class Api extends CI_Controller
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

    public function get_pacientes()
    {

        if (!$this->tank_auth->is_logged_in()) {
            redirect('/auth/login');
        } else {
            $datos=array();
            $pacientes=$this->Principal_modal->get_pacientes();
            if(isset($pacientes) and is_array($pacientes) and count($pacientes)>0){
                foreach ($pacientes as $pa) {
                    $datos[]=$pa;
                }
                echo json_encode($datos);
            }
            
        }
       
    }


    public function eliminar_pacientes($id)
    {

        if (!$this->tank_auth->is_logged_in()) {
            redirect('/auth/login');
        } else {
           $this->Principal_modal->eliminar_paciente($id);
            
        }
       
    }

    public function agregar_pacientes()
    {

        if (!$this->tank_auth->is_logged_in()) {
            redirect('/auth/login');
        } else {

            $datos['nombre'] = $this->input->post('nombr');
            $datos['ap_materno'] = $this->input->post('nom_mat');
            $datos['fecha_nacimiento'] = $this->input->post('date');
            $datos['cpf'] = $this->input->post('cpf');
            $datos['cns'] = $this->input->post('cns');
            $datos['direccion'] = $this->input->post('dom');

            if (!empty($_FILES['tfoto']['name'])) {
                $configb['upload_path'] = './' . RUTA_PACIENTES;
                $configb['allowed_types'] = 'jpg|gif|png';
                $configb['max_size']    = '1000'; // 3Mb
                $configb['max_width']  = '3000';
                $configb['max_height']  = '3000';
                // Initialize config for File 1
                $this->upload->initialize($configb);

                if ($this->upload->do_upload('tfoto')) {

                    $file_data = $this->upload->data();
                    $file_path = $file_data['file_name'];
                    $datos['foto'] = $file_path;
                } else {
                    
                    echo "error";
                    die();
                }
            }

            if ($this->Principal_modal->add_paciente($datos)) {
                echo "success";
            } else {
                echo "error";
            }
        }
    }


    public function editar_pacientes()
    {

        if (!$this->tank_auth->is_logged_in()) {
            redirect('/auth/login');
        } else {
            $datos['id'] = $this->input->post('id');
            $datos['nombre'] = $this->input->post('nombr');
            $datos['ap_materno'] = $this->input->post('nom_mat');
            $datos['fecha_nacimiento'] = $this->input->post('date');
            $datos['cpf'] = $this->input->post('cpf');
            $datos['cns'] = $this->input->post('cns');
            $datos['direccion'] = $this->input->post('dom');
           

            if (!empty($_FILES['tfoto']['name'])) {
                $configb['upload_path'] = './' . RUTA_PACIENTES;
                $configb['allowed_types'] = 'jpg|gif|png';
                $configb['max_size']    = '1000'; // 3Mb
                $configb['max_width']  = '3000';
                $configb['max_height']  = '3000';
                // Initialize config for File 1
                $this->upload->initialize($configb);

                if ($this->upload->do_upload('tfoto')) {

                    $file_data = $this->upload->data();
                    $file_path = $file_data['file_name'];
                    $datos['foto'] = $file_path;
                } else {
                    
                    echo "error2";
                    die();
                }
            }

            $this->Principal_modal->edit_paciente($datos);
                echo "success";
            
        }
    }
}
