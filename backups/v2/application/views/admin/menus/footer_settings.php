<?php include('includes/header.php'); ?>
<?php include('includes/sidebar.php'); ?>
<?php include('includes/section.php'); ?>


<style>
/* Bootstrap css */


/* Google Material icons */
@import "http://fonts.googleapis.com/icon?family=Material+Icons";

/* Propeller css */
@import "dist/css/propeller.min.css";

/* Datatable bootstrap */
@import "https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css";

/* Datatables bootstrap responsive */
@import "https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap4.min.css";

/* Datatable select */
@import "https://cdn.datatables.net/select/1.2.0/css/select.dataTables.min.css";

/* Propeller Datatable */
@import "data-table/css/pmd-datatable.css";

</style>
 
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:;">Footer Menu</a>
          </div>
        </div>
      </nav>
      
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="card">
            <div class="card-header card-header-primary">
              <h4 class="card-title">Footer Menu</h4>
            
            </div>
            <div class="card-body">
              <div id="typography">
                <div class="card-title">
                  
                </div>
                    <form action="<?php echo base_url() ?>sitesettings/footer_insert" method="post">
                    <div id="inputs">
          <div class="title">
            <h3></h3>
          </div>
          <div class="row">
            <div class="col-lg-3 col-sm-3">
              <div class="form-group">
                <label for="exampleInput1" class="bmd-label-floating">Menu Name</label>
                <input type="text" name="name" class="form-control" id="exampleInput1" required>
                <span class="bmd-help">Menu Name</span>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
              <div class="form-group">
                <label for="exampleInput2"  class="bmd-label-floating">Menu Link</label>
                <input type="text"  name="link" class="form-control" id="exampleInput2" required>
               
                </span>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
            <div class="form-group has-success">
                <label class="control-label">Link Target</label>
                <select class="form-control custom-select" required name="target" required>
                    <option value="">Select Target</option>
                    <option value="_blank">Blank</option>
                    <option value="_self">Self</option>
                </select>
            </div>
            </div>
            <div class="col-lg-3 col-sm-3">
            <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </div>
        </form>
            </div>
            <div class="title">
            <h3 class="text-center">Footer menu</h3>
            <!-- Table Card -->
<div  class="card pmd-card">
    <table id="zero_config" class="table pmd-table table-hover table-striped display responsive nowrap" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Sl.No</th>
                <th>Menu name</th>
                <th>Link</th>
                <th>Target</th>
                <th>Status</th>
                <th>Action</th>
              
            </tr>
    	</thead>
        <tbody>
            <?php  $i = 0;
        foreach ($nav as $u) {  ?> 
        <?php if($u->deleted==0){ ?> 
            <tr>
                <td><?php echo ++$i ?></td>
                <td><?php echo $u->name ?></td>
                <td><?php echo $u->link ?></td>
                <td> <?php switch($u->target){
                case "_top":
                echo "Top";
                break;  
                case "_self":
                echo "Self";
                break;  
                case '_parent':
                echo "Parent";
                break;  
                case '_blank':
                echo "Blank";   
                break;
                default:
                echo "Blank";
                break;
            }      
        ?></td>
            <td style="padding: 0.5rem;">
                                                   
            <?php if($u->status=="Active"){ ?>
        <div class="switch">
            <input type="checkbox" data-on-color="info" nav_id="<?php echo $u->id ?>" name="switch" data-off-color="success" class="check" checked>
        </div>
            <?php  }elseif($u->status=="Inactive"){ ?>
        <div class="switch">
            <input type="checkbox" nav_id="<?php echo $u->id ?>" data-on-color="info" name="switch" data-off-color="success" class="check">
            <?php } ?> 
        </div>    
        </td>
        <td style="padding: 0.5rem;">
              <a href="<?php echo base_url() ?>sitesettings/updatefooter/<?php echo $u->id ?>" class="fa fa-pencil"><i class="ti-marker-alt"></i></a>
                <a href="#" name="delete" value="<?php echo $u->id ?>" id="<?php echo $u->id ?>" class="fa fa-trash"  onclick="archiveFunction(this.id)"><i class="ti-trash"></i></a>&nbsp;&nbsp;
                <a href="<?php echo base_url() ?>sitesettings/footer_submenu/<?php echo $u->id ?>"><button class="btn btn-info btn-sm">Sub Menu</button></a>

          </td>
          <div class="rename">
          <input type="hidden" name="nav_id" rel="<?php echo $u->id ?>" class="nav_id" value="<?php echo $u->id ?>">   
          </div>    
      </tr>
  <?php } ?>
<?php  

  } ?> 
        </tbody>
    </table>
</div>
          </div>
        </div>
        </div>
    </div>
    </div>
      <?php //include('includes/footer.php'); ?>

  


<script>
  function archiveFunction(id) {
          // /console.log(id);
            Swal({
        title: 'Are you sure?',
        text: 'You will not be able to recover this selected menu!',
        type: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Yes, delete it!',
        cancelButtonText: 'No, keep it'
        }).then((result) => {
        if (result.value) {

            Swal(
            'Deleted!',
            'Your Selected Menu has been deleted.',
            'success'
            )
            $.ajax({
                method: 'POST',
                data: {'id' : id },
                url: '<?php echo base_url() ?>sitesettings/footerdelete/'+id,
                success: function(data) {
                    location.reload();   
                }
            });
        
        } else if (result.dismiss === Swal.DismissReason.cancel) {
            Swal(
            'Cancelled',
            'Your Selected Menu is safe :)',
            'success',
            
            )
        }
    })
    }
  	
	$('#zero_config').on('switchChange.bootstrapSwitch','input[name="switch"]', function (e, state) {
      
      var nav_id = $(this).attr("nav_id"); 

  var status;

  if ($(this).is(":checked")){
    status = "Active";
  }else{
    status = "Inactive";
  }
  $.ajax({
    type:"POST",
    url:"<?php echo base_url();?>sitesettings/footerstatus",
    data:{id:nav_id,status:status},
    success:function (data){
      location. reload(true);
    }

  });  
 });
</script>