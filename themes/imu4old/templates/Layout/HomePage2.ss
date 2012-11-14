<script type="text/javascript" src="/mysite/code/javascript/jquery.js"></script>
<script type="text/javascript" src="/mysite/code/javascript/ui.core.js"></script>
<script type="text/javascript" src="/mysite/code/javascript/ui.tabs.js"></script>
<script type="text/javascript">
	$(function() {
		$("#tabs").tabs({
			event: 'mouseover'
		});
	});
	</script>

<div id="subfeature-wrapperA" >
  <div id="typeA-feature1">
  	<div onclick="location.href='$MainImageURL';" id="image-link"></div>
    <div id="subfeature-column">
      <ul id="subfeature-column-list">
        <% control EventsLimited %>
        <li> <a href="$EventUrl">$EventImage</a>
          <h6>$EventType</h6>
          <h2><a href="$EventUrl">$Title</a></h2>
          <% if EventDate %>
          <br/>
          <h3>$EventDate.ShortMonth $EventDate.DayOfMonth, $EventDate.Year </h3>
          <% end_if %>
           <% if EventTime %>
          <br/>
          <h4>$EventTime.Nice $EventLocation</h4>
          
          <% else %>
          	
          	<h4>$EventLocation</h4>
          
          <% end_if %>
        </li>
        <% end_control %>
      </ul>
    </div>
  </div>
  <div id="subfeature2">
    <h4>NEWS</h4>
     <a href="/news/rss/"><img class="rss" src="$ThemeDir/images/rss.gif" alt="rss" /></a>
   
  
   
    <% control NewsLimited %>
    <h1>$Title</h1>
    <p>$Content</p>
    <% end_control %>

     <div id="connect">  <a href="http://www.facebook.com/pages/Iowa-City-IA/Iowa-Memorial-Union-IMU/64131067165?ref=share"><img class="connect" src="$ThemeDir/images/home_fac.png" alt="rss" /></a>
  <a href="http://www.flickr.com/photos/imubuddy"><img  class="connect" src="$ThemeDir/images/home_fli.png" alt="rss" /></a>
    <a href="http://twitter.com/imubuddy/"><img  class="connect" src="$ThemeDir/images/home_twi.png" alt="rss" /></a> <h3>Connect Here</h3></div>
    <h1>Follow the IMU on Facebook &amp; Twitter</h1>
    <p><p>For the latest news and events, follow the IMU on Twitter at <a href="http://twitter.com/imubuddy" target="_blank">twitter.com/IMUBuddy</a> or become a friend and fan of the <a href="http://www.facebook.com/pages/Iowa-City-IA/Iowa-Memorial-Union-IMU/64131067165?ref=share">IMU on Facebook</a>!</p>

  </div>
  
  <div id="typeA-subfeature3">
 <h4>IOWA MEMORIAL UNION</h4>    <div id="search">
    <form method="get" action="http://search.uiowa.edu/search">
    <img class="imulogo" src="$ThemeDir/images/imulogo2.png" alt="imu logo" />
<input type="text" name="q" size="12" maxlength="256"/>
<input type="submit"id="go" class="searchbutton"  name="btnG" value="Go" />
<input type="hidden" name="site" value="default_collection" />

<input type="hidden" name="client" value="default_frontend" />
<input type="hidden" name="output" value="xml_no_dtd" />
<input type="hidden" name="proxystylesheet" value="default_frontend" />
<input type="hidden" name="sitesearch" value="imu.uiowa.edu" />
</form>
    </div>
  </div>
  <div id="typeA-subfeature1">

    
    
    <div id="demo">
      <div class="ui-tabs" id="tabs">
        <ul class="ui-tabs-nav">
          <li class="ui-corner-top ui-tabs-selected ui-state-active"><img src="$ThemeDir/images/icon1.gif" width="30" height="26" /><a href="#tabs-1">$Tab1Title</a></li>
          <li class="ui-corner-top ui-state-default"><img src="$ThemeDir/images/icons2.gif" width="30" height="26" /><a href="#tabs-2">$Tab2Title</a></li>
          <li class="ui-corner-top ui-state-default"><img src="$ThemeDir/images/icons3.gif" width="30" height="26" /><a href="#tabs-3">$Tab3Title</a></li>
          <li class="ui-corner-top ui-state-default"><img src="$ThemeDir/images/icons4.gif" width="30" height="26" /><a href="#tabs-4">$Tab4Title</a></li>
          <li class="ui-corner-top ui-state-default"><img src="$ThemeDir/images/icons5.gif" width="30" height="26" /><a href="#tabs-5">$Tab5Title</a></li>
        </ul>
        <div class="ui-tabs-panel ui-widget-content ui-corner-bottom" id="tabs-1">
          <div class="link-block1"> $TabContent1a </div>
          <div class="link-block1"> $TabContent1b </div>
        </div>
        <div class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide" id="tabs-2">
          <div class="link-block1"> $TabContent2a </div>
          <div class="link-block1"> $TabContent2b </div>
        </div>
        <div class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide" id="tabs-3">
          <div class="link-block1"> $TabContent3a </div>
          <div class="link-block1"> $TabContent3b </div>
        </div>
        <div class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide" id="tabs-4">
          <div class="link-block1"> $TabContent4a </div>
          <div class="link-block1"> $TabContent4b </div>
        </div>
        <div class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide" id="tabs-5">
          <div class="link-block1"> $TabContent5a </div>
          <div class="link-block1"> $TabContent5b </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--footer differs from page.ss footer </div>
    
    
    <div id="foot_bevel_home">  
  
</div>

<div id="footer_home">  
  
</div>
  
  <div id="footer2_home">  
 
         <div class="foot-block22">
		<p>© <a href="http://imu.uiowa.edu/wordpress/">The University of Iowa</a> 2008.  All rights reserved.   | <a href="http://imu.uiowa.edu/wordpress/">Contact Us</a> | <a href="http://imu.uiowa.edu/wordpress/">Building Directory</a></p>

	</div>


  </div>
  
</div>-->
