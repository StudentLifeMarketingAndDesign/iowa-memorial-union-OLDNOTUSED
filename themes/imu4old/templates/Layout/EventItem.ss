<style>

#main-image-wrapper {

	background-image: url(
	
	<% control EventImage.SetWidth(480) %>
	
	$Filename
	
	<% end_control %>
	);
}

</style>

<div id="content-wrapper">
  <div id="main-image-wrapper" ><a href="http://imu.uiowa.edu/now"><img src="$ThemeDir/images/now2/now_corner.png" class="corner"/></a>   <div id="info"><h1>$Title</h1>
 <h2><h2>
    <% if EventDateAlt %>
    	$EventDateAlt <br />
    <% else %>
    	$EventDate.Format(F j)<br />
    <% end_if %>
    	$EventTime <br /></h2>
        
        <h3>$EventLocation <br />
        $EventPrice </h3> <p><br><p>
		
		   
		    <div id="links">
    	<center><img src="$ThemeDir/images/share.png" class="title_image" />
        <br />
        <ul>
        	<!--<li><a href="#"><img src="$ThemeDir/images/now2/rss_icon.png" /></a></li>-->
			<li><a href="http://twitter.com/home?status=$Title -  $AbsoluteLink"><img src="$ThemeDir/images/now2/twitter_icon.png" /></a></li>
            <li><a href="http://www.facebook.com/sharer.php?u=$AbsoluteLink"><img src="$ThemeDir/images/now2/facebook_icon.png" /></a></li>
            <li><a href="mailto:?subject=$Title&body=$AbsoluteLink"><img src="$ThemeDir/images/now2/email_icon.png" /></a></li>
        </ul></center>
    </div>
	
	</div></div>
	

  <div id="single_event">
  	
    <h3>What's Happening</h3>
    <p>$EventDescription</p>
   
    

    

  </div>

<br><p><br><p><br><p style="font-size: 9px;"><center>Individuals with disabilities are encouraged to attend all University of Iowa sponsored events. If you are a person with a disability who requires accommodation in order to participate in this program, please call 319-335-3059 or write osl@uiowa.edu in advance.</p>  </center>
  
</div>
<div id="interior-links-wrapper">
  <% include SubNavigation %>
  <% include Ads %>
</div>
