<link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Cabin:regular,500,600,bold&v1' rel='stylesheet' type='text/css'>
<div id="content-container"><link href='http://fonts.googleapis.com/css?family=Sue+Ellen+Francisco&v1' rel='stylesheet' type='text/css'>


<div id="content-container">
<span class="main-feature-tabs2"> </span>
  <div id="interior-links-wrapper">
    <% include StudentLifeSubNav %>
    <% include Ads %>
  </div>
    <div id="content-image">
    	<% if ContentImage %><% control ContentImage.SetWidth(356) %> <img src="$URL" alt="$Title" /><% end_control %> <% end_if %>
      		
    </div>
    <div id="content-inner">
	
	<div id="content-header">
		<!--<img id="cloud" src="$ThemeDir/images/studentlife/logo.png" />-->
		</div><!--end content-header-->

	<div id="content1">
   <h2>Make your student-driven event a reality with funding from Late Night at Iowa!</h2>
   
   	<div class="full-width">
    <img src="http://flickholdr.com/230/150/cat" alt="Placeholder image from flickholdr.com" /> <img src="http://flickholdr.com/230/150/kitten" alt="Placeholder image from flickholdr.com" /> <img src="http://flickholdr.com/230/150/puppy" alt="Placeholder image from flickholdr.com" />
    </div><!--end .full-width-->

   	<div class="full-width">		
<img src="http://imu.uiowa.edu/themes/imu4/images/owl.png" alt="owl" class="left">
$GoodNews

</div><!--end main-item-->

<div id="left-content">

	<div class="main-item">	
$Purpose
</div><!--end main-item-->


	<div class="main-item">

$Criteria

</div><!--end main-item-->

	<div class="main-item">
$Evaluation
</div><!--end main-item-->


<div class="main-item">
<h3>Past Events</h3>
<object width="300" height="233"> <param name="flashvars" value="offsite=true&lang=en-us&page_show_url=%2Fphotos%2Fimubuddy%2Fsets%2F72157627992613698%2Fshow%2F&page_show_back_url=%2Fphotos%2Fimubuddy%2Fsets%2F72157627992613698%2F&set_id=72157627992613698&jump_to="></param> <param name="movie" value="http://www.flickr.com/apps/slideshow/show.swf?v=109615"></param> <param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/slideshow/show.swf?v=109615" allowFullScreen="true" flashvars="offsite=true&lang=en-us&page_show_url=%2Fphotos%2Fimubuddy%2Fsets%2F72157627992613698%2Fshow%2F&page_show_back_url=%2Fphotos%2Fimubuddy%2Fsets%2F72157627992613698%2F&set_id=72157627992613698&jump_to=" width="300" height="233"></embed></object>
</div><!--end-item-->

</div><!--end left-content-->
	
<div id="right-content">


	<div class="side-item">
$Apply
</div><!--end side-item-->

<div class="side-item">
$Contact
</div><!--end first side-item-->
<div class="side-item" id="events">
<img src="http://imu.uiowa.edu/assets/Uploads/afterclasslogo.png" alt="After Class" />
<h3>Upcoming Events</h3>

<% control RSSEvents(3,http://afterclass.uiowa.edu/events/categoriesrss/Iowa%20Memorial%20Union) %>
				  <div class="event">
				  	<a href="$Link"><img src="$Smallimage"></a>
					<div class="info">
					  <h3><a href="$Link">$Title</a></h3>
					  <h4>$Dates<% if Location %> at $Location<% end_if %></h4>
					  <p class="description">$Description.Summary(25) <% if Cost %>Cost: $Cost<% end_if %> [<a href="$Link">more</a>]</p>
					</div>
				  </div>
				<% end_control %>

<!--<h4>Public Events</h4>
<ul>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
   <li>Vestibulum auctor dapibus neque.</li>
</ul>
	       <ul>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
   <li>Vestibulum auctor dapibus neque.</li>
</ul>
<h4>Small group events</h4>
<ul>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
   <li>Vestibulum auctor dapibus neque.</li>
</ul>
	       -->
</div><!--end first side-item-->

</div><!--end right-content-->	

<div class="clear"></div>
	</div>
	

	
	<div id="disability-statement"><p>Individuals with disabilities are encouraged to attend all University of Iowa sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in this program, please contact the Center for Student Leadership and Involvement in advance at 319-335-3059. </p>
	</div>
	
	
	</div>
	
	  <div style="clear: right"></div>

  <div class="clear"></div>  
  </div>
