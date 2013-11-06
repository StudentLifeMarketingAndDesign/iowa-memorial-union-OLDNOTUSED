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



    <div id="content1">
        <div id="slider-wrapper">
					        
					            <div id="slider" class="nivoSlider">
					               
					              <% if ContentImage %>
					              <img src="$ContentImage.URL" alt="$ContentImageCaption" title="$ContentImageCaption" />
					              <% end_if %>
					               
					              <% if ContentImage2 %>
					              <img src="$ContentImage2.URL" alt="$ContentImageCaption2" title="$ContentImageCaption2" />
					              <% end_if %>
					               
					              <% if ContentImage3 %>
					              <img src="$ContentImage3.URL" alt="$ContentImageCaption3" title="$ContentImageCaption3" />
					              <% end_if %>
					               
					              <% if ContentImage4 %>
					              <img src="$ContentImage4.URL" alt="$ContentImageCaption4" title="$ContentImageCaption4" />
					              <% end_if %>
					               
					              <% if ContentImage5 %>
					              <img src="$ContentImage5.URL" alt="$ContentImageCaption5" title="$ContentImageCaption5" />
					              <% end_if %>
					              
					              
					            </div>
					   
					        
					        </div>
    $Content1
    
    	<h2>Honor Roll</h2>
    		$HonorRoll

   
    	

    	<div class="clear"></div>  
    	<h2>Documents</h2>
    		<div id="col1">
    			<a href="assets/iowaandwar.pdf"><img src = "assets/IowaAndWar.png" width="325" ></a>
    			<strong>Iowa and War: The State University of Iowa and the Civil War</strong><p>by <b>  Ellen M. Rich</b><br>
Published by the State Historical Society of Iowa, 1918<br /><a href="assets/iowaandwar.pdf">Download the PDF</a></p>
    		</div>
    		<div id="col2">
    			<a href="assets/fortheiowadead001.pdf"><img src = "assets/FortheIowaDead.png" width="336"></a>
    			<strong>For the Iowa Dead</strong><p> by <b>Paul Engle </b> <br>
Written for a Service of Dedication at the State University of Iowa, 25 March 1956<br />
<a href="assets/fortheiowadead001.pdf">Download the PDF</a></p>
    		</div>
    	<div class = "clear"></div>
       	<h2>Memorials</h2>
    		$Memorials
    	
    	
    	
    </div>
  <div class="clear"></div>  
  </div>
