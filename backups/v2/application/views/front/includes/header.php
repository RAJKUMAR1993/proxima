<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Welcome to Proxima360</title>
<link href="<? echo base_url() ?>assets/front/style.css" rel="stylesheet">
<link href="<? echo base_url() ?>assets/front/css/asmenu.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">



  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet"  href="<? echo base_url() ?>assets/front/css/styles.css" media="all" />


<style>

	
	.modal-dialog {
      max-width: 800px;
      margin: 30px auto;
  }



.modal-body {
  position:relative;
  padding:0px;
}
.close {
  position:absolute;
  right:-30px;
  top:0;
  z-index:999;
  font-size:2rem;
  font-weight: normal;
  color:#fff;
  opacity:1;
}
	.logo{ margin-top: 20px;}
	
	.social{ float:right; padding-top: 30px;}
	.social ul li{ display: inline; padding:  0px 5px;}
	.social ul li a{color: #333;}
	.social ul li a:hover{color: red;}
</style>
	
</head>


<body>
<div class="header1">
  <div class="container">
	  <div class="social d-none d-sm-block">
	  
	  <ul>
		  <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
		  <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
		  <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
		  <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
		  </ul>
	  </div>
	  
	  
    <div class="row justify-content-md-center">
      <div class="col-md-12 col-xs-12 text-center"> <a class="logo" href="index.html"> <img src="<?php echo base_url();?>assets/front/images/logo.png"  alt="" class=""></a></div>
    </div>
    <div class="row justify-content-center">
      <div class="col-md-12 col-xs-12 text-center">
        <nav> 
          <!-- Menu Toggle btn-->
          <div class="menu-toggle">
            <h3>Menu</h3>
            <button type="button" id="menu-btn"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          </div>
          <!-- Responsive Menu Structure--> 
          <!--Note: declare the Menu style in the data-menu-style="horizontal" (options: horizontal, vertical, accordion) -->
          <ul id="respMenu" class="ace-responsive-menu" data-menu-style="horizontal">
            <li> <a href="javascript:;"> <span class="title">About</span> </a>
              <ul>
                <li><a href="#">About Us </a></li>
                <li><a href="#">Leadership</a></li>
              </ul>
            </li>
            <li> <a href="javascript:;"> <span class="title">Solutions</span> </a> 
              <!-- Level Two-->
              <ul>
                <li><a href="stabilzation.html">Stabilzation</a></li>
                <li><a href="#">Optimization</a></li>
                <li><a href="#">Enablement</a></li>
                <li><a href="#">End-to-end Solutions</a></li>
              </ul>
            </li>
            <li><a href="#"> <span class="title"> Products </span></a> </li>
            <li><a href="#"> <span class="title"> Podcast </span></a> </li>
            <li><a href="#"> <span class="title"> Publications </span></a> </li>
            <li><a href="#"> <span class="title"> Get in Touch </span></a> </li>
          </ul>
          <!--  <span class="login_bar">
        <ul>
          <li class="search"> <a href="#"><i class="fa fa-search"></i></a>
            <div class="search_bar">
              <form>
                <input type="text"s name="search" placeholder="Search">
                <span class="search_icon"><i class="fa fa-search"></i></span>
              </form>
            </div>
          </li>
        </ul>
        </span>--> </nav>
      </div>
    </div>
  </div>
</div>
