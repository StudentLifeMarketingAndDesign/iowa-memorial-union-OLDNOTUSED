<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$Title</title>
<style type="text/css" media="screen">

img {
	border: 0;
}

</style>

</head>

<body>
<table width="400" border="0" align="center" cellspacing="3">


<tr><td><p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Having trouble viewing this email? 
                 <webversion>View it in your <a href="http://imu.uiowa.edu/$URLSegment" target="_blank">browser</a></webversion>.</p></td>
				 </tr>


 <tr>
 <td><font face="Arial, Helvetica, sans-serif" size="2">
 $Content
 </font></td>
 </tr>
 
  <tr>
    <td>
    <% if ImageURL %><a href="$ImageURL"><% end_if %>
    <img src="$BaseHref$MainImage.URL" width="500" height="636" alt="$Content.NoHTML" border=0 />
    <% if ImageURL %></a><% end_if %>
    
    </td>
  </tr>
</td>
  </tr>

  <tr>
    <td bgcolor="#FFFFFF"><div align="center"><font size="1" face="Arial, Helvetica, sans-serif">$FooterText</font></div></td>

  </tr>
</table>
<% include NewsletterImageTracking %>
</body>
</html>
