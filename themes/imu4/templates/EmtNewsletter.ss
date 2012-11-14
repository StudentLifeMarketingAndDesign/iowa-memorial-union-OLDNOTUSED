<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$Title - Event Planner News - Campus Event Services</title>
</head>
<body>
<style type="text/css" media="screen">

img {
	border: 0;
}

body {
	
	background: #bfbfbf;
}

</style>
<table width="600" border="0" align="center" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" >
  <tr>
    <td><img src="http://imu.uiowa.edu/themes/imu4/images/emt_newsletter/header.png" /></td>
  </tr>
  
      <!-- control ContentBoxes -->
      <% control Children %>
      <tr>
        <td bgcolor="#ffffdc">
          <table width="100%" border="0" cellspacing="10">
            <tr>
              <td style="font-size: 13px; font-family: Georgia, 'Times New Roman', Times, serif" width="400"><h1 style="font-size: 16px; font-style: italic; font-weight: normal;">
              
              <% if FeatureLink %>
              <a href="$FeatureLink">$Title</a>
              <% else %>
              $Title
              <% end_if %>
                   
              </h1>
              $Content
                </td>
              <td width="200" ><table background="http://imu.uiowa.edu/themes/imu4/images/emt_newsletter/photobox.png" border="0" height="165" width="217" cellpadding="12">
                  <tr>
                    <td>
                    <% if FeatureLink %>
                    <a href="$FeatureLink"><img src="$Photo.URL" /></a>
                    <% else %>
                    <img src="$Photo.URL" />
                    <% end_if %>
                    
                    </td>
                  </tr>
                </table>
                </td>
            </tr>
          </table>
          <br /></td>
      </tr>
      <% end_control %>
      <!-- end_control ContentBoxes -->
  
  <tr>
    <td bgcolor="#ffffdc"><table width="100%" border="0" cellspacing="10">
        <tr>
          <td style="font-size: 13px; font-family: Georgia, 'Times New Roman', Times, serif" width="400"><h1 style="font-size: 16px; font-style: italic; font-weight: normal;">$SubFooterHeading</h1>
			$SubFooter
            <center>
              <img src="http://imu.uiowa.edu/themes/imu4/images/emt_newsletter/footer.png" />
            </center></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td bgcolor="#a3a38d"><img src="http://imu.uiowa.edu/themes/imu4/images/emt_newsletter/separator.png" />
    
    $Footer
     </td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"></td>
  </tr>
</table>
<% include NewsletterImageTracking %>
</body>
</html>
