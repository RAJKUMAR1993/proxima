<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sections extends CI_Controller {

	public function __construct(){
				
			parent::__construct();
	}

	public function index(){
		
		$html= '';
		$html.= '<div class="container">
		<div class="row">
		<div class="col-md-5 offset-1">
			<h2>Retail Solutions  & Services</h2>
			<h3>We Help Retailers
			Achieve  Gameplan.</h3>';
		$sol = $this->db->get_where("tbl_solutions",array("alignment"=> "left","deleted"=> 0))->result(); 
		foreach($sol as $s){    
			$html.= ' <div class="img-box">';
			$html.= ' <img src="'.$s->image.'" class="img-fluid" />';
			$html.= '  <div class="text_details"><span><a href="#"><img src="assets/front/images/arrow.png"/></a></span>
						<div class="clearfix"></div>
						<h4> '.$s->title.'</h4>
						</div>
					</div>';
				if($s->type == 'Text'){
			$html.= ' <div class="blue-box"> <span><a href="#"><img src="assets/front/images/arrow.png"/></a></span>
							<h2>'.$s->title.'</h2>
							<p>'.$s->short_desc.' </p>
							</div>';
			} }
			$html.= '  </div>
							<div class="col-md-5 offset-1">';
						$sol_right = $this->db->get_where("tbl_solutions",array("alignment"=> "right","deleted"=> 0))->result(); 
								foreach($sol_right as $sol){
			$html.= ' <div class="img-box"> 
								<img src="'.$sol->image.'" class="img-fluid" style="    padding: 25px;"/>
								<div class="text_details"><span><a href="#"><img src="assets/front/images/arrow.png"/></a></span>
									<div class="clearfix"></div>
									<h4> '.$sol->title.' </h4>
								</div>
								</div>';
			} 
			$html.= ' </div>
		</div>
	</div>';

		echo json_encode(["solution"=>$html]);

	}
	
	public function publications(){
		
		$publications = $this->db->order_by("id","desc")->get_where("tb_publications",["status"=>"Active","deleted"=>0],3)->result();
		
		$html = '<div class="container">
					<h1>Proxima360 Publications</h1>
					<div class="row">';
			foreach($publications as $p){

				$html .= '<div class="col-lg-4 col-md-12 jasgrid">
							<div class="box-item">
							  <div class="box-post"> <span class="label label-success"> <a href="#" rel="tag">Retail</a> </span>
								<h3 class="post-title"> <a href="#"> '.$p->title.' </a> </h3>
								<span class="meta"> <span><i class="glyphicon glyphicon-comment"></i> <a href="#">No Comments</a></span> <span><i class="glyphicon glyphicon-time"></i> '.date("M d, Y",strtotime($p->created_date)).'</span> </span> </div>
							  <img src="'.$p->image.'" alt="" class="img-fluid"> </div>
						  </div>';

			}
		
		$html .= '</div>
				  </div>';
		
		echo json_encode(["publications"=>$html]);
		
	}

	public function about_team(){
        $html= '';
            $html.=' <div class="container">
                        <div class="head">
                            <h1> The 
                                <span>Team</span>.
                            </h1>
                        </div>
                    <div class="row  text-center">';
                    $team = $this->db->get_where("tbl_team",array("status"=> "active","deleted"=> 0))->result(); 
                    foreach($team as $tm){  
            $html.='
            <div class="col-lg-3 col-md-6 col-12">';
          
           
            $html.='<div class="tbox">';
           
                $html.='<div class="soc">
                <ul>
                  <li><a href="https://www.linkedin.com/in/anil-v-46702211/" target="_blank" ><img src="assets/front/images/linkedin.png"  /></a></li>
                  <li><a href="#costumModal10" data-toggle="modal"><img src="assets/front/images/bio.png"  /></a></li>
                </ul>
              </div>
              <img src="'.$tm->image.'"  class="img-fluid"/>
              <p>'.$tm->name.'</p>
              <small>'.$tm->designation.'</small>';
          
           $html.='</div>';
         $html.='<div id="costumModal10" class="modal " data-easein="bounce" role="dialog" aria-labelledby="costumModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-lg">
           <div class="modal-content">
             <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> × </button>
             </div>
             <div class="modal-body">
               <div class="row">
                 <div class="col-lg-3 col-12 text-center"> <img src="assets/front/images/anil.jpg"  class="img-fluid"/><br/>
                   
                   <!--<a target="_blank" href="https://www.linkedin.com/in/anil-v-46702211/"><i class="fa fa-linkedin"></i></a>--> 
                   
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
         $html.=' </div></div>';

      echo json_encode(["team"=>$html]);
    }

	public function aboutStory(){
		$story = $this->db->get_where("tbl_stories",array("deleted"=> 0))->result();
        $html='';
        $html.='<div class="container">
		<div class="head">
		  <div class="row1s">
			<div class="col-lg-10 ">
			  <h1> The <span>Storys</span>.</h1>
			</div>
		  </div>
		</div><div class="time-line"><ol class="ps-timeline">';
		
//		echo '<pre>';
        foreach(array_chunk($story,2) as $sty){
			
//			print_r($sty);
			
			if($sty[0]->year == 1997){
				$html.= '<li>
						  <div class="ps-bots">
							<p>'.$sty[0]->text.'</p>
						  </div>
						  <span class="ps-sp-top"><img src="'.$sty[0]->image.'" /></span> 
						</li>
						<li class="tim">
						  <div class="ps-top">
							<p>'.$sty[1]->text.'</p>
						  </div>
						  <span class="ps-sp-bot"><img src="'.$sty[1]->image.'" /></span> 
						</li>';
			}else{

				$html.= '<li class="tim">
						  <div class="ps-bot">
							<p>'.$sty[0]->text.'</p>
						  </div>
						  <span class="ps-sp-top"><img src="'.$sty[0]->image.'" /></span> 
						</li>
						<li class="tim">
						  <div class="ps-top">
							<p>'.$sty[1]->text.'</p>
						  </div>
						  <span class="ps-sp-bot"><img src="'.$sty[1]->image.'" /></span> 
						</li>';
        }}
        $html.= '</ol></div>';    
        $html.= '<div class="clearfix"></div>';
        $html.='</div></div>';      
        echo json_encode(["story"=>$html]);
	}
	public function blogs(){
		$blog = $this->db->get_where("tbl_blog",array("status"=>"Active","deleted"=> 0))->result(); 
		$html='';
		$html.=' <div class="container">
				<div class="row">';
				foreach($blog as $b){
		$html.='<div class="col-md-6 col-lg-4 col-12  blog-padding-right">
					<div class="single-blog two-column">
						<div class="post-thumb">
							<a href="inner-blog?blog='.$b->blog_link.'"><img src="'.$b->image.'" class="img-fluid" alt=""></a>
							<div class="post-overlay">
							  <span class="uppercase"><a href="#">'.date("d", $b->created_date).'<br><small>'.date("M", $b->created_date).'</small></a></span>
							</div>
								</div>
							<div class="post-content overflow">
								<h2 class="post-title bold"><a href="inner-blog?blog='.$b->blog_link.'">'.$b->title.'</a></h2>
								<h3 class="post-author"><a href="#">'.$b->posted_by.'</a></h3>
								<p>'.$b->short_desc.'[...]</p>
								<a href="inner-blog?blog='.$b->blog_link.'" class="read-more">View More</a>
								
							</div>
						</div>
				    </div
			    </div>';
		}
			$html.='</div>';
		echo json_encode(["blogs"=>$html]);

	}
	public function innerblog(){
		$ShareUrl = urlencode("http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]");
 $Title = 'Share content URL in social media using PHP';
 $Media = 'http://2.bp.blogspot.com/-nr1K0W-Zqi0/U_4lUoyvvVI/AAAAAAAABJE/F_C7i48sI58/s1600/new2.png';

 
		$blog = $this->input->get("blog"); 
		if($blog){
			$this->db->where("blog_link",$blog);
		}
		$inner = $this->db->where("status","Active")->get("tbl_blog")->row(); 
	//	echo $this->db->last_query();die;
		$html='';
		$html.='<div class="post-thumb">
			<a href="#"><img src="'.$inner->blogs_inner_image.'" class="img-fluid" alt=""></a>
			<div class="post-overlay">
				<span class="uppercase"><a href="#">'.date("d",$inner->created_date).'<br><small>'.date("M", $inner->created_date).'</small></a></span>
			</div>
		</div>
		<div class="post-content overflow">
			<h2 class="post-title bold"><p>'.$inner->title.'</p></h2> 
			<h3 class="post-author"><a href="#">'.$inner->posted_by.'</a></h3><br>
			<p>'.$inner->long_desc.'</p>
		</div>
		</div>
		
		  </div>


			<br/> <br/>
			 <!-- Share Widget Starts Here -->
			  <div class="col-md-12 col-sm-12">
			<div class="ssbats-social-share">
			  <span class="ssbats-social-share-label">Share on:</span>
			  <div class="ssbats-social-share-buttons">
				<a href="https://www.facebook.com/sharer/sharer.php?u=URL_HERE" class="ssbats-share-facebook ssbats-share-popup"><span>facebook</span></a>
				<a href="https://www.twitter.com/intent/tweet?url=URL_HERE&via=i_Genius" class="ssbats-share-twitter ssbats-share-popup"><span>twitter</span></a>
				<a href="https://www.linkedin.com/shareArticle?mini=true&url=URL_HERE" class="ssbats-share-linkedin ssbats-share-popup"><span>linkedin</span></a>
				<a href="https://www.pinterest.com/pin/create/button/" data-pin-do="buttonBookmark" data-pin-custom="true" class="ssbats-share-pinterest"><span>pinterest</span></a>
				 <a href="https://tumblr.com/widgets/share/tool?canonicalUrl=URL_HERE" class="ssbats-share-tumblr ssbats-share-popup"><span>tumblr</span></a>
				<a href="https://www.reddit.com/submit?url=URL_HERE" class="ssbats-share-reddit ssbats-share-popup"><span>reddit</span></a>
				<a href="https://api.whatsapp.com/send?text=URL_HERE" class="ssbats-share-whatsapp"><span>whatsapp</span></a>
				<a href="https://telegram.me/share/url?url=URL_HERE" class="ssbats-share-telegram ssbats-share-popup"><span>telegram</span></a>
				<a href="https://getpocket.com/save?url=URL_HERE" class="ssbats-share-pocket ssbats-share-popup"><span>pocket</span></a>
			  </div>
			</div>
			<!--/Response-area-->
		</div>
	';
		echo json_encode(["innerblog"=>$html]);

	}
	public function newpost(){
		$post = $this->db->select('*')->from('tbl_blog')->where("status","Active")->order_by('id', 'desc')->limit(3)->get();
		$html= '';
		$html.='<h3>Comments</h3>';
		foreach($post->result() as $p) {
		$html.='<div class="media"><a href="#" class="pull-left"><img src="'.$p->image.'" alt="" width="70px;" height="70px;"></a>
					</div>
					<div class="media-body">
						<h4><p>'.$p->title.'</a></h4>
						<p>posted on  '.date('d F Y', strtotime($p->created_date)).'</p>
					</div>';
		$html.='</div>';
			  }
		$html.= '';
		echo json_encode(["newpost"=>$html]);
	}

	public function cartgory(){
		$category = $this->db->query("select * from tbl_blog group by category")->result(); 
		$html='';
		$html.= ' <h3>Categories
		</h3>
		<ul class="nav navbar-stacked">';
		foreach($category as $cat){
		 $html.= '<li>
			<a href="#">'.$cat->category.'<span class="pull-right">(1)</span></a>
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
	
}


