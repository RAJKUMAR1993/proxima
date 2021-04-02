<?php admin_header(); ?>
<?php admin_sidebar(); ?>
      
      
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="row page-titles">
                <div class="col-md-5 col-12 align-self-center">
                    <h3 class="text-themecolor mb-0">Dashboard</h3>
                    <ol class="breadcrumb mb-0">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
            
            	<!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div
                                        class="round round-lg text-white d-inline-block text-center rounded-circle bg-info">
                                        <i class="mdi mdi-book-open-page-variant"></i>
                                    </div>
                                    <div class="ml-2 align-self-center">
                                        <h5 class="text-muted mb-0">Total Pages</h5>
                                        <h3 class="mb-0 font-weight-light"><?php echo count($this->db->query("select * from tbl_pages where deleted=0")->result()); ?></h3>
                             
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div
                                        class="round round-lg text-white d-inline-block text-center rounded-circle bg-success">
                                        <i class="fab fa-angellist"></i></div>
                                    <div class="ml-2 align-self-center">
                                        <h5 class="text-muted mb-0">Subscribers</h5>
                                        <h3 class="mb-0 font-weight-light"><?php echo count($this->db->query("select * from tbl_subscribers")->result()); ?></h3>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div
                                        class="round round-lg text-white d-inline-block text-center rounded-circle bg-primary">
                                        <i class="fa fa-users"></i></div>
                                    <div class="ml-2 align-self-center">
                                        <h5 class="text-muted mb-0">Team</h5>
                                        <h3 class="mb-0 font-weight-light"> <?php echo count($this->db->query("select * from tbl_team where deleted=0")->result()); ?> </h3>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div
                                        class="round round-lg text-white d-inline-block text-center rounded-circle bg-danger">
                                        <i class="fas fa-outdent"></i></div>
                                    <div class="ml-2 align-self-center">
                                        <h3 class="text-muted mb-0">Categories</h3>
                                        <h5 class="text-muted mb-0"><?php echo $this->db->count_all_results('tbl_categories');  ?></h5>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->


                <!-- google analytics -->
                <div class="row">
                    <div class="col-sm-12 col-lg-12">
                        <iframe width="100%" height="1310" src="https://datastudio.google.com/embed/reporting/1aKgD_Yb724HaI_vUGm0JLQ50NYlKFBjc/page/1M" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>






























			</div>   
      
<?php admin_footer(); ?> 

<script src="https://apis.google.com/js/api.js"></script>
<script type="text/javascript">

  // Replace with your client ID from the developer console.
  var CLIENT_ID = '410014193770-9tfhjkpd3qkkcc23ejr11i8627han5bc.apps.googleusercontent.com';

  // Set authorized scope.
  var SCOPES = ['https://www.googleapis.com/auth/analytics.readonly'];


  gapi.analytics.auth.authorize({
    'serverAuth': {
      'access_token': '{{ ACCESS_TOKEN_FROM_SERVICE_ACCOUNT }}'
    }
  });
  function authorize(event) {
    // Handles the authorization flow.
    // `immediate` should be false when invoked from the button click.
    var useImmdiate = event ? false : true;
    var authData = {
      client_id: CLIENT_ID,
      scope: SCOPES,
      immediate: useImmdiate
    };
    gapi.auth.authorize(authData, function(response) {
      var authButton = document.getElementById('auth-button');
      if (response.error) {
        authButton.hidden = false;
      }
      else {
        authButton.hidden = true;
        queryAccounts();
      }
    });
  }
  function queryAccounts() {
  // Load the Google Analytics client library.
  gapi.client.load('analytics', 'v3').then(function() {

    // Get a list of all Google Analytics accounts for this user
    gapi.client.analytics.management.accounts.list().then(handleAccounts);
  });
}
function handleAccounts(response) {
  // Handles the response from the accounts list method.
  if (response.result.items && response.result.items.length) {
    // Get the first Google Analytics account.
    var firstAccountId = response.result.items[0].id;

    // Query for properties.
    queryProperties(firstAccountId);
  } else {
    console.log('No accounts found for this user.');
  }
}

function queryProperties(accountId) {
  // Get a list of all the properties for the account.
  gapi.client.analytics.management.webproperties.list(
      {'accountId': accountId})
    .then(handleProperties)
    .then(null, function(err) {
      // Log any errors.
      console.log(err);
  });
}


function handleProperties(response) {
  // Handles the response from the webproperties list method.
  if (response.result.items && response.result.items.length) {

    // Get the first Google Analytics account
    var firstAccountId = response.result.items[0].accountId;

    // Get the first property ID
    var firstPropertyId = response.result.items[0].id;

    // Query for Views (Profiles).
    queryProfiles(firstAccountId, firstPropertyId);
  } else {
    console.log('No properties found for this user.');
  }
}

function queryProfiles(accountId, propertyId) {
  // Get a list of all Views (Profiles) for the first property
  // of the first Account.
  gapi.client.analytics.management.profiles.list({
      'accountId': accountId,
      'webPropertyId': propertyId
  })
  .then(handleProfiles)
  .then(null, function(err) {
      // Log any errors.
      console.log(err);
  });
}
function handleProfiles(response) {
  // Handles the response from the profiles list method.
  if (response.result.items && response.result.items.length) {
    // Get the first View (Profile) ID.
    var firstProfileId = response.result.items[0].id;

    // Query the Core Reporting API.
    countryViews(firstProfileId);
    deviceCategory(firstProfileId);
  } else {
    console.log('No views (profiles) found for this user.');
  }
}
function countryViews(profileId) {
  // Query the Core Reporting API for the number sessions for
  // the past seven days.
  gapi.client.analytics.data.ga.get({
    'ids': 'ga:' + profileId,
    'start-date': '7daysAgo',
    'end-date': 'today',
    'dimensions': 'ga:country',
    'metrics': 'ga:pageviews',
  })
  .then(function(response) {
    var formattedJson = JSON.stringify(response.result, null, 2);
	  var ravidata=JSON.parse(formattedJson)
	  //console.log(ravidata.rows)
	  for(var i=0;i<ravidata.rows.length;i++){
//		  console.log(ravidata.rows[i][0]+'---'+ravidata.rows[i][1])
	  }
	  	  
	 localStorage.setItem("countryvisit",JSON.stringify(ravidata.rows));

	  
    document.getElementById('query-output').value = formattedJson;
  })
  .then(null, function(err) {
      // Log any errors.
      console.log(err);
  });
}

var device;

function deviceCategory(profileId) {
  // Query the Core Reporting API for the number sessions for
  // the past seven days.
  gapi.client.analytics.data.ga.get({
    'ids': 'ga:' + profileId,
    'start-date': '7daysAgo',
    'end-date': 'today',
    'dimensions': 'ga:deviceCategory',
    'metrics': 'ga:pageviews',
  })
  .then(function(response) {
    var formattedJson = JSON.stringify(response.result, null, 2);
	  var ravidata=JSON.parse(formattedJson)
	  //console.log(ravidata.rows)
	  localStorage.setItem("devicevisit",JSON.stringify(ravidata.rows));
	  for(var i=0;i<ravidata.rows.length;i++){
		  
		 // localStorage.setItem("devicevisit",ravidata.rows[i]);
		  
	  }
    document.getElementById('query-output1').value = formattedJson;
  })
  .then(null, function(err) {
      // Log any errors.
      console.log(err);
  });
}	

  // Add an event listener to the 'auth-button'.
  document.getElementById('auth-button').addEventListener('click', authorize);
	
		
</script>
<script type="text/javascript">

//console.log(JSON.parse(window.localStorage.getItem("countryvisit")));
	
$(function() {
  'use strict';	
	
  var chart = c3.generate({
    bindto: '#visitor',
    data: {
      columns: JSON.parse(window.localStorage.getItem("devicevisit")),

      type: 'donut',
      onclick: function(d, i) {
        console.log('onclick', d, i);
      },
      onmouseover: function(d, i) {
        console.log('onmouseover', d, i);
      },
      onmouseout: function(d, i) {
        console.log('onmouseout', d, i);
      }
    },
    donut: {
      label: {
        show: false
      },
      title: 'Visits',
      width: 25
    },

    legend: {
      hide: false
      //or hide: 'data1'
      //or hide: ['data1', 'data2']
    },
    color: {
      pattern: ['#4798e8', '#ff7676', '#f6f6f6']
    }
  });					
			
					

	
	
$.ajax({
	
	type : "post",
	data : {id:JSON.parse(window.localStorage.getItem("countryvisit"))},
//	dataType : 'json',
	url : "<?php echo base_url("dashboard/getLatlon") ?>",
	success : function(data){
		//console.log(data)
		var codata=[]
		var fdata=JSON.parse(data)
		
		for(var i=0;i<fdata.length;i++){
			var latl=[]
			latl.push(parseFloat(fdata[i].lat))
			latl.push(parseFloat(fdata[i].lon))
			
			
		//console.log(parseFloat(fdata[i].lat) +'--'+parseFloat(fdata[i].lon) )
			codata.push({
				"latLng":latl,
				"name":fdata[i].name
			})
		}
		//console.log(JSON.parse(JSON.stringify(codata)));
		
//		var test = data;
//		var cdata = data.replace("\"[", "[");
//		var cdata1 = cdata.replace("\"]", "]");
		
//		$.each(data, function (i) {
//			$.each(data[i], function (key, val) {
//				alert(key + val);
//			});
//		});

		//console.log(cdata1);
		
//		console.log(test);
		
		window.localStorage.setItem("counvisit",JSON.stringify(codata));
		
	},
	error : function(data){
		
		console.log(data);
	}
	
});	
	

var str = JSON.parse(window.localStorage.getItem("counvisit"));

//var s1 = str.replace(/"(\d[.]\d+)"/g,"$1")	
	
//console.log(s1);

	
 jQuery('#visitfromworld').vectorMap({
    map: 'world_mill_en',
    backgroundColor: 'transparent',
    borderColor: '#000',
    borderOpacity: 0,
    borderWidth: 0,
    zoomOnScroll: false,
    color: '#93d5ed',
    regionStyle: {
      initial: {
        fill: '#bce2fb',
        'stroke-width': 1,
        stroke: '#fff'
      }
    },
    markerStyle: {
      initial: {
        r: 5,
        fill: 'green',
        'fill-opacity': 1,
        stroke: '#93d5ed',
        'stroke-width': 1,
        'stroke-opacity': 1
      }
    },
    enableZoom: true,
    hoverColor: '#79e580',
    markers: str,
	 
	 
    hoverOpacity: null,
    normalizeFunction: 'linear',
    scaleColors: ['#93d5ed', '#93d5ee'],
    selectedColor: '#c9dfaf',
    selectedRegions: [],
    showTooltip: true,
//    onRegionClick: function(element, code, region) {
//      var message =
//        'You clicked "' +
//        region +
//        '" which has the code: ' +
//        code.toUpperCase();
//      alert(message);
//    }
  });	
});		
	
</script>

<script src="https://apis.google.com/js/client.js?onload=authorize"></script>   
