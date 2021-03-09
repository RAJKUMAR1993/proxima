<?php include('../includes/header.php'); ?>
<?php include('../includes/sidebar.php'); ?>
<?php include('../includes/section.php'); ?>

<style>
/* Bootstrap css */


/* Google Material icons */
@import "http://fonts.googleapis.com/icon?family=Material+Icons";

/* Propeller css */
@import "../dist/css/propeller.min.css";

/* Datatable bootstrap */
@import "https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css";

/* Datatables bootstrap responsive */
@import "https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap4.min.css";

/* Datatable select */
@import "https://cdn.datatables.net/select/1.2.0/css/select.dataTables.min.css";

/* Propeller Datatable */
@import "../data-table/css/pmd-datatable.css";

</style>
    
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:;">Update Footer Menu</a>
          </div>
        </div>
      </nav>
      <?php echo $this->session->flashdata('msg');?>
<?php if($this->session->flashdata('errors')){ ?>
    <div class="alert alert-danger">
        <div class="container">
          <div class="alert-icon">
            <i class="material-icons">error_outline</i>
          </div>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true"><i class="material-icons">clear</i></span>
          </button>
          <strong>error!</strong> <?php echo $this->session->flashdata('errors'); ?>
        </div>
      </div>
            <?php } else if($this->session->flashdata('success')){  ?>
                <div class="alert alert-success">
        <div class="container">
          <div class="alert-icon">
            <i class="material-icons">check</i>
          </div>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true"><i class="material-icons">clear</i></span>
          </button>
          <strong>success!</strong> <?php echo $this->session->flashdata('success'); ?>
        </div>
      </div>
            <?php }  ?>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="card">
            <div class="card-header card-header-primary">
              <h4 class="card-title">Update Footer Menu</h4>
            
            </div>
            <div class="card-body">
              <div id="typography">
                <div class="card-title">
                <a href="<?php echo base_url() ?>sitesettings"><button class="btn btn-info btn-sm float-right"><i class="fa fa-reply" aria-hidden="true"></i> Back</button></a>
                </div>
                    <form action="<?php echo base_url() ?>sitesettings/editfooter" method="post">
                    <div id="inputs">
          <div class="title">
            <h3></h3>
          </div>
          <div class="row">
            <div class="col-lg-3 col-sm-3">
              <div class="form-group">
                <label for="exampleInput1" class="bmd-label-floating">Menu Name</label>
                <input type="text" name="name" class="form-control"  value="<?php echo $n->name ?>" id="exampleInput1" required>
                <span class="bmd-help">Menu Name</span>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
              <div class="form-group">
                <label for="exampleInput2"  class="bmd-label-floating">Menu Link</label>
                <input type="text"  name="link" class="form-control" value="<?php echo $n->link ?>" id="exampleInput2" required>
               
                </span>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
            <div class="form-group has-success">
                                                    <label class="control-label">Link Target</label>
                                                    <select class="form-control custom-select" required name="target">
 <option value="_blank" <?php if($n->target == '_blank') { ?>  selected="selected"<?php } ?>>Blank</option>
 <option value="_self" <?php if($n->target == '_self') { ?> selected="selected"<?php } ?>>Self</option>

                                                    </select>
                                                </div>
            </div>
            <div class="col-lg-3 col-sm-3">
            <button type="submit" class="btn btn-success" id="msubmit"> <i class="fa fa-check"></i> Update</button>
            </div>
          </div>
          <input type="hidden" name="id" value="<?php echo $n->id ?>">
        </form>
            </div>
            <script>
                
$("input[type='checkbox']").bootstrapSwitch({size : 'mini'});
$('#zero_config').DataTable();

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
                        url:"<?php echo base_url();?>navbar/navbar_menu/navbarSubmenustatus",
                        data:{id:nav_id,status:status},
                        success:function (data){
                            
                            location.reload();
                        }

                    });  
        });

</script>

<script type="text/javascript">


function archiveFunction(id) {
       Swal({
  title: 'Are you sure?',
  text: 'You will not be able to recover this selected sub menu!',
  type: 'warning',
  showCancelButton: true,
  confirmButtonText: 'Yes, delete it!',
  cancelButtonText: 'No, keep it'
}).then((result) => {
  if (result.value) {

    Swal(
      'Deleted!',
      'Your Selected Sub Menu has been deleted.',
      'success'
    )
    $.ajax({
        method: 'POST',
        data: {'id' : id },
        url: '<?php echo base_url() ?>navbar/navbar_menu/delNavbarSubmenu/'+id,
        success: function(data) {
            location.reload();   
        }
    });
 
  } else if (result.dismiss === Swal.DismissReason.cancel) {
    Swal(
      'Cancelled',
      'Your Selected Sub Menu is safe :)',
      'success',
      
    )
  }
})
    }
</script>

            </script>