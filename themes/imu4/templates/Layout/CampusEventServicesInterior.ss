<% if isReserveARoomPage %>
    <div id="reserve_a_room">
<% end_if %>

<div id="content-container">
<span class="main-feature-tabs2"> </span>
<div id="interior-links-wrapper">
  <% include SubNavigation %>
  <% include Ads %>
</div>
<div id="contenthead">
    <p><strong>We are currently updating our Event Services system, some parts of this website might be unavailable for up to two hours. 2/11/13 - IMU Staff</strong></p><h6>$Title<br /></h6>
$Content1
<h5 class="header">Catering - Event Spaces - Iowa House Hotel</h5>
</div>
<div class="content-wrapper">
    <div id="content1">$Content2</div> 

    <% if isMeetingsPage %>
        <div id="rooms_page">
            <% control Children %>
            	<% if Number %>
	                <a href="$Link">
	                	<div class="room_listing">
	                    	<span class="thumbnail">$ThumbnailImage</span>
	                        <span class="name">$Title</span>
	                        <span class="number">Room #$Number, Capacity: $DisplayCapacity</span>
	                	</div>
	                </a>
	            <% end_if %>
            <% end_control %>
        </div>
    <% end_if %>

    <div class="clear"></div>
</div>
</div>

<% if isReserveARoomPage %>
    </div>
<% end_if %>
