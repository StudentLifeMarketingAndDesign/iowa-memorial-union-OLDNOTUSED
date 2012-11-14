  <!--<link href="/cab-events/rss" type="application/rss+xml" rel="alternate" title="CAB Events Feed" />-->

  <style>
<% control ChildrenOf(cab-events) %>

#event$Pos {

	background-image:none;/* url(
	
	<% control CabEventImage.SetWidth(300) %>
	
	$Filename
	
	<% end_control %>
	);*/
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
    <h2 class="lineup">Check out our fall line-up</h2>
   <div id="socialmedia"> 
    <div id="facebook">
               
               <iframe src="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2FCampus-Activities-Board%2F31817664925%3Fref%3Dts&amp;width=312&amp;colorscheme=light&amp;show_faces=true&amp;stream=true&amp;header=true&amp;height=265" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:312px; height:265px;" allowTransparency="true"></iframe>
               
               
               
</div>

    
 <div id="tweet">	
	<!--<a href="http://twitter.com/uiowaCAB"><img src="http://widgets.twimg.com/i/widget-logo.png" alt="" /></a>
    -->
   <script src="http://widgets.twimg.com/j/2/widget.js"></script>
<script>
new TWTR.Widget({
  version: 2,
  type: 'profile',
  rpp: 3,
  interval: 6000,
  width: 314,
  height: 300,
  theme: {
    shell: {
      background: '#a7392d',
      color: '#ffffff'
    },
    tweets: {
      background: '#ffffff',
      color: '#000000',
      links: '#75746f'
    }
  },
  features: {
    scrollbar: false,
    loop: false,
    live: false,
    hashtags: true,
    timestamp: true,
    avatars: false,
    behavior: 'all'
  }
}).render().setUser('uiowaCAB').start();
</script>
    <div class="clear"></div>
       

</div>
</div>
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

 
 
 
 
