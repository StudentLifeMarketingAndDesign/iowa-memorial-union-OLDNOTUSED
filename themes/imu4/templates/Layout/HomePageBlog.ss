<div id="blogContainer">
	<div class="featured">
		<!--<div class="mainImage"></div> -->
		<% if MainImage %>
		<!-- temporarily removing big image link for summer 2011 homepage gfx <a href="$MainImageURL">--><img class="mainImage"  src="<% control MainImage %><% control SetWidth(590) %> $URL <% end_control %><% end_control %>" alt="$Title" usemap="#Image-Maps_6201106081624344" /><!--</a> -->
		<% end_if %>
		<!-- Image Map for Summer 2011 homepage graphic, safe to delete if we change this graphic -->
		<map id="_Image-Maps_6201106081624344" name="Image-Maps_6201106081624344">
			<area shape="rect" coords="256,371,306,421" href="http://facebook.com/uiowa.imu" alt="IMU's Facebook" title="map-fb"    />
			<area shape="rect" coords="316,369,366,419" href="http://twitter.com/imubuddy" alt="imubuddy on twitter" title="map-twitter"    />
			<area shape="rect" coords="373,367,423,417" href="http://youtube.com/imubuddy" alt="IMU's YouTube account" title="map-youtube"    />
			<area shape="rect" coords="426,366,476,416" href="http://flickr.com/imubuddy" alt="imubuddy flickr" title="map-flickr"    />
			<area shape="rect" coords="485,366,535,416" href="http://imu.uiowa.edu/news/feed/rss/" alt="IMU news RSS feed" title="map-rss"    />
		</map>
			
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
					$Content </li>
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
					<p>$Description.Summary(50) <a href="$Link">more...</a></p>
				</li>
				<% end_control %>
			</ul>
		</div>
        <div class="socialmedia">
        	<iframe class="fb" src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fuiowa.imu&amp;width=560&amp;colorscheme=light&amp;show_faces=true&amp;stream=false&amp;header=true&amp;height=200" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:560px; height:200px;" allowTransparency="true"></iframe>
            
        
            
            
          
        </div>
		<div class="featuredArea">
			<% control Page(marquee-widget) %>
			<div class="specialHeader">
				<h2>$Title</h2>
			</div>
			<% control Children %>
			<div class="specialFeature">
				<% if URL %>
				<a href="$URL">
				<div class="specialImage">$Image.setWidth(257)</div>
				</a>
				<% else %>
				<div class="specialImage">$Image.setWidth(257)</div>
				<% end_if %>
				<% if URL %>
				<h2><a href="$URL">$Title</a></h2>
				<% else %>
				<h2>$Title</h2>
				<% end_if %>
				$Content </div>
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
		$Content </div>
	<% end_control %>
	<% end_control %>
</div>
