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
            <a class="navbar-brand" href="javascript:;">Footer Sub Menu</a>
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
              <h4 class="card-title">Footer Sub Menu</h4>
            
            </div>
            <div class="card-body">
              <div id="typography">
                <div class="card-title">
                <a href="<?php echo base_url() ?>sitesettings/"><button class="btn btn-rose btn-sm float-right"><i class="fa fa-reply" aria-hidden="true"></i> Back</button></a>

                </div>
                    <form action="<?php echo base_url() ?>sitesettings/insertsubmenufooter" method="post">
                    <div id="inputs">
          <div class="title">
            <h3></h3>
          </div>
          <div class="row">
            <div class="col-lg-3 col-sm-3">
              <div class="form-group">
                <label for="exampleInput1" class="bmd-label-floating">Sub Menu Name</label>
                <input type="text" name="sub_menu_name" class="form-control" id="exampleInput1" required>
                <span class="bmd-help">Menu Name</span>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
              <div class="form-group">
                <label for="exampleInput2"  class="bmd-label-floating">Sub Menu Link</label>
                <input type="text" name="sub_menu_link" id="link" class="form-control" id="exampleInput2" required>
               
                </span>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
            <div class="form-group has-success">
              <label class="control-label">Link Target</label>
              <select class="form-control custom-select select" required name="sub_menu_target" id="">
                  <option value="">Select Link Target</option>
                    <option value="_blank">Blank</option>
                    <option value="_self">Self</option>
              </select>
              </div>
                </div>
                <input type="hidden" name="menu_id" value="<?php echo $n->id ?>">
                <div class="col-lg-3 col-sm-3">
                <button type="submit" class="btn btn-success submit" id="msubmit"> <i class="fa fa-check"></i> Submit</button>
                </div>
             </div>
            </form>
          </div>
            <div class="title">
            <h3 class="text-center">Footer Sub Menu</h3>
            <!-- Table Card -->
<div  class="card pmd-card">
    <table id="zero_config" class="table pmd-table table-hover table-striped display responsive nowrap" cellspacing="0" width="100%">
        <thead>
            <tr>
            <th>S.No</th>
            <th>Menu</th>
            <th>Sub Menu</th>
            <th>Link</th>
            <th>Target</th>
            <th>Status</th>
            <th>Action</th>

            </tr>
    	</thead>
        <tbody>
        <?php 
          $i = 0;

          foreach ($smenu as $u) {   ?> 
          <?php if($u->deleted==0){ ?>
            <tr>
                <td><?php echo ++$i ?></td>
                <td><?php echo $this->db->get_where("tbl_footer_menu",array("id"=>$u->menu_name))->row()->name ?></td>
                <td><?php echo $u->sub_menu_name ?></td>
                <td><?php echo $u->sub_menu_link ?></td>
                <td> <?php switch($u->sub_menu_target){
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
        ?>
        </td>
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
        <a href="<?php echo base_url() ?>sitesettings/updatefootersubmenu/<?php echo $u->id ?>" class="fa fa-pencil "><i class="ti-marker-alt"></i></a>
        <a href="#" value="<?php echo $u->id ?>" id="<?php echo $u->id ?>" onclick="archiveFunction(this.id)" class="fa fa-trash "><i class="ti-trash"></i></a>
        &nbsp;&nbsp;
          <!-- <a href="<?php //echo base_url() ?>menus/child-menu/<?php //echo $u->id ?>"><button class="btn btn-primary btn-sm">Child Menu</button></a> -->

    </td>
      
</tr>
<?php } ?>
<?php  
//$i++;
} ?> 
        </tbody>
    </table>
</div>
          </div>
        </div>
        </div>
    </div>
    </div>
      <?php //include('../includes/footer.php'); ?>

  


      <script>


	

	
	
	
$("input[type='checkbox']").bootstrapSwitch({size : 'mini'});



</script>




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