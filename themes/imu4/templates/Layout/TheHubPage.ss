<script src="http://use.edgefonts.net/open-sans.js"></script>
<div id="content-container">

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
					
					<h3><img src="{$ThemeDir}/images/thehub/scopelogo.png" alt="SCOPE Productions Logo" /></h3>
						<p>Tickets for all SCOPE concerts are available at The Hub. SCOPE is a student-run organization that brings internationally known performing arists to the area. SCOPE concert venues include:</p>
						
						<p>Iowa Memorial Union Ballroom,  Main Lounge, Carver-Hawkeye Arena, The Englert Theater, and Hubbard Park</p>
						
						<p><a href="http://scope.uiowa.edu">Visit the SCOPE website</a></p>
						
					<h3><img src="{$ThemeDir}/images/thehub/ticketmasterlogo.png" alt="Ticketmaster Logo" /></h3>
					<p>As the only on-campus Ticketmaster outlet, The Hub provides walk-up ticket sales for all major events in the Midwest, including the Chicago Land area.</p>
					<p><a href="http://www.ticketmaster.com">Visit Ticketmaster</a></p>

					<h3><img src="{$ThemeDir}/images/thehub/bijoulogo.png" alt="Bijou Cinema Logo" /></h3>
					<p>Tickets for Bijou Theater films shown in the Iowa Memorial Union are available daily, and are sold up to 15 minutes after the film begins.</p>
					<p><a href="http://bijou.uiowa.edu">See what's showing at the Bijou</a></p>
				
				</div><!-- end tickets-content1 -->
			
				<div class="events">
					<h3>buy tickets for these events at the hub:</h3>
						<% cached %>
				        	<% control RSSEvents(3,http://afterclass.uiowa.edu/events/newrss/) %>
				        	
								<div class="event">
									<h3><a href="$Link">$Title</a></h3>

									<% if Smallimage %><a href="$Link"><img src="$Smallimage" /></a><% end_if %>
									<div class="info">
										<% if Dates %><p class="dates">$Dates</p><% end_if %>
										<p class="description">$Description.Summary(25) [<a href="$Link">more</a>]</p>
									</div>
								</div>
						
							
							<% end_control %>
						<% end_cached %>
					<p><a href="http://afterclass.uiowa.edu" target="_blank"></a></p>	
				</div><!-- end events -->		
				<div class="clear"></div>
			
			</div><!-- end section-content-container -->
		</div><!-- end section -->
	
	
	</div><!-- end tickets -->
	
	
	
	
	<div id="services">
		<h2><img src="{$ThemeDir}/images/thehub/services.png" alt="Services" /></h2>
		<p class="section-intro">we're here to help.</p>
		<img src="{$ThemeDir}/images/thehub/arrow.png" class="arrow" />
		<div class="section">
			<div class="section-content-container">	
				<div class="services-listing">
					
						<h3>Laptop Checkout</h3>
						<p>The Hub (first floor) offers laptops for 3 hour and overnight checkout periods</p>
				
				
						<h3>Buy Stamps</h3>
						<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
				
				</div> <!-- end services-list -->
				
				<div class="hosting-an-event">
					<h3>Hosting an Event?</h3>
					<p>If you're hosting an event, we offer the following services:</p>
					
						<h4>Ticket Selling</h4>
						<p>The Hub sells tickets for all events sponsored by UI student organizations. Student organizations can make daily deposits to their University accounts at The Hub. Forms for deposits are available at The Hub; students need to know their organization’s account numbers in order to complete them.</p>
						<h4>Staffing Services</h4>
						<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
						<h4>Cash Boxes</h4>
						<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
				</div>
				
				<div class="clear"></div>
			</div><!-- end section-content-container -->
		</div><!-- end section -->	
	
	</div><!-- end services -->
 
 
</div><!-- end content-container -->
