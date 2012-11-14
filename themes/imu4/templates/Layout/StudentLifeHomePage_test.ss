<link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'>
<div id="content-container">
<span class="main-feature-tabs2"> </span>
  <div id="interior-links-wrapper">
    <% include StudentLifeSubNav %>
    <% include Ads %>
  </div>
    <div id="content-image">
    	<% if ContentImage %>
      		$ContentImage
        <% end_if %>
    </div>
    <div id="content-inner">
	
	<div id="content-header">
		<img id="cloud" src="$ThemeDir/images/studentlife/logo.png" />
		
	
	
	
<img style="visibility:hidden;width:0px;height:0px;" border=0 width=0 height=0 src="http://counters.gigya.com/wildfire/IMP/CXNID=2000002.11NXC/bT*xJmx*PTEyODExMjI1MTU*NDkmcHQ9MTI4MTEyMjUxODgzNSZwPTkwMjA1MSZkPSZnPTEmb2Y9MA==.gif" /><object id="ci_96453_o" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="478" height="283"><param name="movie" value="http://apps.cooliris.com/embed/cooliris.swf"/><param name="allowFullScreen" value="true"/><param name="allowScriptAccess" value="always"/><param name="bgColor" value="#121212" /><param name="flashvars" value="feed=api%3A%2F%2Fwww.flickr.com%2F%3Fuser%3D9717880%40N03%26album%3D72157624281419021&backgroundcolor=%23FFFFFF&style=light&glowcolor=%23000000" /><param name="wmode" value="opaque" /><embed id="ci_96453_e" type="application/x-shockwave-flash" src="http://apps.cooliris.com/embed/cooliris.swf" width="478" height="283" allowFullScreen="true" allowScriptAccess="always" bgColor="#121212" flashvars="feed=api%3A%2F%2Fwww.flickr.com%2F%3Fuser%3D9717880%40N03%26album%3D72157624281419021&backgroundcolor=%23FFFFFF&style=light&glowcolor=%23000000" wmode="opaque"></embed></object>	
	
		
	</div>
	

	<div id="content1">
		
	<blockquote id="osl">
<a href="/staff-directory"><h2>Office of Student Life</h2></a>
<ul>
<li><a href="leadership-and-volunteerism/">Leadership &amp; Volunteerism</a></li>
<li><a href="/services-3">Services</a></li>
<li><a href="/major-annual-events">Major Annual Events</a></li>
<li><a href="/arts-and-entertainment-programs">Arts &amp; Entertainment Programs</a></li>
<li><a href="/diversity-programs">Diversity Programs &amp; Initiatives</a></li>
</ul>
<p>The Office of Student Life (OSL), located at 145 Iowa Memorial Union, provides diverse social, cultural, recreational and educational programs and activities for the University of Iowa community</p>
<h3 id="connect">Stay Connected</h3>
<ul>
<li>Location: <span class="contact">145 Iowa Memorial Union</span></li>
<li>Phone: <span class="contact">319-335-3059</span></li>
<li>Email: <span class="contact">osl@uiowa.edu</span></li>
<li><a href="/staff-directory-2/"><span class"contact">Staff Directory</span></a></li>
</ul>
</blockquote>
	
	<h2 class="blog">From the <a href="http://imu.uiowa.edu/news/">Student Blog</a></h2>
	 <!--<h2 class="subhead">want to contribute? <a href="/">make a new post</a></h2>-->
	
	<% control BlogEntries(3, http://imu.uiowa.edu/news/category/studentlife/feed/) %>
		<div class="blog_entry">
			<h3><a href="$Link" target="_blank">$Title</a></h3>
			<h4>$Date.Format(F j&#44; Y)</h4>
			<p class="blog">$Description.BigSummary(50) <a href="$Link" target="_blank">more...</a></p>
		</div>
		
	
		
		
	<% end_control %>
	
	<div class="clear"></div>
	
	<% if ShowContent %>
	$Content1
	<% end_if %>

<% control EventItems %>

<div class="event{$Pos}">
	<div class="box">
		<h3 id="event-title">$Title</h3>
            <% if EventExternalUrl %>
				<a href="$EventExternalUrl">
			<% else %>
				<a href="$Link">
			<% end_if %>
				$EventThumbnail.SetWidth(131)
				</a>
			</div>
		<h4><a href="$Link">$Title</a></h4>
		<h5></h5>
		<p></p>
	</div>
</div>
<% end_control %>

	
		<blockquote class="org-callout">
<h3><a href="http://uiowa.orgsync.com">Student Organizations</a></h3>
<p>Join one of over 450 student organizations to stay connected to campus, develop leadership skills, &amp; have fun!</p>
<a href="http://uiowa.orgsync.com">sign-in Org Sync</a></blockquote>
	</div>
	
	<div id="disability-statement"><p>Individuals with disabilities are encouraged to attend all University of Iowa sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in this program, please contact the Office of Student Life in advance at 319-335-3059. </p>
	</div>
	
	
	</div>
	
	  <div style="clear: right"></div>

  <div class="clear"></div>  
  </div>
