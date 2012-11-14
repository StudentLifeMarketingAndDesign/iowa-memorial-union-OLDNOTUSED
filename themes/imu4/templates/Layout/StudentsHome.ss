
<script type="text/javascript" src="/mysite/code/javascript/jquery.js"></script>
<script type="text/javascript" src="/mysite/code/javascript/thickbox.js"></script>
<div id="minisite-header2"></div>
<div id="subfeature-wrapper2">
  <div id="interior-links-wrapper">
    <% include SubNavigation %>
    <% include Ads %>
  </div>
  <div id="content-wrapper1">
    <div id="content3">
      <div id="content1">
        <h1>Now@IMU </h1>
      
        <% control NowEvents(3) %>
        <h3><a href="$Link">$Title</a></h3>
        <% end_control %>
        <h2>Connect to the IMU </h2>
        <h4>Friend us on Facebook:</h4>
        <a href="http://www.facebook.com/uiowa.imu"><img src="$ThemeDir/images/students/facebook.png" /></a>
        <h5><a href="http://www.facebook.com/uiowa.imu">IMUbuddy</a></h5>
        <br/>
        <h4>Find our Flickr Photostream:</h4>
        <a href="http://www.flickr.com/photos/imubuddy"> <img src="$ThemeDir/images/students/flickr.png" /></a>
        <h5><a href="http://www.flickr.com/photos/imubuddy">imubuddy</a></h5>
        <br/> 
        <h4>Follow us on Twitter:</h4>
        <a href="http://twitter.com/IMUBuddy"><img src="$ThemeDir/images/students/twitter.png" /></a>
        <h5><a href="http://twitter.com/IMUBuddy">@imubuddy</a></h5>
        <br/><br/> <br/>
      </div>
      <div id="content2">
        <h1>Make IMU yours. How can we help?</h1>
        $Content1 </div>
		
    </div>
	
  </div>
  
</div>
