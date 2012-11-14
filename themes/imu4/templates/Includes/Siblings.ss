<h3><a href="$Parent.Link">$Parent.MenuTitle</a></h3>
	<ul class="interiorlinks">
	<br />
	<% control Siblings %>
	
    <li>
	<% if LinkOrCurrent = current %>
		<strong>$MenuTitle</strong>
	<% else %>
        <% if ClassName = RedirectorPage %>
        	<% if RedirectionType = External %>
                <a href="$Link" name="$RedirectionType" title="Go to the $Title.XML page" target="_blank" class="external-link">$MenuTitle</a>
            <% else %>
            	<a href="$Link" title="Go to the $Title.XML page">$MenuTitle</a>
            <% end_if %>
        <% else %>
            <a href="$Link" title="Go to the $Title.XML page">$MenuTitle</a>
        <% end_if %>
	<% end_if %>
    </li>	
        
    <% end_control %>
    </ul>