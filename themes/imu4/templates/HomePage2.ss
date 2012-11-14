<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>

<base href="http://imu.uiowa.edu/" />

<title>$Title - Iowa Memorial Union - The University of Iowa</title>

$MetaTags(false)
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link href="/news/rss/" type="application/rss+xml" rel="alternate" title="Sitewide RSS Feed" />
<script type="text/javascript" src="/mysite/code/javascript/dropdown.js"></script>
<style type="text/css">

#typeA-feature1 {
	background: url($TitleImage.URL) no-repeat 0px -72px;
}

#minisite-header {
	background: url($TitleImage.URL) no-repeat;
	
}

img, div { behavior: url(/mysite/code/iepngfix.htc) }

</style>
</head>

<body>
<div id="bodywrap">

<div id="ui-logo"><a href="http://www.uiowa.edu"><img src="themes/imu4/images/uiowa-logo.gif" alt="The University of Iowa" longdesc="http://www.uiowa.edu" /></a></div>
<% control Page(Alert) %>
	<% if Content1 %>
		$Content1
    <% end_if %>
        
<% end_control %>
<div id="nav-bkgrd-right">
 </div>
 <div id="logo"><a href="http://imu.uiowa.edu"><img src="themes/imu4/images/imulogo.png" alt="Iowa Memorial Union" longdesc="http://imu.uiowa.edu" /></a> </div>
 
 <div id="navwrapper">
 
 <% include Navigation %>

</div>
 <div id="breadcrumbs">
  <p>$Breadcrumbs</p>  </div>
  
   <% include Search %>
   <!-- <div id="minisite-header"><a href="http://imu.uiowa.edu/osl"><img src="$ThemeDir/images/STUDENTLEADERSHIP.gif" alt="Student Leadership" width="213" height="60" /></a> </div>-->
   
   
  <div id="minisite-header">
   <% if TitleImage %>
   <a href="#">$TitleImage</a>
   <% else %>
   	<h1>HELLO</h1>
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

</body>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-426753-1");
pageTracker._trackPageview();
} catch(err) {}</script>
</html>

