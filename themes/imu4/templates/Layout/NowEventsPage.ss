<div id="content-container">

<span class="main-feature-tabs2"> </span>
  <div id="interior-links-wrapper">
    <% include SubNavigation %>
    <ul class= "interiorlinks"><br />
  </ul>
    <% include Ads %>
  </div>
    <div id="content-image">
    	<% if ContentImage %>
      		$ContentImage
        <% end_if %>
    </div>
    <div id="content1"><% control nowEvents %>$id - $name - $page_id <br />
    <% end_control %>
    <hr />
    <% control getNowEventsHalf(last) %>$id - $name <br />
    <% end_control %>
</div>
  <div class="clear"></div>  
  </div>
