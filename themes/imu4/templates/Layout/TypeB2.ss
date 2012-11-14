<script type="text/javascript" src="/mysite/code/javascript/jquery.js"></script>
<script type="text/javascript" src="/mysite/code/javascript/tabs.js"></script>

<div id="subfeature-wrapper"> 
 <div class="tabs">
   
 
<span class="main-feature-tabs">
<ul class="tabNavigation">
	<% control Tabs %>
    	<li><a <% if First %>class="selected"<% end_if %> href="#tab$Pos">$Title</a></li>
    <% end_control %>
        
      </ul>
</span>
      <span class="main-feature-tabs-image2"><img src="$ThemeDir/images/right-tab2.gif" width="168" height="27" /></span>



<% control Tabs %>
<div <% if First %>style="display: none;"<% else %>style="display: block"<% end_if %>id="tab$Pos">
 <div id="main-feature">
 
 <% if FeatureBoxImage %>
<div id="address-box" style="background-image: url($FeatureBoxImage.URL);">
$BlackBoxText
</div>
<% end_if %>

            <h1>$Title</h1>$Content    
</div> 
      </div>
<% end_control %>
	  
  
      
    </div>
<div id="interior-links-wrapper">
	<% include SubNavigation %>

	<% include Ads %>
     
     
   </div>
  <div id="content2">

$Content1
      
     
</div>
 
</div>


    
        

