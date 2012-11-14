

<div id="content-container">
  <div id="interior-links-wrapper">
    <% include SubNavigation %>
    <% include Ads %>
  </div>
    <div id="content1">
 
  
  <span class="content1"> 
  <% if IncludePageNameInContent %>
  	<h1>$Title</h1>
	
  <% end_if %>
  
  
  
  <% if ContentImage %> $ContentImage <% end_if %></span>

<% if InteriorPageContent %>
<div id="interior-page">
 $InteriorPageContent
</div>


  <% else %>

<div id="header-column">
$HeaderColumn

<img style="visibility:hidden;width:0px;height:0px;" border=0 width=0 height=0 src="http://counters.gigya.com/wildfire/IMP/CXNID=2000002.11NXC/bT*xJmx*PTEyNzg2OTE*NjI3NjImcHQ9MTI3ODY5MTQ2NDc1MyZwPTkwMjA1MSZkPSZnPTEmb2Y9MA==.gif" /><object id="ci_52740_o" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="400" height="248"><param name="movie" value="http://apps.cooliris.com/embed/cooliris.swf"/><param name="allowFullScreen" value="true"/><param name="allowScriptAccess" value="always"/><param name="bgColor" value="#121212" /><param name="flashvars" value="feed=api%3A%2F%2Fwww.flickr.com%2F%3Fuser%3D9717880%40N03&backgroundcolor=%23FFFFFF&style=light&glowcolor=%23000000" /><param name="wmode" value="opaque" /><embed id="ci_52740_e" type="application/x-shockwave-flash" src="http://apps.cooliris.com/embed/cooliris.swf" width="475" height="270" allowFullScreen="true" allowScriptAccess="always" bgColor="#121212" flashvars="feed=api%3A%2F%2Fwww.flickr.com%2F%3Fuser%3D9717880%40N03&backgroundcolor=%23FFFFFF&style=light&glowcolor=%23000000" wmode="opaque"></embed></object>

</div>  

<div id="left-column">

$LeftColumn

</div> 

<% end_if %>


<div id="center-column">
$CenterColumn
</div>


<div id="right-column">

$RightColumn

</div>

<div id="sponsor-column">
$SponsorColumn
</div>

  
  
  
    </div>
  <div class="clear"></div>
  </div>

