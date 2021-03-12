<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menus extends MY_Controller {

	public function __construct(){
				
			parent::__construct();
	}

	public function index(){
		$data["header"] = $this->db->get_where("tbl_menu")->result();
		$this->load->view("admin/menus/footer_settings",$data);

	}
	public function footer_insert(){
		$name = $this->input->post("name",true);
		$link = $this->input->post("link",true);
		$target = $this->input->post("target",true);
		$date = date("Y-m-d H:i:s");
		$menu_type = $this->input->post("menu_type");
		
		if($link==""){
			$this->session->set_flashdata('error', "Please Select Menu Link","error");
			redirect("admin/menus");
		}
		if($target==""){
			$this->session->set_flashdata('error', "Please Select Link Target","error");
			redirect("admin/menus");
		}
		$chk = $this->db->get_where("tbl_menu",array("name"=>$name,"deleted"=>0))->num_rows();
		if($chk>=1){
			$this->session->set_flashdata('error', " Menu Already Exists","error");
				redirect("admin/menus");
		}
		$lchk = $this->db->get_where("tbl_menu",array("link"=>$link,"deleted"=>0))->num_rows();
		if($lchk>=1){
			$this->session->set_flashdata('error',"Link Already Exists","error");
				redirect("admin/menus");
		}


		$hstatus = (in_array("Header",$menu_type)) ? "Active" :"Inactive";
		$fstatus = (in_array("Footer",$menu_type)) ? "Active" :"Inactive";
		$data = array(

			"name" => $name,
			"link" => $link,
			"target" => $target,
			"menu_type" => implode(',', $menu_type),
			"header" => $hstatus,
			"footer" => $fstatus,
			"created_date" => $date
		);
			$n = $this->db->insert("tbl_menu",$data);
			
			if($n){
				$this->session->set_flashdata("success"," Successfully Added","success");
					redirect("admin/menus");
			}else{
				$this->session->set_flashdata("error","Error Occured ","error");
					redirect("admin/menus");
			}
	    }
		
	public function footerstatus(){
			
		$id=$this->input->post_get("id",true);
		$status = $this->input->post("status",true);
		$data=array('status'=>$status);
		
		$this->db->set($data);
		$this->db->where("id",$id);
		$d=$this->db->update("tbl_menu");
		if($d){
			if($status=="Active"){
				$this->session->set_flashdata("Success","Successfully Enabled","success");
			}else{
				$this->session->set_flashdata("Success","Successfully  Disabled","success");
			}
		}else{
			if($status=="Active"){
				$this->session->set_flashdata("Error","Error Occured While Enabling ","error");
			}else{
				$this->session->set_flashdata("Error","Error Occured While Disabling ","error");
				
			}	
		}
	}
	
	public function updatefooter($id){
				
		$data["n"] = $this->db->get_where("tbl_menu",array("id"=>$id))->row();
		$this->load->view("admin/menus/edit_footer",$data);
	}
	public function editfooter(){
		
		$id = $this->input->post("id");
		$name = $this->input->post("name",true);
		$link = $this->input->post("link",true);
		$target = $this->input->post("target",true);
		$menu_type = $this->input->post("menu_type");
		$date = date("Y-m-d H:i:s");
		
		$hstatus = (in_array("Header",$menu_type)) ? "Active" :"Inactive";
		$fstatus = (in_array("Footer",$menu_type)) ? "Active" :"Inactive";
		$data = array(
			"target" => $target,
			"name" => $name,
			"menu_type" => implode(',', $menu_type),
			"header" => $hstatus,
			"footer" => $fstatus,
			"updated_date" => $date,
			"link"  => $link ,
		);
		//print_R($data);die;
		$this->db->set($data);
		$this->db->where("id",$id);
		$n = $this->db->update("tbl_menu");		
		if($n){
			$this->session->set_flashdata("success"," Successfully Updated","success");
				//$this->alert->pnotify("success","Navbar Menu Successfully Updated","success");
				redirect("admin/menus");
		}else{
			$this->session->set_flashdata("error","Error Occured While Updating ","error");
				//$this->alert->pnotify("error","Error Occured While Updating Navbar Menu","error");
				redirect("admin/menus");
		}
	}
	public function footerdelete($id){

		$data = array("deleted"=>1,"status"=>"Inactive");
		$this->db->set($data);
		$this->db->where("id",$id);
		$d = $this->db->update("tbl_menu");
		if($d){
				$data = array("deleted"=>1,"status"=>"Inactive");
				$this->db->set($data);
				$this->db->where("menu_name",$id);
				$d = $this->db->update("tbl_submenu");
				$this->session->set_flashdata("success","Navbar Menu Successfully Deleted","success");
				//$this->alert->pnotify("success","Navbar Menu Successfully Deleted","success");
				redirect("admin/menus");
		}else{
			$this->session->set_flashdata("error","Error Occured While Deleting Navbar Menu","error");
				//$this->alert->pnotify("error","Error Occured While Deleting Navbar Menu","error");
				redirect("admin/menus");
	}
		

	}



	public function footer_submenu($id){
		$data["n"] = $this->db->get_where("tbl_menu",array("id"=>$id))->row();
		$data["smenu"] = $this->db->query("select * from tbl_submenu where deleted=0  and menu_name=$id order by id desc")->result();
		// /print_r($data["smenu"]);die;
		$this->load->view('admin/menus/footer_submenu',$data);
	}
	public function insertsubmenufooter(){
		
		//$id = $this->input->post("id");
		$mname = $this->input->post("menu_id",true);
		$smname = $this->input->post("sub_menu_name",true);
		$link = $this->input->post("sub_menu_link",true);
		$target = $this->input->post("sub_menu_target",true);
		$date = date("Y-m-d H:i:s");
		$menu_type = $this->input->post("menu_type");
	//	$chk = $this->db->get_where("fdm_va_navbar_header_submenu",array("sub_menu_link"=>$link,"deleted"=>0))->num_rows();
	//	if($chk>=1){
	//
	//			$this->alert->pnotify("error","Link Already Exists","error");
	//			redirect("menus/sub-menu/".$mname);
	//	}
	$hstatus = (in_array("Header",$menu_type)) ? "Active" :"Inactive";
	$fstatus = (in_array("Footer",$menu_type)) ? "Active" :"Inactive";
		$data = array(
			"menu_name" => $mname,
			"sub_menu_name" => $smname,
			"sub_menu_link" => $link,
			"sub_menu_target" => $target,
			"menu_type" => implode(',', $menu_type),
			"header" => $hstatus,
			"footer" => $fstatus,
			"created_date" => $date,
		);
		
		$n = $this->db->insert("tbl_submenu",$data);
		if($n){
			$this->session->set_flashdata("success"," Successfully Added","success");
				//$this->alert->pnotify("success"," Successfully Added","success");
				redirect("admin/menus/footer_submenu/".$mname);
		}else{
			$this->session->set_flashdata("error","Error Occured While Adding ","error");
				//$this->alert->pnotify("error","Error Occured While Adding ","error");
				redirect("admin/menus/footer_submenu/".$mname);
		}
	}
	public function updatefootersubmenu($id){
		$data["sm"] = $this->db->get_where("tbl_submenu",array("id"=>$id))->row();
		//$data["smenu"] = $this->db->query("select * from tbl_submenu where deleted=0  and menu_name=$id order by id desc")->result();
	//echo "<pre>";print_r($data["sm"]);die;
		$this->load->view('admin/menus/edit_footersubmenu',$data);
	}
	public function editfootersubmenu(){
		$id = $this->input->post("id");
		$mname = $this->input->post("menu_name",true);
		$smname = $this->input->post("sub_menu_name",true);
		$link = $this->input->post("sub_menu_link",true);
		$target = $this->input->post("sub_menu_target",true);
		$menu_type = $this->input->post("menu_type");
		$date = date("Y-m-d H:i:s");

		$hstatus = (in_array("Header",$menu_type)) ? "Active" :"Inactive";
		$fstatus = (in_array("Footer",$menu_type)) ? "Active" :"Inactive";
		$data = array(
			"menu_name" => $mname,
			"sub_menu_name" => $smname,
			"sub_menu_target" => $target,
			"sub_menu_link" => $link,
			"menu_type" => implode(',', $menu_type),
			"header" => $hstatus,
			"footer" => $fstatus,
			"updated_date" => $date,
		);
		// /print_r($data);die;
		$this->db->set($data);
		$this->db->where("id",$id);
		$n = $this->db->update("tbl_submenu");	
		if($n){
			$this->session->set_flashdata("success","Successfully Updated","success");
				//$this->alert->pnotify("success","Navbar Sub Menu Successfully Updated","success");
				redirect("admin/menus/footer_submenu/".$mname);
		}else{
			$this->session->set_flashdata("error","Error Occured While Updating ","error");
				//$this->alert->pnotify("error","Error Occured While Updating Navbar Sub Menu","error");
				redirect("admin/menus/footer_submenu/".$mname);
		}
	}
	public function delsubfooter($id){
	
	   $data = array("deleted"=>1,"status"=>"Inactive");
	   $this->db->set($data);
	   $this->db->where("id",$id);
	   $d = $this->db->update("tbl_submenu");
	   if($d){
		   $this->session->set_flashdata("success"," Successfully Deleted","success");
			   //$this->alert->pnotify("success"," Successfully Deleted","success");
			   redirect("menus/edit-sub-menu/".$id);
	   }else{
		   $this->session->set_flashdata("error","Error Occured While Deleting ","error");
			   //$this->alert->pnotify("error","Error Occured While Deleting ","error");
			   redirect("menus/edit-sub-menu/".$id);
	   }
    }
	public function footerSubmenustatus(){
		$id=$this->input->post_get("id",true);
		$status = $this->input->post("status",true);
		$data=array('status'=>$status);
		$this->db->set($data);
		$this->db->where("id",$id);
		$d=$this->db->update("tbl_submenu");
		if($d){
			if($status=="Active"){
				$this->alert->pnotify("Success","Successfully  Enabled","success");
				//echo $this->alert->pnotify("Success","Successfully Navbar Sub Menu Enabled","success");
			}else{
				$this->alert->pnotify("Success","Successfully  Disabled","success");
				//$this->session->set_flashdata("Success","Successfully  Disabled","success");
				//echo $this->alert->pnotify("Success","Successfully Navbar Sub Menu Disabled","success");	
			}

		}else{
			if($status=="Active"){

				$this->session->set_flashdata("Error","Error Occured While Enabling ","error");
				//echo $this->alert->pnotify("Error","Error Occured While Enabling Navbar Sub Menu","error");
			}else{
				$this->session->set_flashdata("Error","Error Occured While Disabling ","error");
				//echo $this->alert->pnotify("Error","Error Occured While Disabling Navbar Sub Menu","error");
			}	
		} 
		
	}	
  
}