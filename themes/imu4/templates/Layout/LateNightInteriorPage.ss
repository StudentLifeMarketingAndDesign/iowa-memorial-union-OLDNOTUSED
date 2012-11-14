

<div id="content-container"><link href='http://fonts.googleapis.com/css?family=Sue+Ellen+Francisco&v1' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'>

<link href='http://fonts.googleapis.com/css?family=Cabin:regular,500,600,bold&v1' rel='stylesheet' type='text/css'>
<span class="main-feature-tabs2"> </span>
  <div id="interior-links-wrapper">
    <% include StudentLifeSubNav %>
    <% include Ads %>
  </div>
 
    <div id="content-inner">
	
		<div id="content-header">
			<img id="cloud" src="$TitleImage.URL" />
		</div>
	
		<div id="content1">
		<% if ContentImage %> <img src="$ContentImage.URL" alt="$Title" /> <% end_if %>
		
	
		<p>$Content1</p>

<% control StudentLifes %>
	<div style="background-color: #D9F0FB; padding: 10px; margin-bottom: 10px;">
	<% if ObjectImage %> <img src="$ObjectImage.URL" alt="$Title" /> <% end_if %>
	<div class="right">
		<h3>$Title</h3>
		$Description
	</div>
	<div class="clear"></div>
</div>
<% end_control %>
		
	
	<div id="disability-statement"><p>Individuals with disabilities are encouraged to attend all University of Iowa sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in this program, please contact the Center for Student Leadership and Involvement in advance at 319-335-3059. </p></div>
	
	
	</div>
	
	  <div style="clear: right"></div>

  <div class="clear"></div>  
  </div>
