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
					               
					              <% if ContentImage %>
					              <a href=""><img src="$ContentImage.URL" alt="$ContentImageCaption" title="$ContentImageCaption" /></a>
					              <% end_if %>
					               
					              <% if ContentImage2 %>
					              <a href=""><img src="$ContentImage2.URL" alt="$ContentImageCaption2" title="$ContentImageCaption2" /></a>
					              <% end_if %>
					               
					              <% if ContentImage3 %>
					              <a href=""><img src="$ContentImage3.URL" alt="$ContentImageCaption3" title="$ContentImageCaption3" /></a>
					              <% end_if %>
					               
					              <% if ContentImage4 %>
					              <a href=""><img src="$ContentImage4.URL" alt="$ContentImageCaption4" title="$ContentImageCaption4" /></a>
					              <% end_if %>
					               
					              <% if ContentImage5 %>
					              <a href=""><img src="$ContentImage5.URL" alt="$ContentImageCaption5" title="$ContentImageCaption5" /></a>
					              <% end_if %>
					              
					              
					            </div>
					   
					        
					        </div>
    $Content1
    
    	<div id="col1">
    	<h2>Honor Roll</h2>
    		$HonorRoll
    		<br />
    	</div>
    	
  		<div id="col2">
  		<iframe align="center" src="http://www.flickr.com/slideShow/index.gne?group_id=&user_id=&set_id=72157634450600924&text=" frameBorder="0" width="324" height="324" scrolling="no"></iframe><br/>
  		<!--
  		<h2>Share Your Story</h2>
   			$ShareYourStory
   			-->
    	</div>
    	<h2>Memorials</h2>
    		$Memorials
    	
    	
    	
    </div>
  <div class="clear"></div>  
  </div>
