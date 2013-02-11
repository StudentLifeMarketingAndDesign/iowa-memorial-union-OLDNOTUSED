<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US"><head>
<% base_tag %>

<title>
<% if SeoTitle %>
$SeoTitle
<% else %>
$Title - Iowa Memorial Union - The University of Iowa
<% end_if %>
</title>
$MetaTags(False)
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/ie7/{$ClassName}_ie7.css" />
<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/ie7/page_ie7.css" />
<![endif]-->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<script type="text/javascript" src="//use.typekit.net/rex6hem.js"></script>
<script type="text/javascript">try{Typekit.load();}catch(e){}</script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script type="text/javascript" src="$ThemeDir/javascript/jquery-ui-1.8.6.custom.min.js"></script>
<script type="text/javascript" src="$ThemeDir/javascript/topup/javascripts/top_up-min.js"></script>
<script type="text/javascript">
TopUp.images_path = "$ThemeDir/javascript/topup/images/top_up/";
TopUp.players_path = "$ThemeDir/javascript/topup/players/";
function hideTopUp() {
  TopUp.close();
}
$(document).ready(function leaveFrame() {
  if (window!=window.top) {
	var str = String(window.location.href);
    if (str.indexOf("feedback/finished") > 0) {
      window.location = "http://imu.uiowa.edu/feedback-small-thanks";
	}
  }
});
</script>
<script type="text/javascript" src="/mysite/code/javascript/dropdown.js"></script>
<script type="text/javascript" src="$ThemeDir/javascript/rooms.js"></script>
<link rel="stylesheet" type="text/css" href="$ThemeDir/css/rooms.css" />
<% if customCSS %><link rel="stylesheet" type="text/css" href="http://imu.uiowa.edu/themes/imu4/css/customCSS/$customCSS" /><% end_if %>
          
<% if ClassName = EventItem %>  
<meta name="title" content="$Title" />
<link rel="image_src" href="{$BaseHref}$EventImage.URL" / > 
<% end_if %>
</head>

<body>
<!-- alert -->
<% include DivisionBarNonResponsive %>




<!-- end alert -->

<!-- Page control & $LinkingMode hide feedback if on feedback page -->
<% control Page(feedback) %>
<div id="feedback1" style="position: fixed; left: 0px; top: 300px; width: 100px; height: 100px;" class="feedback_$LinkingMode"><a href="http://imu.uiowa.edu/feedback-small" class="tu_iframe_450x550"><img src="/$ThemeDir/images/feedback.png" alt="Feedback"></a></div>
<% end_control %>
<!--NEW MOBILES STYLES
<link rel="stylesheet" href="http://imu.uiowa.edu/themes/imu4/css/screen.css" media="screen"/> 
<link rel="stylesheet" href="http://imu.uiowa.edu/themes/imu4/css/mobile.css" media="handheld,
only screen and (max-device-width:480px)"/
-->


<style>

<% if ClassName = HomePage %>

#typeA-feature1 {
	background: url($ContentImage.URL) no-repeat 0px -72px;
}

#minisite-header {
	background: url($ContentImage.URL) no-repeat;
	
}

<% end_if %>

img, div { behavior: url(/mysite/code/iepngfix.htc) }

</style>
<div id="bodywrap">

<% include NavigationBar %>


<!-- alert 

<div style="height: 24px; background-color: #093; width: 100%;">

<h2 style="color: #FFF; font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 14px; padding-top: 4px;">
	* The IMU is CLOSING EARLY today at 4:30pm. <a style="color: #fff;" href="http://imu.uiowa.edu/news/2011/02/02/cancellations-and-imu-weather-updates/">More IMU info here</a> or check the <a style="color: #fff;" href="http://www.uiowa.edu/homepage/severe-weather/">UI Severe Weather page</a> for updates.
</h2>

</div>

end alert -->

 <div id="breadcrumbs">
  <p>$Breadcrumbs</p>  </div>
  
   <% include Search %>
   <!-- <div id="minisite-header"><a href="http://imu.uiowa.edu/osl"><img src="$ThemeDir/images/STUDENTLEADERSHIP.gif" alt="Student Leadership" width="213" height="60" /></a> </div>-->
   
   
  <div id="minisite-header">
   <% if TitleImage %>
   $TitleImage
   <% else %>
   	<h1>$Title</h1>
   <% end_if %>
</div>


$Layout



<div id="foot_bevel">  
  
</div>

<div id="footer">  
  
</div>
  
  <div id="footer2">  
  <% include Footer %>


  </div>
  
</div>
<div id="modal_container">
        <div id="modal">
        </div>
    </div>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-426753-1']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>

</body>
</html>

