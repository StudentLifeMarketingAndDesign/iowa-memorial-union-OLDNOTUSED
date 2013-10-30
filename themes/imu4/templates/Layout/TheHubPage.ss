<script src="http://use.edgefonts.net/open-sans.js"></script>
<div id="content-container" id="hub">

	<div class="header">
		<div class="header-content">
			<div id="breadcrumbs" class="hubcrumbs"><p>$Breadcrumbs</p></div>
			<div class="clear"></div>
			<h1><img src="{$ThemeDir}/images/thehub/thehublogo.png" class="thehub-logo" alt="The Hub: Campus Info, Box Office, and more!" /></h1>
			<div class="header-details">
				<p class="tagline">your campus info and box office.</p>
				<p class="location">first floor, imu <br />
near <span>hub</span>bard commons and starbucks</p>
				<p>319-335-3041 <br />
1-800-346-4401</p>
			</div><!-- end header-details -->
		</div><!-- end header-content -->
	</div><!-- end header -->
	<div class="clear"></div>
	<div id="tickets">
		<h2><img src="{$ThemeDir}/images/thehub/tickets.png" alt="Tickets" /></h2>
		<p class="section-intro">stay on top of campus-everything.</p>
		<img src="{$ThemeDir}/images/thehub/arrow.png" class="arrow" />
		<div class="section">
			<div class="section-content-container">
			
				<div class="tickets-content">
					$TicketsContent
									
				</div><!-- end tickets-content1 -->
			
				<div class="events">
					<h3>events at the imu:</h3>
							<% control RSSEvents(3,http://afterclass.uiowa.edu/events/categoriesrss/Iowa%20Memorial%20Union) %>
				        	
								<div class="event">
									<h4><a href="$Link">$Title</a></h4>

									<% if Smallimage %><a href="$Link"><img src="$Smallimage" /></a><% end_if %>
									<div class="info">
										<% if Dates %><p class="dates">$Dates</p><% end_if %>
										<p class="description">$Description.Summary(25) [<a href="$Link">more</a>]</p>
									</div>
								</div>
						
							
							<% end_control %>
					<p><a href="http://afterclass.uiowa.edu" target="_blank"></a></p>	
				</div><!-- end events -->		
				<div class="clear"></div>
			
			</div><!-- end section-content-container -->
		</div><!-- end section -->
	
	
	</div><!-- end tickets -->
	
	
	
	
	<div id="services">
		<h2><img src="{$ThemeDir}/images/thehub/services.png" alt="Services" /></h2>
		<img src="{$ThemeDir}/images/thehub/arrow.png" class="arrow" />
		<div class="section">
			<div class="section-content-container">	
				<div class="services-listing">
					
						$Services1
				
				</div> <!-- end services-list -->
				
				<div class="hosting-an-event">
					$Services2
				</div>
				
				<div class="clear"></div>
			</div><!-- end section-content-container -->
		</div><!-- end section -->	
	
	</div><!-- end services -->
 
 
</div><!-- end content-container -->
