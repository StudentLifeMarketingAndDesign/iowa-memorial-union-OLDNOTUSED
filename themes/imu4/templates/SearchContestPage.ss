
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html> 
	<head>
		<style type=text/css>
		
		body {
			background: $BackgroundColor;
			font-family: Helvetica, sans;
			color: #333;
		}
		
		a{ text-decoration: none;}

		#container{
			width: 600px;
			margin: auto;
		}
		
		.status {
			color: red;
		}
		
		
		/*forms */
		
		#form {
			border: 1px solid #ddd;
			background: white;
			border-top-right-radius: 6px 6px;
			border-top-left-radius: 6px 6px;
			border-bottom-right-radius: 6px 6px;
			border-bottom-left-radius: 6px 6px;
			padding: 20px;
		}
		
		fieldset {
			border: none;
			padding: 0;
		
		}
		
		.text input, #Email input {
			width: 540px;
			color: #333;
			font-family: Helvetica;
			font-size: 16px;
			background-color: #eee;
			border-color: #d0d0d0;
			border-width: 2px;
			border-style: solid;
			padding: 5px;
		
		}
		
		label {
			font-weight: bold;
			color: #333;
		}
		
		.field {
			padding-top: 10px;
			padding-bottom: 10px;
		}
		
		.optionset li {
			list-style: none;
		
		}
		
		</style>
		<title>$Title - Iowa Memorial Union - The University of Iowa</title>
	</head>
	<body>
	<div id="container">
			<h1><% if HeaderLink %> <a href="$HeaderLink"> <% end_if %><% if Image %>$Image<% else %> $Title <% end_if %><% if HeaderLink %> </a> <% end_if %></h1>
		<div id="form">

	<% if StatusMessage %> 
		<% control StatusMessage %> 
			<p class="status">$Message </p> 
		<% end_control %> 
	<% end_if %>
			$Content
			$Form
		
		
		
		
		</div>
		
	</div>

	
	</body>
</html>