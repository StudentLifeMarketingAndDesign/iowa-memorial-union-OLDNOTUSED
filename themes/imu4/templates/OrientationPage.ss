<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<base href="$BaseHref" />
<title>$Title - Iowa Memorial Union - The University of Iowa</title>

<% control Page(home) %>
$MetaTags(False)
<% end_control %>
<% if URLSegment = home %>

<% else %>
$MetaTags(False)
<% end_if %>
<style type="text/css">
label {
  color: #666;
  float: left;
  font-size: 0.8em;
  padding: 4px 0px 0px 0px;
  text-transform: uppercase;
  width: 90px;
}
.field {
  height: 30px;
}
.Actions {
  clear: left;
}
</style>
</head>
<body style="background: #444444;">
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
			  javascript:location.reload(true);
			} else {
			  // user is logged in, but did not grant any permissions
			}
		  } else {
			// user is not logged in
		  }
		}, {perms:'email,sms'});
  }
  function logoutnow() {
	FB.api('/me', function(response) {
	  //if (response.first_name==undefined) {
	  //alert("Restart!")
	  //} else {
	  document.getElementById('Form_Form_first_name').value = response.first_name;
	  document.getElementById('Form_Form_last_name').value = response.last_name;
	  document.getElementById('Form_Form_email').value = response.email;
	  document.getElementById('Form_Form_facebook_id').value = response.id;
	  var myForm = document.getElementById('Form_Form');
	  myForm.submit();
	  FB.logout(function(response) {
	    //user is now logged out
	  });
	  //}
	  });
	
  }
</script>
<div style="margin-left: auto; margin-right: auto; width: 980px; background: #e2f3fc; border-left: solid 1px;">
<% if HeadImage %><div><img src="$HeadImage.URL" /></div><% end_if %>
<% if TitleImage %><div style="margin-left: 20px;"><img src="$TitleImage.URL" /><% end_if %>
<div style="clear: both; height: 30px;"></div>
<div style="float: right; width: 320px;">
	<div style="background: url('$ThemeDir/images/singlepagelayout2.png') -550px -9px; width: 308px; height: 30px;"></div>
	<div style="margin-left: 30px;">
	$Form
	</div>
</div>
<div style="float: left; width: 500px;">
	<div style="float: left; width: 60px;">
	<div style="background: url('$ThemeDir/images/singlepagelayout2.png') -35px -10px; width: 50px; height: 50px; "></div>
	</div>
	<div style="float: left; width: 400px;">
	  <div style="background: url('$ThemeDir/images/singlepagelayout2.png') -84px -9px; width: 308px; height: 76px;">
	  <a href="#" onClick="loginnow();return false;"><span style="display: block; width: 308px; height: 76px;"></span></a>
	  </div>
	</div>
	<div style="clear: both; height: 20px;"></div>
	<div style="float: left; width: 60px;">
	<div style="background: url('$ThemeDir/images/singlepagelayout2.png') -33px -120px; width: 55px; height: 50px;"></div>
	</div>
	<div style="float: left; width: 400px;">
	<p>Like us</p>
	  <div><fb:like-box profile_id="$FBID" width="500" stream="false" header="false" connections="16"></fb:like-box></div>
	</div>
	<div style="clear: both; height: 20px;"></div>
	<div style="float: left; width: 60px;">
	<div style="background: url('$ThemeDir/images/singlepagelayout2.png') -32px -1028px; width: 55px; height: 50px;"></div>
	</div>
	<div style="float: left; width: 400px;">
	  <div style="background: url('$ThemeDir/images/singlepagelayout2.png') -84px -1024px; width: 308px; height: 76px;">
	  <a href="#" onClick="logoutnow();return false;"><span style="display: block; width: 308px; height: 76px;"></span></a>
	  </div>
	</div>
</div>
<div style="clear: both; height: 200px;"></div>

</div>
</div>
</body>

</html>

