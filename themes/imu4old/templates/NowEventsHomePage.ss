<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>

<base href="http://imu.uiowa.edu/" />


<title>Now@IMU - Events, Entertainment, News - Iowa Memorial Union - The University of Iowa - Iowa City, Iowa</title>



<link rel="alternate" type="application/rss+xml" title="Now@IMU" href="http://imu.uiowa.edu/now/rss"/>


<script type="text/javascript" src="/mysite/code/javascript/dropdown.js"></script>
<script type="text/javascript" src="/mysite/code/javascript/jquery.js"></script>
<script type="text/javascript" src="/mysite/code/javascript/thickbox.js"></script>

<style type="text/css">
img, div { behavior: url(/mysite/code/iepngfix.htc) }
</style> 

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" /><style type="text/css">
  <style type="text/css" media="screen">
 <!-- 
  

    -->
</style>

<script language="javascript">
/* This detects the anchor number in the URL if available and trims it so we can read the event id without the hash (#) mark. */
$(document).ready(function(){
if(document.location.hash){

var event_id = (document.location.hash).split("#");
var event_id2 = event_id[1].split("?");
/* Show the thickbox upon page load */
tb_show(null,"/now-events-thickbox/"+event_id2[0]+"?TB_iframe=true&height=300&width=500");
}
});

</script>
</head>

<body><body id="page">
<div id="bodywrap-now">

<div id="ui-logo"><a href="http://www.uiowa.edu"><img src="$ThemeDir/images/now/Untitled-1.gif" alt="The University of Iowa" longdesc="http://www.uiowa.edu" /></a></div>

<div id="nav-bkgrd-right">
</div>
 <div id="logo"><a href="http://imu.uiowa.edu"><img src="$ThemeDir/images/now/imulogo.png" alt="Iowa Memorial Union"  longdesc="http://imu.uiowa.edu" /></a> </div>
 
 <div id="navwrapper">
 <% include Navigation %>
</div>


<div id="breadcrumbs">
  <p>$Breadcrumbs</p>  </div>
  
  <div id="search_box">
 <form method="get" action="http://search.uiowa.edu/search">
<input type="text" name="q" size="24" maxlength="256" value="" />
<input type="submit"id="go" class="searchbutton"  name="btnG" value="" />
<input type="hidden" name="site" value="default_collection" />

<input type="hidden" name="client" value="default_frontend" />
<input type="hidden" name="output" value="xml_no_dtd" />
<input type="hidden" name="proxystylesheet" value="default_frontend" />
<input type="hidden" name="sitesearch" value="imu.uiowa.edu" />
</form>
</div>
  

 <div id="minisite-header"><img src="$ThemeDir/images/now/rotate_d/{$randomColor}.png"/></div>

   

<div id="subfeature-wrapper3"> 
 

    
    <span class="main-feature-tabs2">
<span class="more4">- NOW@IMU  -</span>
</span>

<div id="column-design2" style="background-image:url($ThemeDir/images/now/rotate_f/{$randomColor}.jpg);"><a href="http://imu.uiowa.edu/now/"><img src="$ThemeDir/images/now/rotate_e/{$randomColor}.png"/></a> 
<h1><a href="$MainFeatureURL">$MainFeatureTitle</a></h1>
       
      <ul id="now-feature">
 <li>
<p class="performance floatLeft greyItalic">$MainFeatureCategory</p>
<p class="floatRight greyItalic supportedBy">$MainFeatureDate.Format(l), $MainFeatureDate.Format(F j)</p><div class="cleaner"></div>


        <p class= "now-feature-text">$MainFeatureText</p>
  
  <span class="smallDash">&#8212;</span><a href="$MainFeatureURL"> read more</a>        </p>
        <p class="floatRight greyItalic Location">$MainFeatureLocation</p>
 </li>
 </ul>

</div>
      
      
      
         
 <div id="main-feature3">
 	<img src="$ContentImage.URL" alt="$MainFeatureTitle Image" width="358" height="424" />
 </div> 

    
  <div id="interior-links-wrapper"><img class="name" src="$ThemeDir/images/now/nowimu.png" />



  <ul class= "interiorlinks"><br />
    <li><a href="http://imu.uiowa.edu/now/rss" class="external-link" target="_blank">Now News Feed&nbsp;<!--<img src="$ThemeDir/images/now/rss.gif" width="12" height="12" style="margin-top: 2px; margin-bottom: -4px;">--></a></li>
 	<li><a href="http://calendar.uiowa.edu" class="external-link" target="_blank">Master Calendar of Events</a></li>
    <li><a href="http://www.uiowa.edu/artsiowa/" class="external-link" target="_blank">Arts Calendar</a></li>
    <li><a href="http://www.uiowa.edu/%7Ebijou/" class="external-link" target="_blank">Bijou Theater</a></li>
    <li><a href="http://www.scopeproductions.org" class="external-link" target="_blank">SCOPE (Concerts)</a></li>
    <li><a href="http://imu.uiowa.edu" class="external-link" target="_blank">Iowa Memorial Union</a></li>
    <li><a href="http://www.uiowa.edu/%7Eevents/index.html" class="external-link" target="_blank">UI Events This Week</a></li>
    <li><a href="http://imu.uiowa.edu/cab/" target="_blank">Campus Activities Board</a></li>

  </ul>
    <a href="https://list.uiowa.edu/scripts/wa.exe?SUBED1=NOW-AT-IMU&amp;A=1" target="_blank"><img class="ad2" src="$ThemeDir/images/now/ad6.png"/></a>
  
  <a href="http://imu.uiowa.edu/now/rss" target="_blank"><img class="ad" src="$ThemeDir/images/now/now_rss.png"/></a>
  
 
  
  <% include Ads %>
  
</div>
 
    
  
     <div id="subfeature1">
<img src="$ThemeDir/images/now/now2.png" alt="Now" height="28" width="395" class="now2">
  <ul id="featureList">
  
  <!-- bad code. bad bad. (ben, 1/19/10)
    
  <<% if nowEvents %>
  Test
	<% control nowEvents(firstHalf, 33) %>
 	<li>
    	<div class="cleaner3">
        	<p class="$category floatLeft greyItalic">$category</p>
        </div>
        <div class="featureDetails">
        	<img alt="" class="floatLeft" src="$image" border="0" 
		  		height="80" width="80" /></a>
            <div class="floatLeft textDetail">
                <h2 class="entry-title">
                    <a href="/now-events-thickbox/{$id}&TB_iframe=true&height=300&width=500" class="thickbox">$name</a>
                </h2>
                    
                <p class="overview entry-summary">$description
                    
                   
                    <a href="http://imu.uiowa.edu/now/#{$id}">
                        permanent link
                    </a>
                </p>
                <p class="floatRight greyItalic Location">$location $time</p>
            </div>
        	<div class="cleaner"></div>
		</div><div id="leftTexture">$date</div></li>
    <% end_control %> -->

    
 </ul>
 
 <% else %>
<li><div class="featureDetails">$NoEventsText</div></li>
 <% end_if %>
      
</div>



<div id="subfeature2"> 


<img src="$ThemeDir/images/now/tweets.gif" alt="Tweets" width="348" height="28" class="later">


<div id="twitter_div">
<ul id="twitter_update_list"></ul>
<a href="http://twitter.com/imubuddy" id="twitter-link" style="display:block;text-align:right;">follow us on Twitter</a>
</div>


<% if nowEvents %>
<img src="$ThemeDir/images/now/later2.png" alt="Later" width="348" height="28" class="later">
<% end_if %>

<ul id="featureList">
<% control nowEvents(lastHalf, 33) %>
<li>
	<div class="cleaner2">
    	<p class="$category floatLeft greyItalic">$category</p>
    </div>
    <div class="featureDetailsCenter">
    	<img alt="" class="floatLeft" src="$image" border="0" 
		  height="80" width="80" /></a>
        <div class="floatLeft textDetailCenter">
            <h2 class="entry-title">
               <a href="/now-events-thickbox/{$id}&TB_iframe=true&height=300&width=500" class="thickbox">$name</a>
            </h2>
                
            <p class="overview entry-summary">$description
                
                <a href="http://imu.uiowa.edu/now/#{$id}">permanent link</a>
            </p>
    
            <p class="floatRight greyItalic Location">$location: $time</p></div><div class="cleaner">
       </div>
				
   </div>
   
 
   <div id="bottomTexture">$date</div></li>
<% end_control %>
 </ul>
      
</div>

</div>

    
      

<div id="foot_bevel">  
  
</div>

<div id="footer">  
  
</div>
  
  <div id="footer2">  
  <% include Footer %>
  
</div>
        

<script src="http://www.google-analytics.com/urchin.js"
type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-426753-8";
urchinTracker();
</script>
<script type="text/javascript" src="http://twitter.com/javascripts/blogger.js"></script>
<script type="text/javascript" src="http://twitter.com/statuses/user_timeline/imubuddy.json?callback=twitterCallback2&amp;count=3"></script>
</body></html>