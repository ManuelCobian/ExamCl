<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
	
	class Principal_modal extends CI_Model  {
		
		var $db = null;
		
		function __construct()
		{
			parent::__construct();
			$this->db = $this->load->database("default", TRUE);
		}

		function get_pacientes(){
		
			if($query=$this->db->get('ca_pacientes')){
				if ($query->num_rows()>0) {
					# code...
					$pacientes=array();
					$consulta=$query->result();
					

					return $consulta;
				}
			}
		}


		function get_paciente($id){
			$this->db->where("ca_pacientes.id",$id);
			if($query=$this->db->get('ca_pacientes')){
				if ($query->num_rows()>0) {
					# code...
					
					$consulta=$query->row();
					

					return $consulta;
				}
			}
		}

		function add_paciente($datos=-1){
			$this->db->where('ca_pacientes.cns',$datos['cpf']);
			$this->db->where('ca_pacientes.cpf',$datos['cns']);
			if ($query=$this->db->get('ca_pacientes')) {
				# code...
				if ($query->num_rows()>0) {
					# code...

				}else{
					if ($this->db->insert('ca_pacientes',$datos)) {
						$idi = $this->db->insert_id();
						return $idi;
						# code...
					}
					
					
				}
			}
		}


		function edit_paciente($datos=-1){
			$this->db->where('ca_pacientes.id',$datos['id']);

			$this->db->update('ca_pacientes',$datos);	
			
			
		}

		
		function eliminar_paciente($id){
			$this->db->where('ca_pacientes.id',$id);

			$this->db->delete('ca_pacientes');	
			
			
		}


	}



 ?>