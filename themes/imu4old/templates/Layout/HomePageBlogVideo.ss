<style>
#video {
margin:20px 0px 0px 20px;
float:left;}

#twitter_div_home {
width:300px;
height:300px;
margin-left:50px;
margin-top:90px;
float:left;}

html>body .featured {*margin-top:0px;}



.featured{
	height:370px;
background:url(http://imu.uiowa.edu/themes/imu4/images/cupcakes.png) no-repeat 540px 65px;
}

</style>

<div id="blogContainer">

  <div class="featured">
  <!--<div class="mainImage"></div> -->
  <div id="video">
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"  width="500" height="330" id="utv298290"><param name="flashvars" value="autoplay=true&amp;brand=embed&amp;cid=3969701&amp;locale=en_US"/><param name="allowfullscreen" value="true"/><param name="allowscriptaccess" value="always"/><param name="movie" value="http://www.ustream.tv/flash/live/1/3969701"/><embed flashvars="autoplay=true&amp;brand=embed&amp;cid=3969701&amp;locale=en_US" width="500" height="330" allowfullscreen="true" allowscriptaccess="always" id="utv298290" name="utv_n_979135" src="http://www.ustream.tv/flash/live/1/3969701" type="application/x-shockwave-flash" /></object>
  </div>
  
  <a href="/cupcakes-for-the-cure/"><div id="twitter_div_home">
		
	
	</div></a>



 <!-- <a href="$MainImageURL" target="_blank"><img class="mainImage" src="$MainImage.URL" /></a>-->
 <!-- <div class="featuredLinks">
  		<ul>
        <% control ChildrenOf(featured-links) %>
        
        
        	<li>
            	<div class="featuredLinkImage">$Image.SetWidth(100)</div>
                
                <% if URL %>
                    <h3><a href="$URL">$HeaderText1</a></h3>
                    <% else %>
                    <h3>$HeaderText1</h3>
                <% end_if %>
                
                <% if URL %>
                    <h2><a href="$URL">$Title</a></h2>
                    <% else %>
                    <h2>$Title</h2>
                <% end_if %>
                
               	$Content
            </li>
            
        <% end_control %>

        </ul>
  </div>-->
</div>
  <div id="leftSide">
    <div id="blogPosts">
    <div class="blogHeader">
      <h2><a href="/news">From the Blog</a></h2>
    </div> 
    <ul>
    
    <% control RSSFeedImport(4) %>
  <li>
      <h3>$Date.Format(F j&#44; Y)</h3>
      <h2><a href="$Link">$Title</a></h2>
      <p>$Description.BigSummary(50) <a href="$Link">more...</a></p>
  </li>
  
    
   <% end_control %>
    
      </ul>
    </div>
    <div class="featuredArea">
    
    <% control Page(marquee-widget) %>
     <div class="specialHeader">
      <h2>$Title</h2>
    </div> 
    	<% control Children %>
      <div class="specialFeature">
      	<% if URL %>
        	<a href="$URL"><div class="specialImage">$Image.setWidth(257)</div></a>
        <% else %>
            <div class="specialImage">$Image.setWidth(257)</div>
        <% end_if %>
        
        <% if URL %>
            <h2><a href="$URL">$Title</a></h2>
        <% else %>
        	<h2>$Title</h2>
        <% end_if %>
        
            $Content
      </div>
      <% end_control %>
      <% end_control %>
    </div>
</div>
	<div id="rightSide">
    
    <% include HomePageUpcomingEvents %>
	<% include HomePageRightWidgets %>
    

   
   </div>
   

  
<div id="contentFooter"></div>
</div>
 <div class="wideColumn">
   <% control Page(footer-widget) %>
 		<% control Children %>
   <div class="wideColumnFeature">
   <h2>$Title</h2>
   $Content
   </div>
	<% end_control %>
    <% end_control %>
  </div>
</body>
</html>
