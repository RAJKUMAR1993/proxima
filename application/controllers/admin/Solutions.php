<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Solutions extends MY_Controller {

	public function __construct(){
				
			parent::__construct();
	}

	public function index(){
        $data["solutions"] = $this->db->get_where("tbl_solutions",array("deleted"=> 0))->result();
        //print_r($data["publicationns"]);die;
		$this->load->view('admin/solutions/solutions',$data);	
		
	}
	
    private function clean($string) {
        $string = str_replace(" ", "-", $string); // Replaces all spaces with hyphens.  
        $string = preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.
        return preg_replace('/-+/', '-', $string); // Replaces multiple hyphens with single one.
    }
    public function add(){
		$text_area = $this->input->post("text_area",true);
		$target = $this->input->post("target",true);
		$date = date("Y-m-d H:i:s");
		$alignment = $this->input->post("alignment");
		$type = $this->input->post("type");
		$short_desc = $this->input->post("short_desc");
        $image_id = $this->input->post("image_id");
		
		if($_FILES['image']['name'] != ""){
			$config['upload_path'] = 'uploads/solutions/';
			$config['allowed_types'] = '*';
			$config['file_name'] = $_FILES['image']['name'];				 

			$this->load->library('upload',$config);
			$this->upload->initialize($config);
          
			if($this->upload->do_upload('image')){
				$uploadData = $this->upload->data();
				$picture = 'uploads/solutions/'.$uploadData['file_name'];
			}
		}else{
			$picture = "";
		}
     
		$data = array(
            "image" => $picture,
			"title"=>$text_area,
			"alignment"=> $alignment,
			"link" =>strtolower(($this->clean($text_area))),
			"target" => $target,
			"type" => $type,
			"short_desc" => $short_desc,
            "created_date"=> $date,
			
        );
        // echo "<pre/>";print_r($data );die;
		$p = $this->db->insert("tbl_solutions",$data);
			
			if($p){
				$this->session->set_flashdata("success"," Successfully Added","success");
					redirect("admin/solutions");
			}else{
				$this->session->set_flashdata("error","Error Occured ","error");
					redirect("admin/solutions");
			}
	}
    public function update($id){
				
        $data["sul"] = $this->db->get_where("tbl_solutions",array("id"=>$id))->row();
       
        $this->load->view("admin/solutions/edit_solutions",$data);
    }



    public function edit(){
        $id = $this->input->post("id");
		$text_area = $this->input->post("text_area",true);
		$target = $this->input->post("target",true);
		$date = date("Y-m-d H:i:s");
		$alignment = $this->input->post("alignment");
		$type = $this->input->post("type");
		$short_desc = $this->input->post("short_desc");
        $image_id = $this->input->post("image_id");
		
		if($_FILES['image']['name'] != ""){
			$config['upload_path'] = 'uploads/solutions/';
			$config['allowed_types'] = '*';
			$config['file_name'] = $_FILES['image']['name'];				 

			$this->load->library('upload',$config);
			$this->upload->initialize($config);
          
			if($this->upload->do_upload('image')){
				$uploadData = $this->upload->data();
				$picture = 'uploads/solutions/'.$uploadData['file_name'];
					unlink($this->input->post("old_image"));
						
			}
		}else{
				
					$picture = $this->input->post("old_image");
		}
    
		$data = array(
				"image" => $picture,
				"title"=>$text_area,
				"alignment"=> $alignment,
				"link" =>strtolower(($this->clean($text_area))),
				"target" => $target,
				"type" => $type,
				"short_desc" => $short_desc,
                "updated_date"=> $date,
        );
        //echo "<pre/>";print_r($data);die;
		$this->db->where('id', $id);
		$s = 	$this->db->update('tbl_solutions', $data);
		if($s){
			$this->session->set_flashdata("success"," Successfully Updated","success");
				//$this->alert->pnotify("success","Navbar Menu Successfully Updated","success");
				redirect("admin/solutions");
		}else{
			$this->session->set_flashdata("error","Error Occured While Updating ","error");
				//$this->alert->pnotify("error","Error Occured While Updating Navbar Menu","error");
				redirect("admin/solutions");
		}
    }
    public function status(){
			
		$id=$this->input->post_get("id",true);
		$status = $this->input->post("status",true);
		$data=array('status'=>$status);
		
		$this->db->set($data);
		$this->db->where("id",$id);
		$d=$this->db->update("tbl_solutions");
		if($d){
			if($status=="Active"){
				$this->session->set_flashdata("Success","Successfully Enabled","success");
			}else{
				$this->session->set_flashdata("Success","Successfully  Disabled","success");
			}
		}else{
			if($status=="Anactive"){
				$this->session->set_flashdata("Error","Error Occured While Enabling ","error");
			}else{
				$this->session->set_flashdata("Error","Error Occured While Disabling ","error");
				
			}	
		}
	}

    public function delete($id){

		$data = array("deleted"=>1,"status"=>"Inactive");
		$this->db->set($data);
		$this->db->where("id",$id);
		$d = $this->db->update("tbl_solutions");
		if($d){
				$data = array("deleted"=>1,"status"=>"Inactive");
				$this->db->set($data);
				$this->db->where("id",$id);
				$d = $this->db->update("tbl_solutions");
				$this->session->set_flashdata("success","Successfully Deleted","success");
				//$this->alert->pnotify("success","Navbar Menu Successfully Deleted","success");
				redirect("admin/solutions");
		}else{
			$this->session->set_flashdata("error","Error Occured While Deleting","error");
				//$this->alert->pnotify("error","Error Occured While Deleting Navbar Menu","error");
				redirect("admin/solutions");
	}

	}
}
