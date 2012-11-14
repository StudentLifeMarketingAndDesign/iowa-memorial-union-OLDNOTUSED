<div id="content-container">

<span class="main-feature-tabs2">   </span>
  <div id="interior-links-wrapper">
    <% include SubNavigation %>
    <% include Ads %>
  </div>
    <div id="content1">
  <span class="content1"> 
  <% if IncludePageNameInContent %>
  	<h1>$Title</h1>
  <% end_if %>
  <p>
  <% if ContentImage %> $ContentImage <% end_if %>
		<% control RSSFeedImport(3) %>
   </span><a href="$Link">$Title</a> - $Date.Nice <br />
        $Description
        <br />
        <br />
   <% end_control %>
   </p>
    </div>
  <div class="clear"></div>
  </div>
