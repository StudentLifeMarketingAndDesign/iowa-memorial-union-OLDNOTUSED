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
		
	
	
<div class="cooliris">
<img class="cooliris" style="visibility:hidden;width:0px;height:0px;" border=0 width=0 height=0 src="http://counters.gigya.com/wildfire/IMP/CXNID=2000002.11NXC/bT*xJmx*PTEyODExMjI1MTU*NDkmcHQ9MTI4MTEyMjUxODgzNSZwPTkwMjA1MSZkPSZnPTEmb2Y9MA==.gif" alt="Iris" />

<!--<img style="visibility:hidden;width:0px;height:0px;" border=0 width=0 height=0 src="http://c.gigcount.com/wildfire/IMP/CXNID=2000002.11NXC/bT*xJmx*PTEzMDk1NTI3NDM4NDkmcHQ9MTMwOTU1Mjc*NzkxMCZwPTkwMjA1MSZkPSZnPTEmb2Y9MA==.gif" /><object class="cooliris" id="ci_16259_o" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="448" height="273"><param name="movie" value="http://apps.cooliris.com/embed/cooliris.swf?t=1307582197"/><param name="allowFullScreen" value="true"/><param name="allowScriptAccess" value="always"/><param name="bgColor" value="#121212" /><param name="flashvars" value="feed=api%3A%2F%2Fwww.flickr.com%2F%3Fuser%3D9717880%40N03%26album%3D72157624281419021&backgroundcolor=%23feefb1&style=light&glowcolor=%23000000&numrows=1&showchrome=true" /><param name="wmode" value="opaque" /><embed id="ci_16259_e" type="application/x-shockwave-flash" src="http://apps.cooliris.com/embed/cooliris.swf?t=1307582197" width="448" height="273" allowFullScreen="true" allowScriptAccess="always" bgColor="#121212" flashvars="feed=api%3A%2F%2Fwww.flickr.com%2F%3Fuser%3D9717880%40N03%26album%3D72157624281419021&backgroundcolor=%23feefb1&style=light&glowcolor=%23000000&numrows=1&showchrome=true" wmode="opaque"></embed></object>	-->

<object class="cooliris" id="ci_96453_o" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="430" height="273"><param name="movie" value="http://apps.cooliris.com/embed/cooliris.swf"/><param name="allowFullScreen" value="true"/><param name="allowScriptAccess" value="always"/><param name="bgColor" value="#feefb1" /><param name="flashvars" value="feed=api%3A%2F%2Fwww.flickr.com%2F%3Fuser%3D9717880%40N03%26album%3D72157624281419021&backgroundcolor=%23FFFFFF&style=light&glowcolor=%23000000" /><param name="wmode" value="opaque" /><embed id="ci_96453_e" type="application/x-shockwave-flash" src="http://apps.cooliris.com/embed/cooliris.swf" width="430" height="273" allowFullScreen="true" allowScriptAccess="always" bgColor="#feefb1" flashvars="feed=api%3A%2F%2Fwww.flickr.com%2F%3Fuser%3D9717880%40N03%26album%3D72157624281419021&backgroundcolor=%23feefb1&style=light&glowcolor=%23000000" wmode="opaque"></embed></object>
	</div>
		
	</div>
	

	<div id="content1">
		
	<blockquote id="osl">
<a><h2>Center for Student Involvement & Leadership</h2></a>
<ul>
<li><a href="leadership/">Leadership &amp; Volunteerism</a></li>
<li><a href="/osl-services">Services</a></li>
<li><a href="/major-annual-events">Major Annual Events</a></li>
<li><a href="/arts-and-entertainment-programs">Arts &amp; Entertainment Programs</a></li>
<li><a href="/diversity-programs">Diversity Programs &amp; Initiatives</a></li>
</ul>
<p>Center for Student Involvement and Leadership is located at 145 Iowa Memorial Union, provides diverse social, cultural, recreational and educational programs and activities for the University of Iowa community</p>
<h3 id="connect">Stay Connected</h3>
<ul>
<li>Location: <span class="contact">145 Iowa Memorial Union</span></li>
<li>Phone: <span class="contact">319-335-3059</span></li>
<li>Email: <span class="contact">getinvolved@uiowa.edu</span></li>
<li><a href="/staff-directory-2/"><span class"contact">Staff Directory</span></a></li>

<li><a href="http://www.facebook.com/UIstudentinvolvement" class="facebook-link">Visit us on Facebook!</a></li>
<li><a href="http://twitter.com/UIstdntInvolve" class="twitter-link" >Follow us on Twitter!</a></li>

</ul>



</blockquote>
	
	<h2 class="blog">From the <a href="http://imu.uiowa.edu/news/">Blog</a></h2>
	<h2 class="subhead">want to contribute? <a href="http://imu.uiowa.edu/news/submit/">write a post</a></h2>
	
	<% cached %>
	<% control RSSEvents(5, http://imu.uiowa.edu/news/category/studentlife/feed/) %>
		<div class="blog_entry">
			<h3><a href="$Link" target="_blank">$Title</a></h3>
			<h4>$Date.Format(F j&#44; Y)</h4>
			<p class="blog">$Description.BigSummary(50) <a href="$Link" target="_blank">more...</a></p>
		</div>
	<% end_control %>
	<% end_cached %>
	
	<div class="clear"></div>
	
	<% if ShowContent %>
	$Content1
	<% end_if %>
<% cached %>
		<% control RSSEvents(3,http://afterclass.uiowa.edu/events/categoriesrss/Bijou-CAB-SCOPE-Recreational%20Services-Dance%20Marathon-Center%20for%20Student%20Involvement%20and%20Leadership?z) %>
			<% if Link %>
			<div class="event{$Pos}">
				<div class="box">
					<a href="$Link"><img src="$Smallimage" /></a>
				</div>
				<h4><a href="$Link">$Title</a></h4>
				<h5>$Dates</h5>
				<p>$Description.Summary(25)</p>
				<p>
			</div>
			<% end_if %>
		<% end_control %>
<% end_cached %>


<div style="clear: left;"></div>

	
		<blockquote class="org-callout">
<h3><a href="http://uiowa.orgsync.com">Student Organizations</a></h3>
<h4 class="hide">Join a student org.</h4>
<p>Join one of over 450 student organizations to stay connected to campus, develop leadership skills, &amp; have fun!!!</p>
<a href="https://orgsync.com/register/communities/university-of-iowa">sign-in Org Sync</a></blockquote>
	</div>
	

	
	<div id="disability-statement"><p>Individuals with disabilities are encouraged to attend all University of Iowa sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in this program, please contact the Center for Student Leadership and Involvement in advance at 319-335-3059. </p>
	</div>
	
	
	</div>
	
	  <div style="clear: right"></div>

  <div class="clear"></div>  
  </div>
