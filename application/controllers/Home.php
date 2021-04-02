<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct(){
	   parent::__construct();
	}

	/*public function index(){
		$menus = $this->db->get_where("tbl_menu",["status"=>"Active", "menu_type" => "header"])->result(); 
		$data["publications"] = $this->db->get_where("tb_publications",array("status"=> "active","deleted"=> 0))->result();
		$data["solutions"] = $this->db->get_where("tbl_solutions",array("deleted"=> 0))->result();
		$data["sol_right"] = $this->db->get_where("tbl_solutions",array("alignment"=> "right"))->result();
		$this->load->view("front/home",$data);

	}*/
	
	public function index($route=""){
	
		if($route == ""){
			$route = "home";
		}
		$data["page"] = $this->db->get_where("tbl_pages",array("route"=>$route))->row();
		
		if($data["page"]){
			$this->load->view("front/includes/header");
			
			if($route == "home"){
			    $this->load->view("front/includes/home_page_banner");	
			}
			$this->load->view('admin/pages/viewPage',$data);
			$this->load->view("front/includes/footer");	
		}else{
			redirect();
		}
	}

}