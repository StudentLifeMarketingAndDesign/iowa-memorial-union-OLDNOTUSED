<div id="content-container">

<span class="main-feature-tabs2">   </span>
  <div id="interior-links-wrapper">
    <% include SubNavigation %>
    <% include Ads %>
  </div>
    <div id="content1">
  <span class="content1"> 
  <% if IncludePageNameInContent %>
  	<h1>$Title</h1>
  <% end_if %>
  <% if ContentImage %> $ContentImage <% end_if %></span>

<script>
var RecaptchaOptions = {
   theme : 'clean'
};
</script>


<h1>IMU Feedback/Contact</h1>
<p>Send feedback or questions regarding the Iowa Memorial Union.</p>
<form action="http://imu.uiowa.edu/mysite/code/recaptcha/feedback_process.php" method="post"> <input name="redirect" type="hidden" value="mailto:webmaster@imu.uiowa.edu" /> 
<table border="0" cellspacing="2" cellpadding="3" width="720">
<tbody>
<tr valign="top">
<td><strong>Your Name:</strong></td>
<td><input name="name" size="30" type="text" /></td>
</tr>
<tr valign="top">
<td><strong>E-mail Address:</strong></td>
<td><input name="email" size="30" type="text" /></td>
</tr>
<tr>
<td colspan="2">
<hr size="1" />
</td>
</tr>
<tr valign="top">
<td><strong>Subject:</strong></td>
<td><input name="subject" size="30" type="text" /></td>
</tr>
<tr>
</tr>
<tr valign="top">
<td><strong>What is your comment or concern?</strong></td>
<td><textarea cols="30" rows="6" name="concern"></textarea></td>
</tr>

<tr valign="top">
<td><strong>Prove you're human:</strong></td>
<td>$recaptcha</td>
</tr>

<tr>
<td colspan="2">
<hr size="1" />
</td>
</tr>
<tr>
<td align="center" valign="top"><input id="sendfeedback" name="sendfeedback" type="submit" value="Send Feedback/Contact" /></td>
<td align="center" valign="top"><input type="reset" value="Clear Form" /></td>
</tr>
</tbody>

</table>
</form>
	
    </div>
  <div class="clear"></div>
  </div>
