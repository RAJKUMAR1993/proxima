	<footer class="footer">
		© 2020 Proxima by utsin.com
	</footer>
	<!-- ============================================================== -->
	<!-- End footer -->
	<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  --> 
   
</div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- customizer Panel -->
    <!-- ============================================================== -->
   
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<? echo base_url() ?>assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<? echo base_url() ?>assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="<? echo base_url() ?>assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <script src="<? echo base_url() ?>assets/dist/js/app.min.js"></script>
    <script src="<? echo base_url() ?>assets/dist/js/app.init.mini-sidebar.js"></script>
    <script src="<? echo base_url() ?>assets/dist/js/app-style-switcher.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<? echo base_url() ?>assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="<? echo base_url() ?>assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="<? echo base_url() ?>assets/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="<? echo base_url() ?>assets/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="<? echo base_url() ?>assets/dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <script src="<? echo base_url() ?>assets/dist/js/pages/dashboards/dashboard1.js"></script>
</body>

</html>
<script type="text/javascript">

	<?php    
		if($d->session->flashdata("msg")){
       ?>
			toastr.<?php echo $d->session->flashdata("type");?>('<?php echo $d->session->flashdata("msg");?>', '<?php echo $d->session->flashdata("title");?>')

	<?php
    	}
    ?>

</script>