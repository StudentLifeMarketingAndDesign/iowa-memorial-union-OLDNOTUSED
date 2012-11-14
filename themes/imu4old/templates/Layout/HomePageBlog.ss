<div id="blogContainer">

  <div class="featured">
  <!--<div class="mainImage"></div> -->
  
  <a href="$MainImageURL" target="_blank"><img class="mainImage" src="$MainImage.URL" /></a>
  <div class="featuredLinks">
  		<ul>
        <% control ChildrenOf(featured-links) %>
        
        
        	<li>
            	<div class="featuredLinkImage"><a href="$URL">$Image.SetWidth(100)</a></div>
                
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
  </div>
</div>
  <div id="leftSide">
    <div id="blogPosts">
    <div class="blogHeader">
      <h2><a href="/news">From the Blog</a></h2>
    </div> 
    <ul>
    
    <% control RSSFeedImport(5) %>
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
