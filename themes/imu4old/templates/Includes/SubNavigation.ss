<% if Level(4) %>

    <h3><a href="$Level(2).Link">$Level(2).MenuTitle</a></h3>
    <ul class= "interiorlinks">
      <br />
      <% control Menu(3) %>
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
<% end_if %>


<% if Children %>
    <% if IncludeSiblings %>
        <% include Siblings %>
    <% end_if %>
    <% if SubNavTitle %>
    <h3>$SubNavTitle</h3>
<% else %>
    <h3>$MenuTitle</h3>
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
<% else %>
<% if IncludeSiblings %>
    <% include Siblings %>
<% end_if %>
<% end_if %>
