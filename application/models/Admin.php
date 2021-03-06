<?php

defined("BASEPATH") OR exit("No direct script access allow");


class Admin extends CI_Model{
	
	
	
	public function __construct(){
		
		parent::__construct();

		
	}
	
	public function send_email($subject,$email,$msg,$from_email,$ref=""){
		
		$from = new SendGrid\Email("Proxima", $from_email);
		
		if($ref == "client"){
			$to = new SendGrid\Email("Proxima",$email[0]);
		}else{
			$to = new SendGrid\Email("Proxima",$email);
		}
			
		$content = new SendGrid\Content("text/html",$msg);
		$mail = new SendGrid\Mail($from, $subject, $to, $content);
		
		if($ref == "client"){
			foreach ($email as $k => $value) {
				if($k != 0){
					$to = new SendGrid\Email(null, $value);
					$mail->personalization[0]->addCC($to);
				}
			}
		}
		
		$sg = new \SendGrid('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');
		$response = $sg->client->mail()->send()->post($mail);
		
//		return $response;
		
	}

	public function insertoption($option_name,$option_value){
		$on=$this->db->get_where("fdm_va_options",array('option_name'=>$option_name));
		$os=$on->num_rows();
		if($os=='0'){
			$data=array("option_name"=>$option_name,
					   "option_value"=>$option_value);
			$oss=$this->db->insert("fdm_va_options",$data);
		}
		if($os='1'){
				$data=array("option_name"=>$option_name,
					   "option_value"=>$option_value);
			$oss=$this->db->set($data);
			$oss=$this->db->where("option_name",$option_name);
			$oss=$this->db->update("fdm_va_options");
		}		
	}
	public function get_option($option_name){
		$option=$this->db->get_where("tbl_options",array("option_name"=>$option_name));
		$o=$option->row();
		if($o){
		return $o->option_value;	
		}else{
			$oo='0';
		return $oo;
		}
	}
		public function generateNewsid(){
		$i='1';
		do{
			$id="NEWS".random_string("numeric",8);
			$chk=$this->db->get_where("fdm_va_news_and_community",array('id'=>$id))->num_rows();
			if($chk>0){
				$i='1';
			}else{
				$i='10';
			}
			
		}while($i<5);
		
		return $id;
	}


	public function generateOtp(){
		
		
		$i='1';
		
		do{
			
			$id=random_string("numeric",8);
			
			$chk=$this->db->get_where("fdm_va_otp",array('otp'=>$id))->num_rows();
			
			if($chk>0){
				$i='1';
				
			}else{
				$i='10';
			}
			
			
		}while($i<5);
		
		return $id;
	}

	public function get_admin($value=""){

		return $this->db->get_where("tbl_auths",array("id"=>$this->session->userdata("admin_id")))->row()->$value;


	}

	public function get_role(){
		return $this->db->get_where("fdm_va_roles")->result();
	}

	public function get_user($value=""){

		return $this->db->get_where("fdm_va_users",array("id"=>$this->session->userdata("user_id")))->row()->$value;
	}

	public function get_user_role(){
		$rr = $this->db->get_where("fdm_va_auths",array("id"=>$this->session->userdata("admin_id"),"role"=>2))->row();
        return $rr;
	}

	public function get_admin_role(){

		return $this->db->get_where("fdm_va_auths",array("id"=>$this->session->userdata("admin_id"),"role"=>1))->row();
	}
	public function get_editor_role(){

		return $this->db->get_where("fdm_va_auths",array("id"=>$this->session->userdata("admin_id"),"role"=>3))->row();
	}

	public function get_module($id){
		$umr = $this->db->get_where("fdm_va_admin_role_access",array("user_id"=>$id))->result_array();
		//print_r($umr);
		$kk = array();
		foreach ($umr as $key) {
		$kk[] =  $key["module_id"];

		}
		return $kk;

	}

	public function getUrlmodule($uid,$mid){

		$mod = $this->db->get_where("fdm_va_admin_role_access",array("user_id"=>$uid,"module_id"=>$mid))->row();
		return $mod;

	}

	public function getheaderLogo(){

		return $this->db->query("select * from fdm_va_general_logo where deleted=0 and logo_type='Header' order by id desc")->row()->logo;
	}

	public function getfooterLogo(){

		return $this->db->query("select * from fdm_va_general_logo where deleted=0 and logo_type='Footer' order by id desc")->row()->logo;
	}

	function seo_friendly_url($string){
	    $string = str_replace(array('[\', \']'), '', $string);
	    $string = preg_replace('/\[.*\]/U', '', $string);
	    $string = preg_replace('/&(amp;)?#?[a-z0-9]+;/i', '-', $string);
	    $string = htmlentities($string, ENT_COMPAT, 'utf-8');
	    $string = preg_replace('/&([a-z])(acute|uml|circ|grave|ring|cedil|slash|tilde|caron|lig|quot|rsquo);/i', '\\1', $string );
	    $string = preg_replace(array('/[^a-z0-9]/i', '/[-]+/') , '-', $string);
	    return strtolower(trim($string, '-'));
	}
	
	
	public function info($column=""){
		
		return $this->db->get_where("fdm_va_general_contact")->row()->$column;
		
	}
	
	
	public function generateCaptcha(){
		
		
		$this->load->helper("captcha");
		// Captcha Conf

	
		$config = array(
            'img_path'      => 'uploads/captcha/',
            'img_url'       => base_url().'uploads/captcha/',
			'img_width' => 160,
			'img_height' => 35,
			'word_length'   => 6,
//			'font_size' => 50,
            'font_path'     => FCPATH.'uploads/captcha/fonts/verdana.ttf',
		);
	
        $captcha = create_captcha($config);
        
        // Unset previous captcha and set new captcha word
        $this->session->unset_userdata('captchaCode');
        $this->session->set_userdata('captchaCode', $captcha['word']);
        
        // Pass captcha image to view
        $captchaImg = $captcha['image'];
	
		return($captchaImg);
		
// Captcha conf ends	
		
		
		
	}
	public function google_captcha(){
		$captcha_response = trim($this->input->post('g-recaptcha-response'));

		if($captcha_response != '')
		{
			//testing Secret Key : 6Ld1GYoaAAAAANv8sP8DhFfP40duqqfakFjyoP5e:
			//site key : 6Ld1GYoaAAAAAIi-iPb7j7EI32kPySicFoHG-SpX
			
			$keySecret = '6LdMbYsaAAAAAOKCJ1l55bjkHwk21jK15kKIEDf2';
			$check = array(
				'secret'		=>	$keySecret,
				'response'		=>	$this->input->post('g-recaptcha-response')
			);
			$startProcess = curl_init();
			curl_setopt($startProcess, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
			curl_setopt($startProcess, CURLOPT_POST, true);
			curl_setopt($startProcess, CURLOPT_POSTFIELDS, http_build_query($check));
			curl_setopt($startProcess, CURLOPT_SSL_VERIFYPEER, false);
			curl_setopt($startProcess, CURLOPT_RETURNTRANSFER, true);
			$receiveData = curl_exec($startProcess);
			$finalResponse = json_decode($receiveData, true);
			if ($status['success']) {
				//print_r('Google Recaptcha Successful');
				exit;
				}else{
				$this->session->set_flashdata('flashError', 'Sorry Google Recaptcha Unsuccessful!!');
				}
			
		}
	}



	public function moduleCheck(){
		
		$id = $this->session->userdata("admin_id");
	
		$userstatus = $this->db->get_where("fdm_va_auths",array("id"=>$id))->row();
	
		if($userstatus->status != "Active"){
		   $msg = '<div class="alert alert-danger alert-dismissable"><button type = "button" class ="close" data-dismiss = "alert" aria-hidden = "true">&times;</button>Please Login To Access Users</div>';	
			$this->session->set_flashdata("fmsg",$msg);
			redirect("login");
		}
		
		$ar = $this->db->get_where("fdm_va_roles",array("id"=>$id))->row();	
		//$arole = $ar->role_name;
		if($userstatus->role==1){

		}else{

			   $url = $this->uri->segment(1);

			   $m = $this->db->get_where("fdm_va_modules",array("module_link"=>$url))->row();

			   $ua = $this->db->get_where("fdm_va_admin_role_access",array("user_id"=>$id,"module_id"=>$m->module_id))->row();

					if($m->module_id==$ua->module_id){
					   // echo "yes";

					}else{
					   //echo "no";
					   redirect("dashboard/error_module");
					}

		}
		
	}
	
	public function replaceString(){
		
		$find = array("'","!","?","*","%","#","$","&","@","^","(",")","[","]","/","{","}","|",",");
		
		return $find;
	} 
		
	
}