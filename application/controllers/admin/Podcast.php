<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Podcast extends MY_Controller {

	public function __construct(){
				
			parent::__construct();
	}

	public function index(){
        $data["slider"] = $this->db->get_where("tbl_podcast_slider",array("deleted"=> 0))->result();
		$this->load->view('admin/podcast/podcast_sliders', $data);	
		
	}
    public function add(){
        $slider_id = $this->input->post("slider_id");
        $name = $this->input->post("name");
		$deatils = $this->input->post("deatils");
        $short_desc = $this->input->post("short_desc");
        $date = date("Y-m-d H:i:s");
		if($_FILES['slider']['name'] != ""){
			$config['upload_path'] = 'uploads/podcast/';
			$config['allowed_types'] = '*';
			$config['file_name'] = $_FILES['slider']['name'];				 

			$this->load->library('upload',$config);
			$this->upload->initialize($config);

			if($this->upload->do_upload('slider')){
				$uploadData = $this->upload->data();
				$picture = 'uploads/podcast/'.$uploadData['file_name'];
					unlink($this->input->post("old_slider"));
				}
			}else{
					$picture = $this->input->post("old_slider");
			
		}
        $data = array(
            "image" => $picture,
			"name"=>$name,
			"deatils"=> $deatils,
			"short_desc" => $short_desc,
            "created_date"=> $date,
			
        );
        if($slider_id){
			$d = $this->db->where("id",$slider_id)->update("tbl_podcast_slider",$data);	
		}else{
			$d = $this->db->insert("tbl_podcast_slider",$data);
		}
        if($d){
			if($slider_id){
				$this->alert->pnotify("smsg",'Updated Successfully');
			}else{
				$this->alert->pnotify("smsg",'Added Successfully');	
			}
			redirect("admin/podcast");
			
		}else{
			
			$this->alert->pnotify("emsg",'Error Occured');	
			redirect("admin/podcast");
			
		}
    }
	public function edit($id){
				
        $data["slider"] = $this->db->get_where("tbl_podcast_slider",array("id"=>$id))->row();
       
        $this->load->view("admin/podcast/edit_slider",$data);
    }
	public function update(){
		$id = $this->input->post("id");
		$slider_id = $this->input->post("slider_id");
        $name = $this->input->post("name");
		$deatils = $this->input->post("deatils");
        $short_desc = $this->input->post("short_desc");
        $date = date("Y-m-d H:i:s");
		if($_FILES['slider']['name'] != ""){
			$config['upload_path'] = 'uploads/podcast/';
			$config['allowed_types'] = '*';
			$config['file_name'] = $_FILES['slider']['name'];				 

			$this->load->library('upload',$config);
			$this->upload->initialize($config);

			if($this->upload->do_upload('slider')){
				$uploadData = $this->upload->data();
				$picture = 'uploads/podcast/'.$uploadData['file_name'];
				
					unlink($this->input->post("old_slider"));
						
				}
			}else{
					$picture = $this->input->post("old_slider");
	
		}

		$data = array(
            "image" => $picture,
			"name"=>$name,
			"deatils"=> $deatils,
			"short_desc" => $short_desc,
            "updated_date"=> $date,
			
        );
		
		 $this->db->where('id', $id);
		 $s = 	$this->db->update('tbl_podcast_slider', $data);
		 if($s){
			 $this->alert->pnotify("smsg"," Successfully Updated","smsg");
			 redirect("admin/podcast");
		 }else{
			 $this->alert->pnotify("emsg","Error Occured While Updating ","emsg");
			 redirect("admin/podcast");
		 }

	}



    public function status(){
		
		$id=$this->input->post_get("id",true);
		$status = $this->input->post("status",true);
		$data=array('status'=>$status);
		$this->db->set($data);
		$this->db->where("id",$id);
		$d=$this->db->update("tbl_podcast_slider");
		if($d){
			if($status=="Active"){
				//$this->alert->pnotify("smsg",'Successfully  Enabled');
				echo $this->alert->pnotify("Success","Successfully Navbar Sub Menu Enabled","success");
			}else{
				//$this->alert->pnotify("smsg",'Successfully  Disabled');
				echo $this->alert->pnotify("Success","Successfully Navbar Sub Menu Disabled","success");	
			}

		}else{
			if($status=="Active"){

				//$this->alert->pnotify("emsg",'Error Occured While Enabling');
				echo $this->alert->pnotify("Error","Error Occured While Enabling Navbar Sub Menu","error");
			}else{
				//$this->alert->pnotify("emsg",'Error Occured While Disabling');
				echo $this->alert->pnotify("Error","Error Occured While Disabling Navbar Sub Menu","error");
			}	
		}
	}
    public function del_slider($id){
		
		$d = $this->db->delete("tbl_podcast_slider",["id"=>$id]);
		
		if($d){
			
			unlink($this->input->post("image"));
			$this->alert->pnotify("smsg",'Deleted Successfully');	
            redirect("admin/podcast");
			
		}else{
			
			$this->alert->pnotify("emsg",'Error Occured');	
			redirect("admin/podcast");
			
		}
		
	}
}