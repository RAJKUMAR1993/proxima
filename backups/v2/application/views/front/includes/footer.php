<div class="foottop">
  <div class="container">
    <div class="row">
      <div class="col-md-3 ">
        <h3> Products</h3>
        <ul>
          <li> <a href="#">Adivino </a> </li>
          <li> <a href="#"> Rekount </a> </li>
        </ul>
      </div>
      <div class="col-md-3 ">
        <h3> Solutions </h3>
        <ul>
          <li> <a href="#">Allocation </a> </li>
          <li> <a href="#"> Revenue per customer footwear </a> </li>
          <li><a href="#"> Store merchandising forecast </a></li>
          <li><a href="#"> Store payroll control and tracking. </a> </li>
        </ul>
      </div>
      <div class="col-md-2">
        <h3> About us</h3>
        <ul>
          <li> <a href="#">About </a> </li>
          <li> <a href="#"> What We Do </a> </li>
          <li><a href="#"> Careers </a></li>
          <li><a href="#"> Contact </a> </li>
        </ul>
      </div>
      <div class="col-md-4 bord  justify-content-centers">
      <? $contact = json_decode($this->db->get_where("tbl_homepage_sociallinks",["type"=>"contact"])->row()->links); ?>
        <h3>Need a hand?</h3>
        <p>We’re available by phone (888.492.7297) and chat every day from 9 a.m.–10 p.m. ET. </p>
        <div class="media text-center">
          <div class="tc-fc"> <img class="media-object" src="http://www.dotcom-team.com/wp-content/themes/Unified_Dotcom/images/phone_icon.png" alt=""> </div>
          <div class="tc-fc"> 781-848-3867 </div>
          <div class="tc-fc"> <img class="media-object" src="http://www.dotcom-team.com/wp-content/themes/Unified_Dotcom/images/mail_icon.png" alt=""> </div>
          <div class="tc-fc"><a href="mailto:info@proxima.com">info@proxima360.com </a> </div>
        </div>
      </div>
    </div>
  </div>
</div>
 

 <div class="footbtm">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-sm-6 col-xs-12">
        <p> </p>
        <div class="textwidget">
          <p>Copyright 2019-2021 Proxima360. All Rights Reserved.</p>
        </div>
        <p></p>
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12 navbar-right">
        <div class="textwidget">
          <ul class="navbar-right">
            <li><a href="#">Home</a></li>
            <li>|</li>
            <li><a href="#">Privacy Statement</a></li>
            <li>|</li>
            <li><a href="#">EEO Policy</a></li>
            <li>|</li>
            <li><a href="#">Terms of Use</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
		




<script src="<? echo base_url() ?>assets/front/js/asmenu.js"></script> 
<script type="text/javascript">
         $(document).ready(function () {
             $("#respMenu").aceResponsiveMenu({
                 resizeWidth: '768', // Set the same in Media query       
                 animationSpeed: 'fast', //slow, medium, fast
                 accoridonExpAll: false //Expands all the accordion menu on click
             });
         });
	</script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script> 
<script>
 new WOW().init();
   </script> 
<script src="<? echo base_url() ?>assets/front/js/owl.js"></script>
</body>
</html>
