    <% control ChildrenOf(right-column) %>
     <div class="$EvenOdd">
     <div class="widget">
    <div class="widgetHeader">
    	<% if URL %>
    		<h2><a href="$URL">$Title</a></h2>
        <% else %>
        	<h2>$Title</h2>
        <% end_if %>
    </div>
        <ul>
        <% control Children %>
        	<li>
            <% if Image %>
            	<% if URL %>
                	<a href="$URL"><div class="widgetImage">$widgetImage</div></a>
                <% else %>
                	<div class="widgetImage">$widgetImage.setWidth(100)</div>
                <% end_if %>
            <% end_if %>
                
            <% if HeaderText1 %>
            	<% if URL %>
            		<h3><a href="$URL">$HeaderText1</a></h3>
                <% else %>
                	<h3>$HeaderText1</h3>
                <% end_if %>
           <% end_if %>
           
           <% if URL %>
            	<h2><a href="$URL">$Title</a></h2>
           <% else %>
           		<h2>$Title</h2>
           <% end_if %>
           $Content
      
            </li>
        <% end_control %>
       </ul>
    </div>
   <% end_control %>
   </div>