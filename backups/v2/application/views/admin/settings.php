<? admin_header() ?>
<? admin_sidebar() ?>
     
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <!-- <a class="navbar-brand" href="javascript:;">Update Footer Menu</a> -->
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
    <div class="content">
        <div class="container-fluid">
         <!--
          <div class="card">
            <div class="card-header card-header-primary">
              <h4 class="card-title">Conatcts Details</h4>
            
            </div>
            <div class="card-body">
              <div id="typography">
                <div class="card-title">
                </div>
                    <form id="addeditinstitute" enctype="multipart/form-data">
						<input type="hidden" id="url" name="url" value="<?php echo base_url("sitesettings/updatecontact"); ?>">
						<div id="inputs">
						  <div class="title">
							<h3></h3>
						  </div>
						  <div class="row">
							<div class="col-lg-3 col-sm-3">
							  <div class="form-group">
								<label for="exampleInput1" class="bmd-label-floating">Email</label>
								<input type="text" name="email" class="form-control" value="<?php echo $contact->email;?>"   id="exampleInput1" required>
								<span class="bmd-help">Email</span>
							  </div>
							</div>
							<div class="col-lg-3 col-sm-3">
							  <div class="form-group">
								<label for="exampleInput2"  class="bmd-label-floating">Mobile Number</label>
								<input type="text"  name="mobile" class="form-control"  value="<?php echo $contact->mobile_number;?>" id="exampleInput2" required>
								<span class="bmd-help">Mobile Number</span>
								</span>
							  </div>
							</div>
							<div class="col-lg-3 col-sm-3">
							<div class="form-group has-success">
								<label for="exampleInput2" class="bmd-label-floating">Details</label>
								<textarea name="details" class="form-control" rows="4" required><?php echo $contact->details;?></textarea>
							</div>
							</div>
							<div class="col-lg-3 col-sm-3">
							<button type="submit" class="btn btn-success" id="msubmit"> <i class="fa fa-check"></i> Update</button>
							</div>
						  </div>
						  </div>

						</form>
					</div>
				</div>
			</div>
			-->
			
			   <div id="nav-tabs">
				  <h3>Settings</h3>
				  <div class="row">
					<div class="col-md-12">
					  <!-- Tabs with icons on Card -->
					  <div class="card card-nav-tabs">
						<div class="card-header card-header-primary">
						  <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
						  <div class="nav-tabs-navigation">
							<div class="nav-tabs-wrapper">
							  <ul class="nav nav-tabs" data-tabs="tabs">
								<li class="nav-item">
								  <a class="nav-link active" href="#profile" data-toggle="tab">
									<i class="material-icons">contact_support</i>
									Contact Details
								  </a>
								</li>
								<li class="nav-item">
								  <a class="nav-link" href="#messages" data-toggle="tab">
									<i class="material-icons">person</i>
									Logo
								  </a>
								</li>
							  </ul>
							</div>
						  </div>
						</div>
						<div class="card-body ">
						  <div class="tab-content text-center">
							<div class="tab-pane active" id="profile">
								<form id="addeditinstitute" enctype="multipart/form-data">
									<input type="hidden" id="url" name="url" value="<?php echo base_url("sitesettings/updatecontact"); ?>">
									<div id="inputs">
									  <div class="title">
										<h3></h3>
									  </div>
									  <div class="row">
										<div class="col-lg-3 col-sm-3">
										  <div class="form-group">
											<label for="exampleInput1" class="bmd-label-floating">Email</label>
											<input type="text" name="email" class="form-control" value="<?php echo $contact->email;?>"   id="exampleInput1" required>
											<span class="bmd-help">Email</span>
										  </div>
										</div>
										<div class="col-lg-3 col-sm-3">
										  <div class="form-group">
											<label for="exampleInput2"  class="bmd-label-floating">Mobile Number</label>
											<input type="text"  name="mobile" class="form-control"  value="<?php echo $contact->mobile_number;?>" id="exampleInput2" required>
											<span class="bmd-help">Mobile Number</span>
											</span>
										  </div>
										</div>
										<div class="col-lg-3 col-sm-3">
										<div class="form-group has-success">
											<label for="exampleInput2" class="bmd-label-floating">Details</label>
											<textarea name="details" class="form-control" rows="4" required><?php echo $contact->details;?></textarea>
										</div>
										</div>
										<div class="col-lg-3 col-sm-3">
										<button type="submit" class="btn btn-success" id="msubmit"> <i class="fa fa-check"></i> Update</button>
										</div>
									  </div>
									 </div>

								</form>  
							</div>
							<div class="tab-pane" id="messages">
							  <p> I think that&#x2019;s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that&#x2019;s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at.</p>
							</div>
						  </div>
						</div>
					  </div>
					  <!-- End Tabs with icons on Card -->
					</div>
				  </div>
				</div>

			
		</div>
	</div>

<? admin_footer() ?>        
        
         <script>
  $(document).ready(function() {
  $("#addeditinstitute").on('submit', function(e){
     e.preventDefault();
     var formData = new FormData(this);
     var url = $('#url').val();
     $.ajax({
      url:url,
      data:formData,
      type:"post",
      dataType:"json",
      cache:false,
              contentType: false,
              processData: false,
      beforeSend: function(){
        $("#loader").show();
      },
      success: function(str){
          //alert(str);
        console.log(str);
        $("#loader").hide();
        if(str.Status == 'Active'){
          $("#smsg").show();
          $("#smsg").html(str.Message);
          setTimeout(function(){ location.reload(); }, 1000);  
        }else{
          $("#emsg").show();
          $("#emsg").html(str.Message);
        }
      },
      error: function(str){
          //alert(str);
        console.log(str);
        
      },
      });
  });

   });
</script>
    