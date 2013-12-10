<% if isReserveARoomPage %>
    <div id="reserve_a_room">
<% end_if %>

<div id="content-container">
<span class="main-feature-tabs2"> </span>
<div id="interior-links-wrapper">
  <% include SubNavigation %>
  <% include Ads %>
  <li><a class="ads-one" href="http://www.facebook.com/imuevents"><img src="$ThemeDir/images/Facebook_LikeUs_IES.png" /></a></li>
</div>
<div id="contenthead">
<h6>$Title<br /></h6>
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
