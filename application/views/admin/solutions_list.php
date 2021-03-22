<?php admin_header(); ?>
<?php admin_sidebar(); ?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />


             <div class="row page-titles">
                <div class="col-md-5 col-12 align-self-center">
                    <h3 class="text-themecolor mb-0">Subscribers</h3>
                    <ol class="breadcrumb mb-0 p-0 bg-transparent">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Subscribers</li>
                    </ol>
                </div>
            </div>
              <div class="container-fluid">
                <div class="row">
                    
                 <!----tables---->
                <div class="container-fluid">
                  <div class="row">
                      <div class="col-12">
                          <div class="card">
                              <div class="card-body">
                                  <div class="table-responsive">
                                      <table id="file_export" class="table table-striped table-bordered display">
                                          <thead>
                                              <tr>
                                              <th>S.No</th>
                                              <th>Email</th>
                                              <th>Date</th>
                                              </tr>
                                          </thead>
                                          <tbody>
                                        <?php  $i = 0;
                                                foreach ($subscribe as $solu) {  ?> 
                                            <tr>
                                              <td><?php echo ++$i ?></td>
                                              <td><?php echo $solu->email ?></td>
                                              <td><?php echo date("d-m-Y h:i:s a",strtotime($solu->created_date));?></td>
                                            </tr>
                                            <?php }   ?>
                                        </tbody>
                                      </table>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                </div>
              </div>
                
      
<?php admin_footer(); ?> 
