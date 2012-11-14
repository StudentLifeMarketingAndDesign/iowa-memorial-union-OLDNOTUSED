  <!--<link href="/cab-events/rss" type="application/rss+xml" rel="alternate" title="CAB Events Feed" />-->

  <style>
<% control ChildrenOf(cab-events) %>

#event$Pos {

	background-image:none;
	
}

<% end_control %>

</style>



 <div id="content-container">

<span class="main-feature-tabs2">   </span>
  <div id="interior-links-wrapper">
    <% include SubNavigation %>
    <% include AdsCAB %>
  </div>
    <div id="content1">
$Content1
<br /><br />
  <% control ChildrenOf(cab-events) %>
   <div id="event$Pos">
   <% if YouTubeID %>
   <div class="youtube">
   <object width="315" height="261" style="float:right"><param name="movie" value="http://www.youtube.com/v/{$YouTubeID}&hl=en_US&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/{$YouTubeID}&hl=en_US&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="315" height="261"></embed></object></div>
   <% else %>
   <div class="cab-image">
    <img src="$CabEventImage.URL" width="300" /> 
    </div>
   <% end_if %>
<h2>$CabEventArtist</h2>
<h3><% if CabEventDateAlt %> $CabEventDateAlt <% else %>$CabEventDate.Format(l F d)<% end_if %></h3>
<h4><% if CabEventTimeAlt %>%CabEventTimeAlt, <% else %> $CabEventTime, <% end_if %></h4> <h5> $CabEventLocation</h5>
<div class="text"><p>$CabEventDescription</p></div>

   <div class="clear"></div>
  
</div>

<% end_control %>
 $Content2
    </div>
  <div class="clear"></div>
  </div>

 
 
 
 