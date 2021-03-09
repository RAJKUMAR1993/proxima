<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Settings extends MY_Controller {

	public function __construct(){
				
			parent::__construct();
	}

	public function index(){
		$data['social'] = json_decode($this->db->get_where("tbl_options",["option_name"=>"social"])->row()->option_value);
		$data['contact'] = json_decode($this->db->get_where("tbl_options",["option_name"=>"contact"])->row()->option_value);
		$data['img'] = $this->db->get_where("tbl_options",["option_name"=>"image"])->row();
		$data['copy_rights'] = $this->db->get_where("tbl_options",["option_name"=>"copyright"])->row();
		
		$this->load->view('admin/settings',$data);	
		
	}
		
	public function updatecontact(){
		$data = [
			"mobile_number"=>$this->input->post("mobile"),
			"email"=>$this->input->post("email"),
			"details"=>$this->input->post("details"),
		];
		$this->db->where("id",2)->update("tbl_options",["option_value"=>json_encode($data)]);
		$data1=["Status"=>'Active',"Message"=>"Successfully Updated."];
		echo json_encode($data1);
		exit();
		
	}
	public function updatsocial_links(){
	$data = [
		"facebook"=>$this->input->post("facebook"),
		"instagram"=>$this->input->post("instagram"),
		"linkedin"=>$this->input->post("linkedin"),
		"twitter"=>$this->input->post("twitter"),
	];

	$this->db->where("id",1)->update("tbl_options",["option_value"=>json_encode($data)]);
	$data1=["Status"=>'Active',"Message"=>"Successfully Updated."];
	echo json_encode($data1);
	exit();
	
}
	public function imageupload(){
		$image_id = $this->input->post("image_id");
		
		if($_FILES['image']['name'] != ""){
			$config['upload_path'] = 'uploads/';
			$config['allowed_types'] = '*';
			$config['file_name'] = $_FILES['image']['name'];				 

			$this->load->library('upload',$config);
			$this->upload->initialize($config);

			if($this->upload->do_upload('image')){
				$uploadData = $this->upload->data();
				$picture = $uploadData['file_name'];
					unlink($this->input->post("old_image"));
						
				}
			}else{
					$picture = $this->input->post("old_image");
		}
		
		$data = array(
			"option_value" => $picture,
			"option_name" => "image"
		);
		
		if($image_id){
			$d = $this->db->where("id",$image_id)->update(" tbl_options",["option_value"=>$data]);	
		}
		if($d){
			if($image_id){
				$this->alert->pnotify("vmsg",'<div class="alert alert-success">Updated Successfully</div>');
			}
			redirect("admin/settings");
			
		}else{
			
			$this->alert->pnotify("vmsg",'<div class="alert alert-danger">Error Occured</div>');	
			redirect("admin/settings");
			
		}
	}
	public function updatecopy_rights(){
		$copy_rights = $this->input->post("copy_rights");
		$data = array(
			"option_value" => $copy_rights,
			"option_name" => "copyright"
		);
        $this->db->where("id",6)->update("tbl_options",$data);
		//$this->db->where("id",6)->update("tbl_options",["option_value"=>$this->input->post("copy_rights"),"option_name" => "copyright",]);
		$this->alert->pnotify("vmsg",'<div class="alert alert-success">Updated Successfully</div>');
		redirect("admin/settings");
	}
  
}