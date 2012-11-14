<style>

#main-image-wrapper {

	background-image: url(
	
	<% control ContentImage.SetWidth(480) %>
	
	$Filename
	
	<% end_control %>
	);
}
</style>

<div id="content-wrapper">
<div id="main-image-wrapper" onClick="window .location .href='$MainFeatureURL'" >
<img src="$ThemeDir/images/now2/now_corner.png" class="corner"/>
 <div id="info"><h1>$MainFeatureTitle</h1>
 <h2>$MainFeatureDate $MainFeatureTime </h2><h3>$MainFeaturePlace </h3></div>
</div>
 <div id="social-media-wrapper">
 	<div id="links">
    
    <img src="$ThemeDir/images/now2/stay-connected-title.png" class="title_image" />
   	
        <ul>
        	<li><a href="rss/"><img src="$ThemeDir/images/now2/rss_icon.png" /></a></li> 
			<li><a href="http://twitter.com/imubuddy/"><img src="$ThemeDir/images/now2/twitter_icon.png" /></a></li>
            <li><a href="http://www.facebook.com/uiowa.imu"><img src="$ThemeDir/images/now2/facebook_icon.png" /></a></li>
            <li><a href="http://eepurl.com/batRA"><img src="$ThemeDir/images/now2/email_icon.png" /></a></li>
        </ul>
        
        <p style="font-size: 16px;">Connect to concerts, movies, lectures, and campus events via <a href="http://twitter.com/imubuddy">Twitter</a>, <a href="http://facebook.com/uiowa.imu">Facebook</a>, or <a href="http://eepurl.com/batRA">email</a>. We'll keep you posted regularly. Emails go out bi-weekly.
        <p> <a href="http://eepurl.com/batRA" style="text-decoration: none;">&raquo; Sign Up For Our Newsletter</a></p>
        <p> <a href="http://imu.uiowa.edu/connect/" style="text-decoration: none;">&raquo; More Ways to Stay Connected</a></p>
    </div>
	<div id="twitter_div">
		<img src="$ThemeDir/images/now2/recent_tweets.png" class="title_image" />
		<ul id="twitter_update_list"></ul>
		<a href="http://twitter.com/imubuddy" id="twitter-link">follow us on Twitter</a>
	</div>
<script type="text/javascript" src="http://twitter.com/javascripts/blogger.js"></script>
<script type="text/javascript" src="http://twitter.com/statuses/user_timeline/imubuddy.json?callback=twitterCallback2&amp;count=3"></script>
    
	<div class="clear"></div>
 </div>

  <div id="featured-event-wrapper">
  	<img src="$ThemeDir/images/now2/upcoming_events.png" class="title_image" />
    
 
 <% control EventItems %>
 
        
        <div class="featured-event">
        	<% if EventThumbnail %>
            <% if EventExternalUrl %><a href="$EventExternalUrl"><% else %><a href="$Link"><% end_if %><img src="$EventThumbnail.URL" height="108" width="219" /></a>
            <% else %>
    		 <% if EventExternalUrl %><a href="$EventExternalUrl"><% else %><a href="$Link"><% end_if %>$EventImage.SetWidth(217)</a>
            <% end_if %>
        	<div class="description">
        	<h1> <% if EventExternalUrl %><a href="$EventExternalUrl"><% else %><a href="$Link"><% end_if %><strong>$Title</strong></a><h2>
            <% if EventDateAlt %>
            $EventDateAlt
            <% else %>
                <% if EventDate %>
                    $EventDate.Format(F j)
                <% end_if %> 
            <% end_if %>
                
                <% if EventTime %>$EventTime <% end_if %> <% if EventLocation %>$EventLocation<% end_if %> </h2></h1>
            
        	$EventDescription.Summary(60,5) <% if EventExternalUrl %><a href="$EventExternalUrl"><% else %><a href="$Link"><% end_if %>[more]</a>
            
            
        </div>
    </div>
    <div class="clear"></div>
        
        
    <% end_control %> 

    

   </div>
   <div class="clear"></div>  

  
 

  
	<br><p style="font-size: 9px;"><center>
Individuals with disabilities are encouraged to attend all University of Iowa sponsored events. If you are a person with a disability who requires accommodation for a program, please call 319-335-3059 or write osl@uiowa.edu in advance.</p>
</center>

 

 <div id="events-wrapper">
 	<% control EventCategory %>
    <% if Title = NowHappeningLater %>
    <% if EventItem %>
 <img src="$ThemeDir/images/now2/happening_later.png" class="title_image" />
 <% end_if %>
 <% end_if %>
 <% end_control %>
 <div id="events">
	<% control EventCategory %>
    <% if Title = NowHappeningLater %>
    <% if EventItem %>
    <% control EventItem %>
    
    	<div class="event $EvenOdd <% if First %>first<% end_if %>">
        	<h2>$Title</h2>
            <p class="event-date"><% if EventDateAlt %>
            $EventDateAlt,
            <% else %>
            	<% if EventDate %>
            		$EventDate.Format(n/d),
                <% end_if %> 
            <% end_if %><% if EventTime %> $EventTime <% end_if %></p>
            <p class="event-description">$EventDescription</p>
        </div>
 
    <% end_control %>
    <% end_if %>
    <% end_if %>  
    <% end_control %>
   
    </div>
 
 </div>
 
 

 
 </div>
   <div id="interior-links-wrapper">
    <% include SubNavigation %>
    <% include Ads %>
  </div>