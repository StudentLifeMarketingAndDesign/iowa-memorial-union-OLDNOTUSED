<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<base href="$BaseHref" />
<title>$Title - Iowa Memorial Union - The University of Iowa</title>

<% control Page(home) %>
$MetaTags(False)
<% end_control %>
<% if URLSegment = home %>

<% else %>
$MetaTags(False)
<% end_if %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<script type="text/javascript" src="/mysite/code/javascript/dropdown.js"></script>
<% if customCSS %><link rel="stylesheet" type="text/css" href="http://imu.uiowa.edu/themes/imu4/css/customCSS/$customCSS" /><% end_if %>
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
</head>
<body>
<div id="bodywrap">

<iframe src="http://www.facebook.com/plugins/like.php?href=http://www.facebook.com/uiowa.imu&amp;layout=standard&amp;show_faces=false&amp;width=450&amp;action=like&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true" style="border:none; overflow:hidden; width:450px; height:60px"></iframe><br>

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

