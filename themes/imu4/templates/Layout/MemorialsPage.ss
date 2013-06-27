<head>

<script type="text/javascript" src="themes/imu4/javascript/jquery.nivo.slider.js"></script>
		<link rel="stylesheet" type="text/css" href="themes/imu4/css/nivo-slider.css"/>
		<script type="text/javascript">
			$(window).load(function() {
			    $('#slider').nivoSlider({
			    pauseTime: 6000,
			    controlNav:false
			    }); 
			});
		</script>
        
</head>

<body>

<div id="content-container" class="slider">

<span class="main-feature-tabs2"> </span>
  <div id="interior-links-wrapper">
    <% include SubNavigation %>
    <% include Ads %>
  </div>

    
    </div>
    <div id="content1">
        <div id="slider-wrapper">
					        
					            <div id="slider" class="nivoSlider">
					               
					               
					              <a href=""><img src="assets/Uploads/Memorials.jpg" alt="Lorem Ipsum Dolor Sit Amet" /></a>
					               
					              
					              
					            </div>
					   
					        
					        </div>
    $Content1
    
    	<div id="col1">
    	<h2>Honor Role</h2>
    		$HonorRole
    		<br />
    	<h2>Memorials</h2>
    		$Memorials
    	</div>
    	
  		<div id="col2">
  		<h2>Share Your Story</h2>
   			$ShareYourStory
    	</div>
    	
    	
    	
    </div>
  <div class="clear"></div>  
  </div>
