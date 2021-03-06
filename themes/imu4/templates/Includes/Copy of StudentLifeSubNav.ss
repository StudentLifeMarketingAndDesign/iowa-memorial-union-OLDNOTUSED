<h2 class="nav">Student Life Sub Nav</h2>
<h3><a href="$Level(1).Link">$Level(1).MenuTitle</a></h3>
<ul class= "interiorlinks">
	<% control Menu(2) %>
	<% if LinkOrCurrent = link %>
	<li><a href="<% if ExternalLink %> $ExternalLink <% else %> $Link <% end_if %>" title="Go to the $Title.XML page">$MenuTitle</a>
		<% else %>
	<li>$MenuTitle</li>
	<% end_if %>
	<% if Children %>
	<% if LinkOrSection = section %>
	<ul>
		<% control Children %>
		<% if LinkOrSection = link %>
		<li><a href="<% if ExternalLink %> $ExternalLink <% else %> $Link <% end_if %>" title="Go to the $Title.XML page">$MenuTitle</a>
		</li>
		<% else %>
		<li><a href="<% if ExternalLink %> $ExternalLink <% else %> $Link <% end_if %>" title="Go to the $Title.XML page">$MenuTitle</a></li>
			<% if Children %>
			<ul>
				<% control Children %>
				<% if LinkOrCurrent = link %>
				<li><a href="<% if ExternalLink %> $ExternalLink <% else %> $Link <% end_if %>" title="Go to the $Title.XML page">$MenuTitle</a></li>
					<% else %>
				<li>$MenuTitle</li>
				<% end_if %>
				<% end_control %>
			</ul>
			<% end_if %>
		</li>
		<% end_if %>
		<% end_control %>
	</ul>
	<% end_if %>
	<% end_if %>
	</li>
	<% end_control %>
</ul>
