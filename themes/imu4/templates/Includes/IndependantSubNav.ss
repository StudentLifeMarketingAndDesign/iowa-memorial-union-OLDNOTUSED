

<% if Children %>
    <!--<h3>$MenuTitle</h3>-->
<% end_if %>

<ul class= "interiorlinks">
  <br />
  <% control Children %>
      <li>
        <% if ClassName = RedirectorPage %>
        	<% if RedirectionType = External %>
                <a href="$Link" name="$RedirectionType" title="Go to the $Title.XML page" target="_blank" class="external-link">$MenuTitle</a>
            <% else %>
            	<a href="$Link" title="Go to the $Title.XML page">$MenuTitle</a>
            <% end_if %>
        <% else %>
            <a href="$Link" title="Go to the $Title.XML page">$MenuTitle</a>
        <% end_if %>
        
      </li>
  <% end_control %>
</ul>
