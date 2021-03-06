
<?php admin_header(); ?>
<?php admin_sidebar(); ?>

<div class="row page-titles">
    <div class="col-md-5 col-12 align-self-center">
        <h3 class="text-themecolor mb-0">Arrange Menus</h3>
        <ol class="breadcrumb mb-0 p-0 bg-transparent">
            <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>admin/dashboard">Home</a></li>
            <li class="breadcrumb-item active"><a href="<?php echo base_url(); ?>admin/menus/arrange_menus">Arrange Menus</a> </li>
        </ol>
    </div>
</div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="card">
                    <div class="card-header">
                        <strong>Header Menu</strong>
                    </div>
                        <br>
                        <div id="accordion" role="tablist">
						     <?php
							  $i = 0;	
                              $k = 0;
							  $mmenu = $this->db->where("deleted","0")->where("status","Active")->where("header","Active")->like("menu_type","header")->get("tbl_menu")->result_array(); 
                              foreach ($mmenu as $row) { 
                                  ?>      
                                  <input type="hidden" id="header" value="<?php echo $mmenu[$k]['id']; ?>">    
                            <div class="card1">
                                <div class="card-header" role="tab" id="heading<?php echo $i ?>" style="background-color: antiquewhite;border: 1px solid white">
                                <h5 class="mb-0">
                                    <a data-toggle="collapse" class="mmname" mid="<?php echo $row['id']; ?>" href="#collapse<?php echo $i ?>" aria-expanded="true" aria-controls="collapse<?php echo $i ?>">
                                    <?php echo $row['name'] ?>
                                    </a>
                                </h5>
                                </div>

                                <div id="collapse<?php echo $i ?>" class="collapse <?php echo ($i == 0) ? 'show' : '' ?>" role="tabpanel" aria-labelledby="heading<?php echo $i ?>" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="myadmin-dd-empty dd mm">
                                        <ol class="dd-list listmenu">


                                        </ol>
                                    </div>

                                </div>
                                </div>
                        
						  </div>
						 <?php 
							$i++;
                            $k++;
                         
							 }?> 
						</div>
                        
                </div>  
            </div>  












           <div class="col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <strong>Footer Menu</strong>
                        </div>
                      
                                                <br>

                         <div id="accordion1" role="tablist">
						  <?php
							 $i = 10;			
                             $fmenu = $this->db->where("deleted","0")->where("status","Active")->where("footer","Active")->like("menu_type","footer")->get("tbl_menu")->result_array(); 
                           
                             foreach ($fmenu as $row) { 

						  ?>          
                          <input type="hidden" id="fmid" value="<?php echo $row['id'] ?>">
                          
						  <div class="card1">
							<div class="card-header" role="tab" id="heading<?php echo $i ?>" style="background-color: antiquewhite;border: 1px solid white">
							  <h5 class="mb-0">
								<a data-toggle="collapse" class="fmname" fmid="<?php echo $row['id'] ?>" href="#collapse<?php echo $i ?>" aria-expanded="true" aria-controls="collapse<?php echo $i ?>">
								 <?php echo $row['name'] ?>
								</a>
							  </h5>
							</div>

							<div id="collapse<?php echo $i ?>" class="collapse <?php echo ($i == 0) ? 'show' : '' ?>" role="tabpanel" aria-labelledby="heading<?php echo $i ?>" data-parent="#accordion1">
							  <div class="card-body">
								  <div class="myadmin-dd dd fm">
                                    <ol class="dd-list listfootermenu">
                                        
                                        
                                    </ol>
                                  </div>
							  </div>
							</div>
						  </div>

						 <?php 
							$i++;
							} ?> 

						</div>
                        
                        
                        
                    </div>
                   </div>	            






        </div>  
    </div>  





<?php admin_footer(); ?> 

<script src="<?php echo base_url();?>assets/sortable/jquery.nestable.js"></script>
<script src="<?php echo base_url();?>assets/sortable/sortable-nestable-footer.js"></script> 
<script src="<?php echo base_url();?>assets/sortable/sortable-nestable.js"></script> 

<script>
$( document ).ready(function() {
    //alert(id);
	var id = $("#header").val();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url();?>admin/menus/get_submenu",
        data:{id:id},
        success:function(d){
            $(".listmenu").html(d);
           //console.log(d);
            $('.dd').nestable();
            
        },
        error:function(d){
           //console.log(d);
            
        }
    });
});


$( document ).ready(function() {
	var id = $("#fmid").val();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url();?>admin/menus/get_footer_submenu",
        data:{id:id},
        success:function(d){
            $(".listfootermenu").html(d);
            //$('.dd').nestable();
            //alert(d);
        }
    });
	
});	


</script>