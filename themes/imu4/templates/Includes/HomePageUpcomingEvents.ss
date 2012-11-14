



<div class="oddeven">
<div class="widget">
    <div class="widgetHeader">
    	<h2>Upcoming Events</h2>
    </div>
        <ul>
        	<% control EventItems(none,3) %>
            <li class="$EvenOdd">
            
                   
              
            	<div class="widgetImage">	<% if EventImage %> <a href="$Link">$EventImage.SetWidth(130)</a><% end_if %> </div>
               <h2><a href="$Link">$Title</a></h2>
               <h3> <% if EventDate %>$EventDate.Format(F d&#44; Y) <% end_if %></h3>
            <p>$EventDescription.BigSummary(50)</p>
               <div style="clear:left;"></div>
            </li>
          <% end_control %>
      </ul>
   </div></div>
   