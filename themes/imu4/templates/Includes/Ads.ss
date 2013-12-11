<ul class = "ads">

<% control AllChildren %>
	<% if ClassName = AdHolder %>
    	<% control Children %>
        
        <li><a class="ads-one" href="$AdURL">$AdImage</a></li>
        
        <% end_control %>
     <% end_if %>
<% end_control %>
    	

<% control allSiblings %>
	<% if ClassName = AdHolder %>
    
    	<% control Children %>
        
        <li><a class="ads-one" href="$AdURL">$AdImage</a></li>
        
        <% end_control %>
    
    
    <% end_if %>

<% end_control %>
<% control ChildrenOf(global-ads) %>
<li><a class="ads-one" href="$AdURL">$AdImage</a></li>
<% end_control %>

</ul>

  
