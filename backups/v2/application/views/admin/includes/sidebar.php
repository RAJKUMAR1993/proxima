<? 
$d = &get_instance();
$uri = $d->uri->segment(2);
?>
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- User profile -->
                <div class="user-profile position-relative" style="background: url(<?php echo base_url() ?>assets/images/background/user-info.jpg) no-repeat;">
                    <!-- User profile image -->
                    <div class="profile-img"> <img src="<?php echo base_url() ?>assets/images/users/profile.png" alt="user" class="w-100" /> </div>
                    <!-- User profile text-->
                    <div class="profile-text pt-1"> 
                        <a href="#" class="dropdown-toggle u-dropdown w-100 text-white d-block position-relative" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Super Admin</a>
                        <div class="dropdown-menu animated flipInY"> 
                            <a href="#" class="dropdown-item"><i class="ti-user"></i>
                                My Profile</a>  
                            <a href="<? echo base_url('admin/settings') ?>" class="dropdown-item"><i class="ti-settings"></i> Settings</a>
                            <div class="dropdown-divider"></div> 
                            <a href="<?php echo base_url("admin/login/logout");?>" class="dropdown-item"><i class="fa fa-power-off"></i> Logout</a>
                        </div>
                    </div>
                </div>
                <!-- End User profile text-->
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> 
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<?php echo base_url(); ?>admin/dashboard" aria-expanded="false"><i class="mdi mdi-gauge"></i>
                            	<span class="hide-menu">Dashboard</span>
                            </a>
                        </li>
                        <li class="sidebar-item"> 
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<?php echo base_url(); ?>admin/menus" aria-expanded="false"><i class="mdi mdi-gauge"></i>
                            	<span class="hide-menu">Menus</span>
                            </a>
                        </li>
                        <li class="sidebar-item"> 
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<?php echo base_url("admin/login/logout");?>" aria-expanded="false"><i class="mdi mdi-directions"></i>
                            	<span class="hide-menu">Logout</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
            <!-- Bottom points
            <div class="sidebar-footer">
                <a href="" class="link" data-toggle="tooltip" title="Settings"><i class="ti-settings"></i></a>
                <a href="" class="link" data-toggle="tooltip" title="Email"><i class="mdi mdi-gmail"></i></a>
                <a href="" class="link" data-toggle="tooltip" title="Logout"><i class="mdi mdi-power"></i></a>
            </div>
            <!-- End Bottom points-->
        </aside>
        
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
      
      
    