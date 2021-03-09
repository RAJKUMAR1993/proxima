<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Settings extends MY_Controller {

	public function __construct(){
				
			parent::__construct();
	}

	public function index(){
		
		$data['contact'] = json_decode($this->db->get_where("tbl_homepage_sociallinks",["type"=>"contact"])->row()->links);
		$this->load->view('admin/settings',$data);	
		
	}
		
	public function updatecontact(){
		$data = [
			"mobile_number"=>$this->input->post("mobile"),
			"email"=>$this->input->post("email"),
			"details"=>$this->input->post("details"),
		];
	
		$this->db->where("id",2)->update("tbl_homepage_sociallinks",["links"=>json_encode($data)]);
		$data1=["Status"=>'Active',"Message"=>"Successfully Updated."];
		echo json_encode($data1);
		exit();
		
	}
  
}