<? $d = &get_instance(); ?>

<div class="container">
  <div class="foottop">
  <div class="row">
  <?php $menus = $this->db->where('footer','active')->where('status','active')->like('footer')->get('tbl_menu');
      foreach($menus->result() as $menu){		
         ?> 
       <div class="col-lg col-md-8 ml-lg-auto">
       <h3> <?php echo $menu->name ?></h3>
       <ul>
         <?php $sub_menus =  $this->db->where('footer','active')->where('status','active')->where("menu_name",$menu->id)->like('footer')->get('tbl_submenu'); //echo $this->db->last_query(); ?>
        <?php  foreach($sub_menus->result() as $submenu){		?>
          <li><a href="<? echo base_url().$submenu->sub_menu_link ?>" target="<? echo $submenu->sub_menu_target ?>"><? echo $submenu->sub_menu_name ?></a></li>
          <? } ?>  
        </ul>
       </div>
    <?php } ?>

   
      <div class="col-md-4 bord  justify-content-centers">
      <? $contact = json_decode($this->db->get_where("tbl_options",["option_name"=>"contact"])->row()->option_value); ?>
        <h3>Need a hand?</h3>
        <p><?php echo $contact->details; ?></p>
        <div class="media text-center">
          <div class="tc-fc"> <img class="media-object" src="http://www.dotcom-team.com/wp-content/themes/Unified_Dotcom/images/phone_icon.png" alt=""> </div>
          <div class="tc-fc"> <?php echo $contact->mobile_number ?> </div>
          <div class="tc-fc"> <img class="media-object" src="http://www.dotcom-team.com/wp-content/themes/Unified_Dotcom/images/mail_icon.png" alt=""> </div>
          <div class="tc-fc"><a href="<?php echo $contact->email ?>"><?php echo $contact->email ?></a> </div>
        </div>
      </div>
      <?php //} ?>
    </div>
  </div>
</div>
 <div class="footbtm">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-sm-6 col-xs-12">
        <p> </p>
        <div class="textwidget">
        <? $copyright = $this->db->get_where("tbl_options",["option_name"=>"copyright"])->row()->option_value; ?>
          <p><?php echo $copyright; ?></p>
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

<script type='text/javascript' src="<? echo base_url('assets/front/js/blocks.js') ?>"></script>
<script>
    $(document).ready(function(){
        $.ajax({
            url:"<?php echo base_url();?>sections/",
            type: 'GET',
            dataType: 'JSON',
            success:function (data) {
              $('#solutions').html(data.solution);
            },
            error:function(data){
           }
        });   
    });
</script>
<script>
    $(document).ready(function(){
        $.ajax({
            url:"<?php echo base_url();?>sections/aboutStory",
            type: 'GET',
            dataType: 'JSON',
            success:function (data) {
              $('#story').html(data.story);
           
            },
            error:function(data){
            
           }
        });   
    });
</script>


<script>
    $(document).ready(function(){
        $.ajax({
            url:"<?php echo base_url();?>sections/about_team/",
            type: 'GET',
            dataType: 'JSON',
            success:function (data) {
              $('#team').html(data.team);
            },
            error:function(data){
           }
        });   
   });
</script>
<script>
    $(document).ready(function(){
        $.ajax({
            url:"<?php echo base_url();?>sections/blogs/",
            type: 'GET',
            dataType: 'JSON',
            success:function (data) {
              $('#blog_pages').html(data.blogs);
            },
            error:function(data){
           }
        });   
   });
</script>

<script>
    $(document).ready(function(){
        $.ajax({
            url:"<?php echo base_url();?>sections/cartgory/",
            type: 'GET',
            dataType: 'JSON',
            success:function (data) {
              $('#categories').html(data.cartgory);
            },
            error:function(data){
           }
        });   
   });
</script>

<script>
      $.ajax({
          url:"<?php echo base_url();?>sections/innerblog",
          type: 'GET',
          dataType: 'JSON',
          data:{ blog:'<?php echo $this->input->get("blog") ?>'},
          success:function (data) {
            $('#single-blog').html(data.innerblog);
            console.log(data);
          },
          error:function(data){
             
          }
      });  
</script>

<script>
    $(document).ready(function(){
        $.ajax({
            url:"<?php echo base_url();?>sections/newpost/",
            type: 'GET',
            dataType: 'JSON',
            success:function (data) {
              $('#post').html(data.newpost);
            },
            error:function(data){
           }
        });   
   });
</script>
<script>
    $(document).ready(function(){
        $.ajax({
            url:"<?php echo base_url();?>sections/captcha/",
            type: 'GET',
            dataType: 'JSON',
          success:function (data) {
              $('#image_captcha').html(data.captcha);
          },
          error:function(data){
            
          }
        });   
   });
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#contact-form").on('submit', function(e) {
            e.preventDefault();
            var contactForm = $(this);
            $.ajax({
                url: "<?php echo base_url();?>sections/contact_insert",
                type: 'post',
                data: contactForm.serialize(),
                dataType : "json",
                success: function(response){
                  if(response.success == "success"){
                    $("#message").html(response.message);
                    setTimeout(function() {
                      location.reload();
                    }, 3000);
                  }else{
                    $("#message").html(response.message);
                    setTimeout(function() {
                      location.reload();
                    }, 3000);
                  }
                },
                error:function(data){
                  $("#message").html(response.message);
                }
            });
        });
    });
</script>

<script>
 $('.captcha-refresh').click(function() {
    location.reload();
});
</script>