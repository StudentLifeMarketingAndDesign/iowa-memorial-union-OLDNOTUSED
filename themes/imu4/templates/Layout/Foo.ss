<html>
<head>
	<title>$Title</title>
	<style type="text/css">
		body {
			margin: 0;
			padding: 0;
		}

		*[contenteditable] {
			outline: none;
		}

		#content1_container {
			font-family: proxima-nova;
			width: 918px;
			margin: 4em auto;
			color: #666;
		}

		#content1_container h1,
		#content1_container h2,
		#content1_container h3,
		#content1_container h4,
		#content1_container h5,
		#content1_container h6 {
			color: #333;
		}

		#content1_container a {
			color: #08c;
			border-bottom: 0.125em dotted #CCE0EB;
			text-decoration: none;
		}

		#content1_container blockquote {
			background: #eee;
			color: #999;
			padding: 0.5em 1.5em;
			margin: 0;
		}

		/* Code for Clipboard */
		#cfc_container {
			background: black;
			width: 918px;
			margin: auto;
		}
		#cfc_bar {
			color: #999;
			font-family: Consolas;
			font-size: 12px;
			padding: 0.75em;
			display: block;
		}
		#cfc_bar > a {
			float: right;
			color: inherit;
			padding: 0.25em;
			position: relative;
			top: -0.125em;
		}
		#cfc {
			overflow: hidden;
		}
		#cfc:not(.rainbow) {
			display: none;
		}
	</style>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="$ThemeDir/javascript/rainbow.js"></script>
	<link href="$ThemeDir/css/blackboard-rainbow.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
		$(document).on('keyup paste', '#content1_container', function (event) {
			var codeForClipboard = document.getElementById('foo_head').innerHTML;
			codeForClipboard += $.trim( event.target.innerHTML );
			$('#cfc').text( codeForClipboard ).removeClass('rainbow');
			Rainbow.color();
		});

		$(document).ready(function () {
			var codeForClipboard = document.getElementById('foo_head').innerHTML;
			codeForClipboard += $.trim( document.getElementById('content1_container').innerHTML );
			$('#cfc').text( codeForClipboard ).removeClass('rainbow');
			Rainbow.color();
		});
		
		$(document).on('click', '#cfc_bar > a', function (event) {
			$('#cfc').toggle();
			event.preventDefault();
		});
	</script>
</head>
<body>
	<div id="foo_head"><!-- Typekit (fonts) -->
<script type="text/javascript" src="//use.typekit.net/rex6hem.js"></script>
<script type="text/javascript">try{Typekit.load();}catch(e){}</script>

<!-- Content -->
</div>

	<div id="content1_container" contenteditable="true">
		$Content1
	</div>

	<div id="cfc_container">
		<div id="cfc_bar">
			<a href="#">Click to Toggle</a>
			HTML
		</div>
		<pre><code id="cfc" data-language="html"></code></pre>
	</div>
</body>
</html>
