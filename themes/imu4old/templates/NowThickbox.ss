<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Now Event Listing</title>

</head>
<body>

	<% control singleEvent %>
	<p class="category">$EventCategory</p>
	<p class="date">$EventDate</p>

	<br />
	
	<div class="content_box">
	<div class="clear"></div>
	<div class="event_description">
			<h1>$Title</h1><img alt="" src="$image" border="0" height="140" class="event_image" /><p>$EventDescription</p>
			<p class="location_time">$EventLocation $EventTime</p>
  
  <p></p>
	<% end_control %>
  </div>
		<div class="clear"></div>
		<br />
		
		</div>
	</div>
</body>
</html>
