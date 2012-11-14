<link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'>
<div id="content-container"> <span class="main-feature-tabs2"> </span>
	<div id="interior-links-wrapper">
		<% include StudentLifeSubNav %>
		<% include Ads %>
	</div>
	<!-- <div id="content-image">
    	<% if ContentImage %>
      		$ContentImage
        <% end_if %>
    </div>-->
	<div id="content-inner">
		<div id="content-header"> <img id="cloud" src="$TitleImage.URL" /> </div>
		<div id="content1">
		<% if features %>
			<% control features %>
			<div class="feature">
				<% if ContentImage %>
				<a href="<% if ExternalLink %>$ExternalLink<% else %>$Link<% end_if %>"><img src="$ContentImage.URL" alt="$Title"/></a>
				<% end_if %>
				<h2><a href="<% if ExternalLink %>$ExternalLink<% else %>$Link<% end_if %>">$Title</a></h2>
				<p>$Content1.LimitWordCount(33) </p>
				<% if ExternalLink %>
				<span class="external-link"><a href="$ExternalLink">Visit the site</a></span>
				<% else %>
				<span class="more"><a href="$Link">Read More</a></span>
				<% end_if %>
			</div>
			<% end_control %>
		<% end_if %>
		</div>
		<!--end content1-->
		<div id="content2">
		
		
		<% if miniFeatures %>
			<% control miniFeatures %>
			<div class="mini-feature">
				<h3><a href="<% if ExternalLink %>$ExternalLink<% else %>$Link<% end_if %>">$Title</a></h3>
				<p>$Content1.LimitWordCount(15) </p>
				<% if ExternalLink %>
				<span class="external-link"><a href="$ExternalLink">Visit the site</a></span>
				<% else %>
				<span class="more"><a href="$Link">Read More</a></span>
				<% end_if %>
			</div>
			<% end_control %>
	<% end_if %>
			<div class="
			
			
			clear"></div>
			$Content2
			
		<% if StudentLifeStaffMembers %>
		
		<div class="staff-member-container">
			<h2>Questions? Ask our staff!</h2>
			<% control StudentLifeStaffMembers %>
			<div class="staff-member features-page">
				$Image.SetWidth(230)
				<h3>$Name</h3>
				$Description
			<div class="clear"></div>

			</div>
			<% end_control %>
			
	
		
		</div>
		
		<% end_if %>
			
	</div>
		<!--end content2 -->
		<div id="disability-statement">
			<p>Individuals with disabilities are encouraged to attend all University of Iowa sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in this program, please contact the Center for Student Leadership and Involvement in advance at 319-335-3059. </p>
		</div>
	</div>
	<div style="clear: right"></div>
	<div class="clear"></div>
</div>
