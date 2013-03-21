<link href='http://fonts.googleapis.com/css?family=Sue+Ellen+Francisco&v1' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'>


<div id="content-container">

<link href='http://fonts.googleapis.com/css?family=Cabin:regular,500,600,bold&v1' rel='stylesheet' type='text/css'>
<span class="main-feature-tabs2"> </span>
  <div id="interior-links-wrapper">
    <% include StudentLifeSubNav %>
    <% include Ads %>
  </div>
 
    <div id="content-inner">
	
		<div id="content-header">
			<% if TitleImage %><img id="cloud" src="$TitleImage.URL" /><% end_if %>
		</div>
	
		<div id="content1">
         <% if HideImage %><% else %>
		 <% if ContentImage %><% control ContentImage.SetWidth(356) %> <img src="$URL" alt="$Title" /><% end_control %> <% end_if %>
		<% end_if %>
       
		$Content1
		
		<div class="staff-member-container">
		
			<% control StudentLifeStaffMembers %>
			<div class="staff-member">
				$Image.SetWidth(190)
				<h2>$Name</h2>
				$Description
			<div class="clear"></div>

			</div>
			<% end_control %>
			
	
		
		</div>
		
		
		
		
		</div>
		
	
	
		<div id="disability-statement"><p>Individuals with disabilities are encouraged to attend all University of Iowa sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in this program, please contact the Center for Student Leadership and Involvement in advance at 319-335-3059. </p></div>
	
	

	
	
	</div>
	
	  

  <div class="clear"></div>  
  </div>
