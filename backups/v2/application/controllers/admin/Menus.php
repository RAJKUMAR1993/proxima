<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menus extends MY_Controller {

	public function __construct(){
				
			parent::__construct();
	}

	public function index(){
		$data["nav"] = $this->db->query("select * from tbl_footer_menu where deleted=0 order by id desc")->result();
		$this->load->view("admin/footer_settings",$data);

	}
	public function footer_insert(){
		
		$name = $this->input->post("name",true);
		$link = $this->input->post("link",true);
		$target = $this->input->post("target",true);
		$date = date("Y-m-d H:i:s");
		if($link==""){
			$this->session->set_flashdata('error', "Please Select Menu Link","error");
			//$this->alert->pnotify("error","Please Select Menu Link","error");
			redirect("sitesettings");
		}
		if($target==""){
			$this->session->set_flashdata('error', "Please Select Link Target","error");
			//$this->alert->pnotify("error","Please Select Link Target","error");
			redirect("sitesettings");
		}
		$chk = $this->db->get_where("tbl_footer_menu",array("name"=>$name,"deleted"=>0))->num_rows();
		if($chk>=1){
			$this->session->set_flashdata('error', " Menu Already Exists","error");
				//$this->alert->pnotify("error"," Menu Already Exists","error");
				redirect("sitesettings");
		}
		$lchk = $this->db->get_where("tbl_footer_menu",array("link"=>$link,"deleted"=>0))->num_rows();
		if($lchk>=1){
			$this->session->set_flashdata('error',"Link Already Exists","error");
				//$this->alert->pnotify("error","Link Already Exists","error");
				redirect("sitesettings");
		}
		$data = array(

			"name" => $name,
			"link" => $link,
			"target" => $target,
			"created_date" => $date
		);
			$n = $this->db->insert("tbl_footer_menu",$data);
			if($n){
				$this->session->set_flashdata("success"," Successfully Added","success");

					//$this->alert->pnotify("success"," Successfully Added","success");
					redirect("sitesettings");
			}else{
				$this->session->set_flashdata("error","Error Occured ","error");
					//$this->alert->pnotify("error","Error Occured ","error");
					redirect("sitesettings");
			}
	}
			public function updatefooter($id){
				
				$data["n"] = $this->db->get_where("tbl_footer_menu",array("id"=>$id))->row();
				//$data["smenu"] = $this->db->query("select * from tbl_footer_submenu where deleted=0  and menu_name=$id order by id desc")->result();
				
				$this->load->view("admin/edit_footer",$data);
			}

	public function footerstatus(){
			
		$id=$this->input->post_get("id",true);
		$status = $this->input->post("status",true);
		$data=array('status'=>$status);
		
		$this->db->set($data);
		$this->db->where("id",$id);
		$d=$this->db->update("tbl_footer_menu");
		if($d){
			if($status=="Active"){
				$this->session->set_flashdata("Success","Successfully Enabled","success");
				//echo $this->alert->pnotify("Success","Successfully Enabled","success");
			}else{
				$this->session->set_flashdata("Success","Successfully  Disabled","success");
				//echo $this->alert->pnotify("Success","Successfully  Disabled","success");	
			}
		}else{
			if($status=="Active"){
				$this->session->set_flashdata("Error","Error Occured While Enabling ","error");
				//echo $this->alert->pnotify("Error","Error Occured While Enabling ","error");
			}else{
				$this->session->set_flashdata("Error","Error Occured While Disabling ","error");
				//echo $this->alert->pnotify("Error","Error Occured While Disabling ","error");
			}	
		}
	}
	public function editfooter(){
		$id = $this->input->post("id");
		$name = $this->input->post("name",true);
		$link = $this->input->post("link",true);
		$target = $this->input->post("target",true);
		$date = date("Y-m-d H:i:s");
		$nchk = $this->db->get_where("tbl_footer_menu",array("name"=>$name,"id"=>$id))->row()->name;
		if($nchk==$name){
			$data = array("name" => $name);
			$this->db->set($data);
			$this->db->where("id",$id);
			$this->db->update("tbl_footer_menu");
		}else{
			$nchk1 = $this->db->get_where("tbl_footer_menu",array("name"=>$name,"deleted"=>0))->num_rows();	
			if($nchk1>=1){
				$this->alert->pnotify("error","Menu Name Already Exists","error");
				redirect("sitesettings/".$id);
			}else{	
			$data = array("name" => $name);

			$this->db->set($data);
			$this->db->where("id",$id);
			$this->db->update("tbl_footer_menu");
			}
		}
		
		$lchk = $this->db->get_where("tbl_footer_menu",array("link"=>$link,"id"=>$id))->row()->link;
		if($lchk==$link){
			$data = array("link" => $link);
			$this->db->set($data);
			$this->db->where("id",$id);
			$this->db->update("tbl_footer_menu");
		}else{
			$lchk1 = $this->db->get_where("tbl_footer_menu",array("link"=>$link,"deleted"=>0))->num_rows();	
			if($lchk1>=1){
				$this->alert->pnotify("error","Link Already Exists","error");
				redirect("sitesettings/".$id);					
			}else{	
			$data = array("link" => $link);

			$this->db->set($data);
			$this->db->where("id",$id);
			$this->db->update("tbl_footer_menu");
			}
		}	
		$data = array(
			"target" => $target,
			"updated_date" => $date,
		);
		$this->db->set($data);
		$this->db->where("id",$id);
		$n = $this->db->update("tbl_footer_menu");		
		if($n){
			$this->session->set_flashdata("success"," Successfully Updated","success");
				//$this->alert->pnotify("success","Navbar Menu Successfully Updated","success");
				redirect("sitesettings");
		}else{
			$this->session->set_flashdata("error","Error Occured While Updating ","error");
				//$this->alert->pnotify("error","Error Occured While Updating Navbar Menu","error");
				redirect("sitesettings");
		}
	}
	public function footerdelete($id){

		$data = array("deleted"=>1,"status"=>"Inactive");
		$this->db->set($data);
		$this->db->where("id",$id);
		$d = $this->db->update("tbl_footer_menu");
		if($d){
				$data = array("deleted"=>1,"status"=>"Inactive");
				$this->db->set($data);
				$this->db->where("menu_name",$id);
				$d = $this->db->update("tbl_footer_submenu");
				$this->session->set_flashdata("success","Navbar Menu Successfully Deleted","success");
				//$this->alert->pnotify("success","Navbar Menu Successfully Deleted","success");
				redirect("sitesettings");
		}else{
			$this->session->set_flashdata("error","Error Occured While Deleting Navbar Menu","error");
				//$this->alert->pnotify("error","Error Occured While Deleting Navbar Menu","error");
				redirect("sitesettings");
	}
		

	}



	public function footer_submenu($id){
		$data["n"] = $this->db->get_where("tbl_footer_menu",array("id"=>$id))->row();
		$data["smenu"] = $this->db->query("select * from tbl_footer_submenu where deleted=0  and menu_name=$id order by id desc")->result();
		$this->load->view('admin/footer_submenu',$data);
	}
	public function insertsubmenufooter(){
		
		//$id = $this->input->post("id");
		$mname = $this->input->post("menu_id",true);
		$smname = $this->input->post("sub_menu_name",true);
		$link = $this->input->post("sub_menu_link",true);
		$target = $this->input->post("sub_menu_target",true);
		$date = date("Y-m-d H:i:s");
	//	$chk = $this->db->get_where("fdm_va_navbar_header_submenu",array("sub_menu_link"=>$link,"deleted"=>0))->num_rows();
	//	if($chk>=1){
	//
	//			$this->alert->pnotify("error","Link Already Exists","error");
	//			redirect("menus/sub-menu/".$mname);
	//	}
		
		$data = array(
			"menu_name" => $mname,
			"sub_menu_name" => $smname,
			"sub_menu_link" => $link,
			"sub_menu_target" => $target,
			"created_date" => $date,
		);
		
		$n = $this->db->insert("tbl_footer_submenu",$data);
		if($n){
			$this->session->set_flashdata("success"," Successfully Added","success");
				//$this->alert->pnotify("success"," Successfully Added","success");
				redirect("sitesettings/footer_submenu/".$mname);
		}else{
			$this->session->set_flashdata("error","Error Occured While Adding ","error");
				//$this->alert->pnotify("error","Error Occured While Adding ","error");
				redirect("sitesettings/footer_submenu/".$mname);
		}
	}
	public function updatefootersubmenu($id){
		$data["sm"] = $this->db->get_where("tbl_footer_submenu",array("id"=>$id))->row();
		//$data["smenu"] = $this->db->query("select * from tbl_footer_submenu where deleted=0  and menu_name=$id order by id desc")->result();
	//echo "<pre>";print_r($data["sm"]);die;
		$this->load->view('admin/edit_footersubmenu',$data);
	}
	public function editfootersubmenu(){
		$id = $this->input->post("id");
		$mname = $this->input->post("menu_name",true);
		$smname = $this->input->post("sub_menu_name",true);
		$link = $this->input->post("sub_menu_link",true);
		$target = $this->input->post("sub_menu_target",true);
		$date = date("Y-m-d H:i:s");
		$data = array(
			"menu_name" => $mname,
			"sub_menu_name" => $smname,
			"sub_menu_target" => $target,
			"sub_menu_link" => $link,
			"updated_date" => $date,
		);
		$this->db->set($data);
		$this->db->where("id",$id);
		$n = $this->db->update("tbl_footer_submenu");	
		if($n){
			$this->session->set_flashdata("success","Successfully Updated","success");
				//$this->alert->pnotify("success","Navbar Sub Menu Successfully Updated","success");
				redirect("sitesettings/footer_submenu/".$mname);
		}else{
			$this->session->set_flashdata("error","Error Occured While Updating ","error");
				//$this->alert->pnotify("error","Error Occured While Updating Navbar Sub Menu","error");
				redirect("sitesettings/footer_submenu/".$mname);
		}
	}
	public function delsubfooter($id){
		//echo $id;die;
	   $data = array("deleted"=>1,"status"=>"Inactive");
	   $this->db->set($data);
	   $this->db->where("id",$id);
	   $d = $this->db->update("tbl_footer_submenu");
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
		$d=$this->db->update("tbl_footer_submenu");
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