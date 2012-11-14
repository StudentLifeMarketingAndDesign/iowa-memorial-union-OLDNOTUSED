<script type="text/javascript" src="/mysite/code/javascript/jquery.js"></script>
<script type="text/javascript" src="/mysite/code/javascript/tabs.js"></script>

<div id="subfeature-wrapper"> 
 <div class="tabs">
   
 
<span class="main-feature-tabs">
<ul class="tabNavigation">
            <li><a class="selected" href="#first">$Tab1Title</a></li>
            <% if Tab2Title %>
            <li><a class="" href="#second">$Tab2Title</a></li>
            <% end_if %>
            <% if Tab3Title %>
            <li><a class="" href="#third">$Tab3Title</a></li>
            <% end_if %>
            <% if Tab4Title %>
            <li><a class="" href="#fourth">$Tab4Title</a></li>
            <% end_if %>
            <% if Tab5Title %>
            <li><a class="" href="#fifth">$Tab5Title</a></li>
            <% end_if %>
			 <% if Tab6Title %>
			 <li><a class="" href="#sixth">$Tab6Title</a></li>
            <% end_if %>
        
      </ul>
</span>
      <span class="main-feature-tabs-image2"><img src="$ThemeDir/images/right-tab2.gif" width="168" height="27" /></span>
   
<div style="display: none;" id="first">
         
         
 <div id="main-feature">
 <img class="arrow1-$URLSegment" src="$ThemeDir/images/arrow4.gif" width="25" height="19"  />
<div id="address-box" style="background-image: url($FeatureBox1Image.URL);">
<h2>$BlackBoxLine1 <br />$BlackBoxLine2<br /> $BlackBoxLine3<br /> $BlackBoxLine4 </h2>
</div>

            <h1>$Tab1Title</h1>$Tab1Content    
</div> 
      </div>
        
        
        
<div style="display: block;" id="second">
       
<div id="main-feature">
<img class="arrow2-$URLSegment" src="$ThemeDir/images/arrow4.gif" width="25" height="19"  /> 
<div id="address-box" style="background-image: url($FeatureBox2Image.URL);">
<h2>$BlackBoxLine1 <br />$BlackBoxLine2<br /> $BlackBoxLine3<br /> $BlackBoxLine4 </h2>
</div>

            <h1>$Tab2Title</h1>$Tab2Content     
</div> 
      </div>
        
		

<div style="display: none;" id="third">
 
<div id="main-feature">
<img class="arrow3-$URLSegment" src="$ThemeDir/images/arrow4.gif" width="25" height="19"  /> 
<div id="address-box" style="margin-top: 27px; background-image: url($FeatureBox3Image.URL);">
<h2>$BlackBoxLine1 <br />$BlackBoxLine2<br /> $BlackBoxLine3<br /> $BlackBoxLine4 </h2>
</div>

            <h1>$Tab3Title</h1>$Tab3Content    
</div> 
      </div>
      
	  
 <div style="display: none;" id="fourth">
        
<div id="main-feature">
<img class="arrow4-$URLSegment" src="$ThemeDir/images/arrow4.gif" width="25" height="19"  /> 
<div id="address-box" style="margin-top: 27px; background-image: url($FeatureBox4Image.URL);">
<h2>$BlackBoxLine1 <br />$BlackBoxLine2<br /> $BlackBoxLine3<br /> $BlackBoxLine4 </h2>
</div>

            <h1>$Tab4Title</h1>$Tab4Content     
</div> 
      </div>
	  
	  
	  
       <div style="display: none;" id="fifth">
        
<div id="main-feature">
<img class="arrow5-$URLSegment" src="$ThemeDir/images/arrow4.gif" width="25" height="19"  /> 
<div id="address-box" style="margin-top: 27px; background-image: url($FeatureBox5Image.URL);">
<h2>$BlackBoxLine1 <br />$BlackBoxLine2<br /> $BlackBoxLine3<br /> $BlackBoxLine4 </h2>
</div>

            <h1>$Tab5Title</h1>$Tab5Content     
</div> 
      </div>
	  
	  
	        <div style="display: none;" id="sixth">
        
<div id="main-feature">
<img class="arrow6-$URLSegment" src="$ThemeDir/images/arrow4.gif" width="25" height="19"  /> 
<div id="address-box" style="background-image: url($FeatureBox6Image.URL);">
<h2>$BlackBoxLine1 <br />$BlackBoxLine2<br /> $BlackBoxLine3<br /> $BlackBoxLine4 </h2>
</div>

            <h1>$Tab6Title</h1>$Tab6Content     
</div> 
      </div>
	  
  
      
    </div>
<div id="interior-links-wrapper">
	<% include SubNavigation %>

	<% include Ads %>
     
     
   </div>
 
 
</div>


    
        

