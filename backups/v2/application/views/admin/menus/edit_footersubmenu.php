<?php include('../includes/header.php'); ?>
<?php include('../includes/sidebar.php'); ?>
<?php include('../includes/section.php'); ?>


      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:;">Sub Menu</a>
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
              <h4 class="card-title">Update Sub Menu</h4>
            
            </div>
            <div class="card-body">
              <div id="typography">
                <div class="card-title">

                </div>
                    <form action="<?php echo base_url() ?>sitesettings/editfootersubmenu" method="post">
                    <div id="inputs">
          <div class="title">
            <h3></h3>
          </div>
          <div class="row">
          <div class="col-lg-3 col-sm-2">
              <div class="form-group">
                <label for="exampleInput1" class="bmd-label-floating">Menu Name</label>
                <select class="form-control" name="menu_name">
                    <?php 
                      $mm = $this->db->query("select * from tbl_footer_menu where deleted=0 and status='Active'")->result();
                        foreach ($mm as $m) {
                        if($sm->menu_name==$m->id){
                    ?>
                    <option value="<?php echo $m->id ?>" selected><?php echo $m->name ?></option> 
                    <?php }else{ ?>
                    <option value="<?php echo $m->id ?>"><?php echo $m->name ?></option>
                    <?php }} ?>
                </select>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
              <div class="form-group">
                <label for="exampleInput1" class="bmd-label-floating">Sub Menu Name</label>
                <input type="text" name="sub_menu_name" class="form-control"  value="<?php echo $sm->sub_menu_name ?>" id="exampleInput1" required>
                <span class="bmd-help">Sub Menu Name</span>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
              <div class="form-group">
                <label for="exampleInput2"  class="bmd-label-floating">sub Menu Link</label>
                <input type="text" name="sub_menu_link" id="link"  value="<?php echo $sm->sub_menu_link ?>"  class="form-control" required>
                <span class="bmd-help">Sub Menu Link</span>
               
                </span>
              </div>
            </div>
            <div class="col-lg-3 col-sm-2">
            <div class="form-group has-success">
              <label class="control-label">Link Target</label>
              <select class="form-control custom-select" required name="sub_menu_target">
              <option value="_blank" <?php if($sm->sub_menu_target == '_blank') { ?>  selected="selected"<?php } ?>>Blank</option>
              <option value="_self" <?php if($sm->sub_menu_target == '_self') { ?>  selected="selected"<?php } ?>>Self</option>
              </select>
          </div>
          <input type="hidden" name="id" value="<?php echo $sm->id ?>">
            </div>
            <div class="col-lg-3 col-sm-2">
            <button type="submit" class="btn btn-success float-right" id="msubmit"> <i class="fa fa-check"></i> Update</button>
            </div>
          </div>
        </form>
            </div>
            
          </div>
        </div>
        </div>
    </div>
    </div>
      <?php include('../includes/footer.php'); ?>

  
<script type="text/javascript">
function archiveFunction(id) {
    //alert(id);
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
        url: '<?php echo base_url() ?>sitesettings/delsubfooter/'+id,
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
</script>