<script type="text/javascript" src="http://svp.uiowa.edu/themes/svp/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="themes/imu4/javascript/coin-slider.min.js"></script>


<script type="text/javascript">
  WebFontConfig = {
    google: { families: [ 'Kreon:300,400,700:latin' ] }
  };
  (function() {
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })(); </script>


<div id="content-container">
<link href='http://fonts.googleapis.com/css?family=Sue+Ellen+Francisco&v1' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'>

<link href='http://fonts.googleapis.com/css?family=Cabin:regular,500,600,bold&v1' rel='stylesheet' type='text/css'>

<span class="main-feature-tabs2"> </span>
  <div id="interior-links-wrapper">
    <!-- here's the NAV to replace -->
    
    <br /><br />
    <% include IndependantSubNav %> 
    <% include SLSAds %>
  </div>
 
 <h1 style="margin-left: 35px;"><img src="http://imu.uiowa.edu/assets/StudentLegalServices/slsheader.png" alt="Student Legal Services"></h1>
 
    <div id="content-inner">
	
		<div id="content-header">
			<!--<img id="cloud" src="$TitleImage.URL" />-->
		</div>
	
		<div id="content1">
		
		

<div id="new-container">
	<div id="left">
	
	
	<div id="coin-slider">
	
    
<% control StudentLegals %>

 <img src="http://imu.uiowa.edu$ObjectImage.URL" width="600" height="200" alt="" />
		   				<span style="display: none; ">$Title</span>

<% end_control %>
    
		   <!--<img src="http://imu.uiowa.edu/assets/StudentLegalServicesPage/postit.jpg" width="600" height="200" alt="" />
		   				<span style="display: none;">Don't forget! SLS is here to help</span>
                        
               <img src="http://imu.uiowa.edu/assets/StudentLegalServicesPage/gavel.jpg" width="600" height="200" alt="" />
			   		   <span style="display: none; ">Over 40 Years of Serving Students</span>
                       
                <img src="http://imu.uiowa.edu/assets/StudentLegalServicesPage/books.jpg" width="600" height="200" alt="" />
						   <span style="display: none; ">Our expertise is here for you</span>
                           
                <img src="http://imu.uiowa.edu/assets/StudentLegalServicesPage/oldcap.jpg" width="600" height="200" alt="" />
						   <span style="display: none; ">Stop by for a free consultation</span>-->
	

</div><!--end coin slider-->




<h2 style="margin-left: -1px; margin-top: -5px;"><a href="http://uisg.uiowa.edu/housing/rental-topics/rss/">From the Iowa City Rental Guide website:</a></h2>
	<% control BlogEntries(2, http://uisg.uiowa.edu/housing/rental-topics/rss/) %>
		<div class="blog_entry">
			<h3><a href="$Link" target="_blank">$Title</a></h3>
			<h4>$Date.Format(F j&#44; Y)</h4>
			<p class="blog" style="margin-left: -1px;">$Description.Summary(50) <a href="$Link" target="_blank">more...</a></p>
		</div>
		
	<% end_control %>
    
<p>$Content1</p>


<script type="text/javascript">
	$(document).ready(function() {
		$('#coin-slider').coinslider({ delay: 10000 });
	});
</script>
</div>
<p>&nbsp;</p>
	
	</div><!--end left-->
	
<div id="right">
	
	<!-- <h2 style="margin-left: -5px; font-weight: bold;">FREE LEGAL ADVICE</h2> -->

<p style="margin-left: -1px; font-size: 16px; margin-bottom: 50px;" height="250px">Student Legal Services provides high quality, affordable legal advice and representation. Whether you have questions regarding an alcohol offense, are considering a divorce, or need consultation before signing a lease or contract, our professionally-trained staff is ready and willing to help you. We serve University of Iowa students and advice is free. Know your rights. Book an appointment with us today.</p>
<p><a href="http://uisg.uiowa.edu/housing/" target="_blank"><img src="assets/StudentLegalServicesPage/rental_guide.png" /></a></p>
<blockquote style="padding: 10px; font-size: 14px; background-color: rgba(174, 224, 250, .9); border: 2px solid black;">
<h2 style="font-size: 24px; margin-left: -20px; font-weight: bold;">APPOINTMENTS</h2>
Advice is free for UI Students!<br />
<h3 style="margin-bottom: -1px; color: #000; font-size: 18px;">Call us to make an appointment: 319-335-3276</h3>


<h3 style="margin-bottom: -1px; color: #000;">Contact Us</h3>

 Email: <a href="mailto:student-legal@uiowa.edu">student-legal@uiowa.edu</a><br />
 Address: 157 Iowa Memorial Union, Iowa City, Iowa 52242-1317

 <h3 style="margin-bottom: -1px; color: #000;">Staff</h3>
<b>Greg Bal</b>, Supervising Attorney<br />
<b>Kim Spurlin</b>, Office Manager<br />
<b>Patrick Grim</b>, Undergraduate Director<br />
<b>Ryan Brunner</b>, Assistant Undergraduate Director
	
 </blockquote>
 
<p style="margin: 0px;">&nbsp;</p>


<img src="http://imu.uiowa.edu/assets/StudentLegalServices/how-to-sls.png" alt="Make an appointment for a free conultation. Call 319-335-3276. Additional consultations and advice are free for registered UI students. Legal respresentation is available for a nominal fee." style="border: 2px solid #000;">



	</div><!--end right-->
  
	</div><!--end new-container-->
	
	
		<div id="disability-statement"><p>Individuals with disabilities are encouraged to attend all University of Iowa sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in this program, please contact the Center for Student Leadership and Involvement in advance at 319-335-3059. </p></div>
	
		
	</div>
	
	  <div style="clear: right"></div>

  <div class="clear"></div>  
  </div>