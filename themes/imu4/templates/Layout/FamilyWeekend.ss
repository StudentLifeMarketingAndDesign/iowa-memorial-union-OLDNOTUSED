<script type="text/javascript" src="/mysite/code/javascript/jquery.js"></script>
<script type="text/javascript" src="/mysite/code/javascript/ui.core.js"></script>
<script type="text/javascript" src="/mysite/code/javascript/ui.tabs.js"></script>
<script type="text/javascript">
	$(function() {
		$("#tabs").tabs({
			event: 'mouseover'
		});
	});
	</script>


<div id="content-container">


    <div id="content1">
  <span class="content1"> 
  <% if IncludePageNameInContent %>
  	<h1>$Title</h1>
  <% end_if %>
  <% if ContentImage %> $ContentImage <% end_if %></span>
    $Content1
    
      
    
    
    </div>
  <div class="clear"></div>
  </div>
