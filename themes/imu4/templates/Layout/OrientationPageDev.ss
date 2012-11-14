<div style="">
<link rel="stylesheet" type="text/css" href="/themes/imu4/css/TypeD.css" />
<style type="text/css">
div.Actions { display: none; }
</style>
<div id="fb-root"></div>
<script>
  window.fbAsyncInit = function() {
    FB.init({appId: '127918570561161', status: true, cookie: true,
             xfbml: true});
  };
  (function() {
    var e = document.createElement('script'); e.async = true;
    e.src = document.location.protocol +
      '//connect.facebook.net/en_US/all.js';
    document.getElementById('fb-root').appendChild(e);
  }());
  function loginnow() {
	  FB.login(function(response) {
		  if (response.session) {
			if (response.perms) {
			  // user is logged in and granted some permissions.
			  // perms is a comma separated list of granted permissions
			} else {
			  // user is logged in, but did not grant any permissions
			}
		  } else {
			// user is not logged in
		  }
		  //setTimeout('location.reload(true);', 100);
		  setTimeout("$('two').show();$('one').hide();", 100);
		}, {perms:'email,sms'});
  }
  function afterlike() {
  	setTimeout("$('two').hide();$('three').show();", 100);
  }
  function logoutnow() {
	FB.api('/me', function(response) {
	  document.getElementById('Form_Form_first_name').value = response.first_name;
	  document.getElementById('Form_Form_last_name').value = response.last_name;
	  document.getElementById('Form_Form_email').value = response.email;
	  document.getElementById('Form_Form_facebook_id').value = response.id;
	  var myForm = document.getElementById('Form_Form');
	  myForm.submit();
	});
	FB.logout(function(response) {
	   //user is now logged out
	});
	setTimeout("$('three').hide();$('four').show();", 100);
  }
  function startOver() {
  	setTimeout("$('four').hide();$('two').hide();$('three').hide();$('one').show();$('nofacebook').show()", 100);
	FB.logout(function(response) {
	   //user is now logged out
	});
  }
  function noFacebook() {
    $('four').hide();$('two').hide();$('three').hide();$('one').hide();$('nofacebook').show();
    //setTimeout("$('four').hide();$('two').hide();$('three').hide();$('one').hide();$('nofacebook').show();", 100);
  }
</script>
<script src="/themes/imu4/javascript/prototype.js" type="text/javascript"></script>
<div style="text-align: center; padding-top: 20px;"><br />
<h1 style="font-size: 3.0em;">Connect to the Iowa Memorial Union</h1>
<div style="margin-left: 250px; margin-top: 20px; margin-bottom: 25px;"><div style="line-height: 1.2em; width: 450px;">Connecting to the IMU through Facebook lets you stay in touch with campus-wide events and more. We will also sign you up for the IMU email listserv, giving you the access to weekly contests, news, and events.</div></div>
<div id="one">
  <h2>Step One</h2>
  <div style="margin-top: 50px; margin-bottom: 50px;">
  <div style="font-size: 2.0em;"><a href="#" onClick="loginnow();return false;">Login To Facebook</a></div>
  </div>
</div>
<div id="two" style="display: none;">
  <h2>Step Two</h2>
  <div style="margin-top: 50px; margin-bottom: 50px;">
  <div style="font-size: 2.0em;">Like The IMU Facebook Page</div>
  <div><fb:like-box profile_id="64131067165" width="500" stream="false" header="false" connections="16"></fb:like-box></div>
  <div style="font-size: 2.0em;"><a href="#" onClick="afterlike();return false;">Go To Step Three</a></div>
  </div>
</div>
<div id="three" style="display: none;">
  <h2>Step Three</h2>
  <div style="margin-top: 50px; margin-bottom: 50px;">
  <div style="font-size: 2.0em;"><a href="#" onClick="logoutnow();return false;">Logout of Facebook</a></div>
  </div>
</div>
</div>
<div id="four" style="display: none; text-align: center;">
  <h2>That's all!</h2>
  <div style="margin-top: 50px; margin-bottom: 50px;">
  Congratulations! You are now connected to the IMU through Facebook and the IMU email listserv.<br />You get access to weekly contests, news, events, and more.<br />
  <br />
  <div style="font-size: 2.0em;"><a href="#" onClick="startOver();return false;">Back To Start</a></div>
  </div>
</div>
</div>
<div id="nofacebook" style="display: none; text-align: center;">
  <h2>No Facebook? Connect to the ListServ!</h2>
  <form id="form1" action="/orientation-dev/Form" method="post" enctype="application/x-www-form-urlencoded">
  First Name: <input type="text" id="first_name1" name="first_name" value="" /><br />
  Last Name: <input type="text" id="last_name1" name="last_name" value="" /><br />
  Email: <input type="text" id="email1" name="email" value="" /><br />
  <input type="hidden" id="fb_id1" name="facebook_id" value="0" />
  <input class="action nolabel" id="action_SignupAction1" type="submit" name="action_SignupAction" value="Connect!" />
  </form>

</div>

<div style="clear: both; height: 100px;"></div>
<div style="float: left; width: 200px; margin-left: 200px;"><div style="font-size: 1.2em;"><a href="#" onClick="noFacebook();return false;">Don't Have Facebook?</a></div></div>
<div style="float: right; text-align: right; width: 200px; margin-right: 200px;"><div style="font-size: 1.2em;"><a href="#" onClick="startOver();return false;">Start Over</a></div></div>

<div style="clear: both; height: 500px;"></div>






    <!--
	$Content
    $Content1
    -->
    $Form

</div>