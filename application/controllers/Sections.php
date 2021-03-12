<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sections extends CI_Controller {

	public function __construct(){
				
			parent::__construct();
	}

	public function index(){
		
		$solh = $this->db->get_where("tbl_solutions",array("alignment"=> "left","deleted"=> 0,"type"=>"Heading"))->row(); 
		$html= '';
		$html.= '<div class="container">
		<div class="row">
		<div class="col-md-5 offset-1">
			<h2>'.$solh->title.'</h2>
			<h3>'.nl2br($solh->short_desc).'</h3>';
		$sol = $this->db->get_where("tbl_solutions",array("alignment"=> "left","deleted"=> 0,"type !="=>"Heading"))->result(); 
		
		foreach($sol as $s){    
			
				if($s->type == 'Text'){
					$html.= ' <div class="blue-box"> <span><a href="#"><img src="assets/front/images/arrow.png"/></a></span>
							<h2>'.$s->title.'</h2>
							<p>'.$s->short_desc.' </p>
							</div>';
				}else{
					$html.= ' <div class="img-box">';
					$html.= ' <img src="'.$s->image.'" class="img-fluid" />';
					$html.= '  <div class="text_details"><span><a href="#"><img src="assets/front/images/arrow.png"/></a></span>
						<div class="clearfix"></div>
						<h4> '.$s->title.'</h4>
						</div>
					</div>';
				} 
			}
			$html.= '  </div>
							<div class="col-md-5 offset-1">';
						$sol_right = $this->db->get_where("tbl_solutions",array("alignment"=> "right","deleted"=> 0))->result(); 
								foreach($sol_right as $sol){
			$html.= ' <div class="img-box"> 
								<img src="'.$sol->image.'" class="img-fluid">
								<div class="text_details"><span><a href="#"><img src="assets/front/images/arrow.png"/></a></span>
									<div class="clearfix"></div>
									<h4> '.$sol->title.' </h4>
								</div>
								</div><br><br><br>';
			} 
			$html.= ' <div class="img"> <a href="solutions"> More Solutions <i class="fa fa-arrow-circle-right" aria-hidden="true"></i> </a> </div></div>
			
		</div>
	</div>';

		echo json_encode(["solution"=>$html]);

	}
	
	public function publications(){
		
		$publications = $this->db->order_by("id","desc")->get_where("tbl_blog",["status"=>"Active","deleted"=>0],3)->result();
		
		$html = '<div class="container">
					
					<div class="row">';
			foreach($publications as $p){

				$html .= '<div class="col-lg-4 col-md-12 jasgrid">
							<div class="box-item">
							  <div class="box-post"> 
								<h3 class="post-title"> <a href="inner-blog?blog='.$p->blog_link.'"> '.substr($p->title,0,30).'... </a> </h3>
								<span class="meta"> <span><i class="glyphicon glyphicon-time"></i> '.date("M d, Y",strtotime($p->created_date)).'</span> </span> </div>
							  <img src="'.$p->image.'" alt="" class="img-fluid"> </div>
						  </div>';

			}
		
		$html .= '</div>
				  </div>';
		
		echo json_encode(["publications"=>$html]);
		
	}

	public function about_team(){
        $html= '';
            $html.='<div class="container"><div class="row  text-center">';
                    $team = $this->db->get_where("tbl_team",array("status"=> "active","deleted"=> 0))->result(); 
                    foreach($team as $key => $tm){  
            $html.='
            <div class="col-lg-3 col-md-6 col-12">';
          
           
            $html.='<div class="tbox">';
           
                $html.='<div class="soc">
                <ul>
                  <li><a href="https://www.linkedin.com/in/anil-v-46702211/" target="_blank" ><img src="assets/front/images/linkedin.png"  /></a></li>
                  <li><a href="#costumModal'.$key.'" data-toggle="modal"><img src="assets/front/images/bio.png"  /></a></li>
                </ul>
              </div>
              <img src="'.$tm->image.'"  class="img-fluid"/>
              <p>'.$tm->name.'</p>
              <small>'.$tm->designation.'</small>';
          
           $html.='</div>';
         $html.='<div id="costumModal'.$key.'" class="modal " data-easein="bounce" role="dialog" aria-labelledby="costumModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-lg">
           <div class="modal-content">
             <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> × </button>
             </div>
             <div class="modal-body">
               <div class="row">
                 <div class="col-lg-3 col-12 text-center"> <img src="'.$tm->image.'"  class="img-fluid"/><br/>
                   
                   
                 </div>
                 <div class="col-lg-9 col-12">
                   <div class="team-border">
                     <div id="dc-team-quote">'.$tm->short_desc.'</div>
                     <div class="member-name">'.$tm->name.'</div>
                     <div class="member-job">'.$tm->designation.'</div>
                   </div>
                   <p>'.$tm->long_desc.'</p>
                 </div>
               </div>
             </div>
           </div>
         </div>
       </div></div>';
        }
         $html.=' </div></div></div>';

      echo json_encode(["team"=>$html]);
    }

	public function aboutStory(){
		$story = $this->db->get_where("tbl_stories",array("deleted"=> 0))->result();

		$i = 1;
        $html='';
        $html.='<div class="container">
			 <ol class="ps-timeline">';
        foreach(array_chunk($story,2) as $sty){
	

			if($sty[0]->year == 1997){
				$html.='<li>
							<div class="img-handler-top">
							<img src="'.$sty[0]->image.'" />
							</div>
							<div class="ps-bot">
								<p>'.$sty[0]->text.'</p>
							</div>
							<span class="ps-sp-top">0'.$i++.'</span>
						</li>';
				if($sty[1]->image){		
					$html.='<li>
							<div class="img-handler-bot">
							<img src="'.$sty[1]->image.'" />
							</div>
							<div class="ps-top">
							<p>'.$sty[1]->text.'</p>
							</div>
							<span class="ps-sp-bot">0'.$i++.'</span>
						</li>';
				}
			}else{
				$html.='<li>
							<div class="img-handler-top">
								<img src="'.$sty[0]->image.'" />
							</div>
							<div class="ps-bot">
								<p>'.$sty[0]->text.'</p>
							</div>
							<span class="ps-sp-top">0'.$i++.'</span>
						</li>';

					if($sty[1]->image){	
						$html.='<li>
							<div class="img-handler-bot">
								<img src="'.$sty[1]->image.'" />
							</div>
							<div class="ps-top">
								<p>'.$sty[1]->text.'</p>
							</div>
							<span class="ps-sp-bot">0'.$i++.'</span>
					    </li>';
					}
        }}
				$html.= '</ol>';    
				$html.='</div>';      
        echo json_encode(["story"=>$html]);
	}




	//blogs//
	public function blogs(){
		$category = $this->input->get("category");
		if($category){
			$this->db->where("category",str_replace("-"," ",$category));
		}
		$blog = $this->db->get_where("tbl_blog",array("status"=>"Active","deleted"=> 0))->result(); 
		$html='';
		$html.=' <div class="container">
				<div class="row">';
				foreach($blog as $b){

		$html.='<div class="col-md-6 col-lg-4 col-12  blog-padding-right">
						<div class="single-blog two-column">
							<div class="post-thumb">
								<a href="inner-blog?blog='.$b->blog_link.'"><img src="'.$b->image.'" class="img-fluid" alt=""></a>
								
							</div>
							<div class="post-content overflow">
								<ul class="entry-meta">
									<li><i class="fa fa-calendar"></i> '.date('M d,Y H:i A',strtotime($b->created_date)).'</li>
									<li class="item-author"> <i class="fa fa-user"></i> By '.$b->posted_by.'</li>
								</ul>
								<h2 class="post-title bold">
									<a href="inner-blog?blog='.$b->blog_link.'">'.substr($b->title,0,60).'...</a>
								</h2>
								<a href="#" class="read-more">View More</a>
							</div>
						</div>
				</div>';			
		}
			$html.='</div></div>';
		echo json_encode(["blogs"=>$html]);

	}




	//inner blogs////
	public function innerblog(){

		$actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

		$blog = $this->input->get("blog"); 
		if($blog){
			$this->db->where("blog_link",$blog);
		}
		$inner = $this->db->where("status","Active")->get("tbl_blog")->row(); 
			$link = str_replace(" ","-",$inner->category);
		$html='';

		$html.='<div class="post-thumb"><img src="'.$inner->blogs_inner_image.'" class="img-fluid"  alt=""></div>
	  <ul class="entry-meta">
		<li><i class="fa fa-calendar"></i>'.date('Y-m-d H:i:s',strtotime($inner->created_date)).'</li>
		<li class="item-author"> <i class="fa fa-user"></i> By '.$inner->posted_by.'</li>
		<li class="item-category"><i class="fa fa-list"></i><a href="publications?category='.$link.'" rel="tag">'.$inner->category.'</a></li>
	  </ul>
	  <div class="post-content overflow">
		<h2 class="post-title bold">'.$inner->title.'</h2>
		'.$inner->long_desc.'
	
		<br/>
		<br/>
		<!-- Share Widget Starts Here -->
		<div class="ssbats-social-share"> <span class="ssbats-social-share-label">Share on:</span>
		  <div class="ssbats-social-share-buttons"> 
		  <a href="https://www.facebook.com/sharer/sharer.php?u='.$actual_link.'" class="ssbats-share-facebook ssbats-share-popup" target="_blank"><span>facebook</span></a>
		   <a href="https://www.twitter.com/intent/tweet?url='.$actual_link.'" class="ssbats-share-twitter ssbats-share-popup" target="_blank"><span>twitter</span></a>
		    <a href="https://www.linkedin.com/shareArticle?mini=true&url='.$actual_link.'" class="ssbats-share-linkedin ssbats-share-popup" target="_blank"><span>linkedin</span></a> 
			<a href="https://www.pinterest.com/pin/create/button/" data-pin-do="buttonBookmark" data-pin-custom="true" class="ssbats-share-pinterest" target="_blank"><span>pinterest</span></a>
			 <a href="https://tumblr.com/widgets/share/tool?canonicalUrl='.$actual_link.'" class="ssbats-share-tumblr ssbats-share-popup" target="_blank"><span>tumblr</span></a> 
			 <a href="https://www.reddit.com/submit?url='.$actual_link.'" class="ssbats-share-reddit ssbats-share-popup" target="_blank"><span>reddit</span></a>
		</div>
		</div>
		<!--/Response-area--> 
	  </div>';

		echo json_encode(["innerblog"=>$html]);

	}



		//new Post//
	public function newpost(){
		$post = $this->db->select('*')->from('tbl_blog')->where("status","Active")->order_by('id', 'desc')->limit(3)->get();
		$html= '';
		$html.='<h3>Recent Posts</h3>';
		foreach($post->result() as $p) {
		$html.='<div class="media">
		      <a href="#" class="pull-left"><img src="'.$p->image.'" alt="" width="70px;" height="70px;"></a>
					
					<div class="media-body">
						<h4><a href="inner-blog">'.substr($p->title,0,32).'...</a></h4>
						<p>posted on  '.date('d F Y', strtotime($p->created_date)).'</p>
					</div>';
					
		$html.='</div></div>';
			  }
		$html.= '';
	
			echo json_encode(["newpost"=>$html]);
	}





	public function cartgory(){
		$category = $this->db->query("select count(id) as total,category from tbl_blog group by category")->result(); 
		$html='';
		$html.= ' <h3>Categories
		</h3>
		<ul class="nav navbar-stacked">';
		foreach($category as $cat){
			$link = str_replace(" ","-",$cat->category);
		 $html.= '<li>
			<a href="publications?category='.$link.'">'.$cat->category.'<span class="pull-right">('.$cat->total.')</span></a>
		  </li>';
	    }
		  $html.= '</ul>';
		 echo json_encode(["cartgory"=>$html]);
	}


	public function captcha(){
		$html='';
		$html.= '<p>'.$this->admin->generateCaptcha().'</p>';
		 echo json_encode(["captcha"=>$html]);

	}
	public function contact_insert(){
		$captcha = $this->input->post("captcha",true);
		$genCaptcha = $this->session->userdata('captchaCode');
		if($genCaptcha == $captcha){
		}else{
			echo json_encode(["status"=>"error","message"=>"<div class='alert alert-danger'>Incorrect captcha code</div>"]);
			exit;
		}
	    $data = [
		 	"name"=> $this->input->post("name"),
			"email"=> $this->input->post("email"),
			"purpose"=> $this->input->post("purpose"),
			"message"=> $this->input->post("message"),
			'created_date' => date('Y-m-d H:i:s')
		];
		$id = $this->db->insert("tbl_contact",$data);
		
		if($id){
			echo json_encode(["status"=>"success","message"=>"<div class='alert alert-success'>We have received your request successfully, We'll contact you soon.</div>"]);
		}else{

			echo json_encode(["status"=>"error","message"=>"<div class='alert alert-danger'>Error Occured  </div>"]);
		}
		
	}   

	public function feature_banner(){
		$feature_banner = $this->db->get_where("tbl_podcast_slider",array("type"=> "featured-guests"))->result(); 

		$html='';
		$html.=' <div class="container">
		<div class="head1">
		<h1>Featured <span>Guests</span></h1>
		</div>
		<div id="demo1" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner"> ';

		foreach($feature_banner as $k => $feature ){
			$active = ($k == 0) ? 'active' : '';
			$html.='   
			<div class="carousel-item '.$active.'">
			<div class="row justify-content-md-center ">
		<div class="col-lg-9 text-center">
		<p>'. $feature->short_desc.'</p>
		<a href="'.$feature->link.'">
		<button class=" black_box "> '.$feature->button_name.' </button>
		</a> </div>
		<div class="col-lg-3 text-center"><img src="'.$feature->image.'"  class="img-fluid"/>
		<h3>'.$feature->name.'</h3>
		
		</div>
		</div> 
		</div>
		';
		}
		$html.='</div></div>';
		echo json_encode(["feature_banner"=>$html]);
	}
	public function  homebanner(){
			$slider = $this->db->get_where("tbl_podcast_slider",array("type"=> "home-banner"))->result(); 
			$html='';
				//$link = str_replace(" ","-",$cat->category);
			$html.= '<div class="container">
			<div id="demo" class="carousel slide" data-ride="carousel">
		
		  <!-- Indicators -->
		  <ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		  </ul>';
		  
	
		  $html.= '<div class="carousel-inner">';
		  foreach($slider as $k => $home_slider ){
			$active = ($k == 0) ? 'active' : '';
		  $html.= '<div class="carousel-item '.$active.'">
			 <div class="ban-img"> <img src="'.$home_slider->image.'" class="img-fluid" />
			  <div class="ban-text">
			  '.$home_slider->short_desc.'
				</div>
			</div>
			</div>';
	     }
		$html.= '</div>
		  
		
		  <a class="carousel-control-prev" href="#demo" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		  </a>
		</div>
			 </div>';
		echo json_encode(["homebanner"=>$html]);

	}
	public function host(){
		$host =$this->db->get_where("tbl_podcast_slider",array("type"=>"host"))->result(); 
		
		$html='';
		$html.='<div class="container">
				<div class="head1">
					<h1>Our 
						<span>Host</span>
					</h1>
				</div>';

		$html.='<div id="demo" class="carousel slide" data-ride="carousel"> ';
					
		$html.='   <ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
					</ul>';
			
		$html.='<div class="carousel-inner">';
					foreach($host as $k => $hosts ){
						$active = ($k == 0) ? 'active' : '';
		$html.=' <div class="carousel-item '.$active.'">
					<img src="'. $hosts->image.'" alt="" id="iw3tpb" width="1100" height="500"/>
					</div>';
				}

		$html.='</div>';
		$html.='<a href="#demo" data-slide="prev" class="carousel-control-prev">
		            <span class="carousel-control-prev-icon"></span> 
		         </a>
				<a href="#demo" data-slide="next" class="carousel-control-next">
				    <span class="carousel-control-next-icon"></span> 
				 </a>';
		   
		  $html.='</div></div>';
		  echo json_encode(["host"=>$html]);
	}
	
}









