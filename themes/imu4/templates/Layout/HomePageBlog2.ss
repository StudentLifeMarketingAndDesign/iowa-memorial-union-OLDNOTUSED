<script type="text/javascript"> 
$(document).ready(function() {
    $('.slideshow').cycle({
		fx: 'fade',
		after: changeIndicator
		
		
		
		
		
	});
	
	$('.goto1').click(function() { 
        $('.slideshow').cycle(0);
		$('.slideshow').cycle('pause');
		$('.indicator').css("top", "65px");
        return false; 
    });
    $('.goto2').click(function() { 
        $('.slideshow').cycle(1);
		$('.slideshow').cycle('pause');
		$('.indicator').css("top", "136px");
        return false; 
    });

	$('.goto3').click(function() { 
        $('.slideshow').cycle(2);
		$('.slideshow').cycle('pause');
		$('.indicator').css("top", "208px");
        return false; 
    });
    $('.goto4').click(function() { 
        $('.slideshow').cycle(3);
		$('.slideshow').cycle('pause');
		$('.indicator').css("top", "278px");
        return false; 
    });	
    
	$('.goto5').click(function() { 
        $('.slideshow').cycle(4);
		$('.slideshow').cycle('pause');
        return false; 
    });
  

	function changeIndicator() {
		var pos = this.className.match(/[0-9]/);		
		switch(parseInt(pos)) {
		case 1:
			$('.indicator').css("top", "65px");
		  	break;
		case 2:
			$('.indicator').css("top", "136px");
		  	break;
		case 3: 
			$('.indicator').css("top", "208px");
			break;
		case 4:
			$('.indicator').css("top", "278px");
			break;
		default:
			//alert("broke!");
		}
	}

	function changeIndicator() {
		var pos = this.className.match(/[0-9]/);		
		switch(parseInt(pos)) {
		case 1:
			$('.indicator').css("top", "65px");
		  	break;
		case 2:
			$('.indicator').css("top", "136px");
		  	break;
		case 3: 
			$('.indicator').css("top", "208px");
			break;
		case 4:
			$('.indicator').css("top", "278px");
			break;
		default:
			//alert("broke!");
		}
	}

});


</script> 

<script type="text/javascript" charset="utf-8"> 
		$(function () {
			var tabContainers = $('div.tabs > div');
			tabContainers.hide().filter(':first').show();
			
			$('div.tabs ul.tabNavigation a').click(function () {
				tabContainers.hide();
				tabContainers.filter(this.hash).show();
				$('div.tabs ul.tabNavigation a').removeClass('selected');
				$(this).addClass('selected');
				return false;
			}).filter(':first').click();
		});
</script> 

<script type="text/javascript" charset="utf-8"> 
	$(function(){
	 $('#tweets').tweetable({username: 'imubuddy'});
	});
</script>

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


<div class="slideshow">

	<% control GetHomeFeatures %>
<div class="main-feature slide{$Pos}" style="background: url($ObjectImage.URL);">
		<!--<div class="indicator"><img src="$ThemeDir/images/indicator.png" width="38" height="38" alt="Indicator" /></div>-->
		<div class="main-feature-link" style="background: url($ObjectImage.URL);">
			<a href="$LinkURL" target="_blank"></a>
		</div>
		<ul id="main-feature-nav">
			<% control GetHomeFeatures %>
			<li class="$LinkingMode $FirstLast published-{$Published}"><a href="$LinkURL" class="goto{$Pos}">$Title<br/><% if Tagline %><span class="sub">$Tagline</span><% end_if %></a></li>
			<% end_control %>
		</ul>
		<div class="clear"></div>
	</div>

	<% end_control %>

	

</div>

<div id="content-wrapper">

	<div id="content-home">
		
		<div id="events-home">
			<h2><a href="http://afterclass.uiowa.edu/">After Class <span class="tint">:: Upcoming Events at the IMU</span></a></h2>
			
			<% cached %>
        	<% control RSSEvents(3,http://afterclass.uiowa.edu/events/categoriesrss/iowa_memorial_union) %>
        	
				<div class="event">
					<% if Smallimage %><a href="$Link"><img src="$Smallimage" /></a><% end_if %>
					<div class="info">
						<h3><a href="$Link">$Title</a></h3>
						<% if Dates %><h4>$Dates</h4><% end_if %>
						<p class="description">$Description.Summary(25) [<a href="$Link">more</a>]</p>
					</div>
				</div>
		
			
			<% end_control %>
			<% end_cached %>
			<p><a href="http://afterclass.uiowa.edu" target="_blank">See more events at After Class &raquo;</a></p>
		</div>
		
		<div id="blog-home">
			<h2><a href="/news">Under the Dome <span class="tint">:: UI Student Blog</span></a></h2>
			
			<% cached %>
			<% control RSSItems(5, http://afterclass.uiowa.edu/blog/feed/) %>
				<div class="blog-post">
					
					<h3><a href="$Link">$Title</a></h3>
					<p><span class="date">$Date.Format(F j&#44; Y)</span> $Description.Summary(50) [<a href="$Link">more</a>]</p>

				</div>
		
			
			<div class="clear-left"></div>
			<% end_control %>
			<% end_cached %>
	
			
			
		</div>

		
		
		<h2><a href="/students">Student Organizations <span class="tint">:: CSIL</span></a></h2>
		<div id="student-organizations">
		
		<% control GetHomeOrgs %>
		
			<div class="student-organization {$EvenOdd}">
				<a href="{$LinkURL}"><% if ObjectImage %>$ObjectImage<% end_if %></a>
				<h3><a href="{$LinkURL}">$Title</a></h3>
				<p>$Description</p>
			</div>
			
		<% end_control %>
			

			
		</div>
	</div>
	
	<div id="sidebar-home">
		
		<div id="social-media" class="sidebar-box">
			<h3>Social Media</h3>
			<div class="sidebar-content">
				<div class="facebook-embed">
					<iframe src="http://www.facebook.com/plugins/like.php?app_id=130657357028805&amp;href=facebook.com%2Fuiowa.imu&amp;send=false&amp;layout=standard&amp;width=272&amp;show_faces=true&amp;action=like&amp;colorscheme=light&amp;font&amp;height=80" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:272px; height:80px;" allowTransparency="true"></iframe>
				</div>
				<ul class="badges">
					<li id="social-twitter"><a href="http://twitter.com/imubuddy">Twitter</a></li>
					<li id="social-facebook"><a href="http://facebook.com/uiowa.imu">Facebook</a></li>
					<li id="social-youtube"><a href="http://youtube.com/imubuddy">YouTube</a></li>
					<li id="social-flickr"><a href="http://flickr.com/imubuddy">Flickr</a></li>
					<li id="social-rss"><a href="#">RSS</a></li>
				</ul>
			</div>
		</div>
		
		<div id="newsletter" class="sidebar-box">
			<h3><a href="http://afterclass.uiowa.edu">After Class</a> :: Activities & Events</h3>
			<div class="sidebar-content">
				<p>Give us your email address, and we'll keep you informed about student-focused campus events:</p>
				<!-- Begin MailChimp Signup Form -->
				<script type="text/javascript">
				// delete this script tag and use a "div.mce_inline_error{ XXX !important}" selector
				// or fill this in and it will be inlined when errors are generated
				var mc_custom_error_style = '';
				</script>
				<div id="mc_embed_signup">
				<form action="http://uiowa.us2.list-manage.com/subscribe/post?u=c61b1cddac92babd42d7d628e&amp;id=8e3635391c" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank">
					<fieldset>
						<div id="mce-responses" class="newsletter-responses">
							<div class="response" id="mce-error-response" style="display:none"></div>
							<div class="response" id="mce-success-response" style="display:none"></div>
						</div>
						<div class="mc-field-group"  class="newsletter-inputs">
							<input type="text" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Email address..." />
							<input type="submit" value="Join" name="subscribe" id="mc-embedded-subscribe" class="btn" />
						</div>
					</fieldset>	
				</form>
				</div>
				<script type="text/javascript">
				var fnames = new Array();var ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='FNAME';ftypes[1]='text';fnames[2]='LNAME';ftypes[2]='text';fnames[3]='STUDENT';ftypes[3]='radio';fnames[4]='MMERGE4';ftypes[4]='text';
				try {
				    var jqueryLoaded=jQuery;
				    jqueryLoaded=true;
				} catch(err) {
				    var jqueryLoaded=false;
				}
				var head= document.getElementsByTagName('head')[0];
				if (!jqueryLoaded) {
				    var script = document.createElement('script');
				    script.type = 'text/javascript';
				    script.src = 'http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js';
				    head.appendChild(script);
				    if (script.readyState && script.onload!==null){
				        script.onreadystatechange= function () {
				              if (this.readyState == 'complete') mce_preload_check();
				        }    
				    }
				}
				var script = document.createElement('script');
				script.type = 'text/javascript';
				script.src = 'http://downloads.mailchimp.com/js/jquery.form-n-validate.js';
				head.appendChild(script);
				var err_style = '';
				try{
				    err_style = mc_custom_error_style;
				} catch(e){
				    err_style = 'margin: 1em 0 0 0; padding: 1em 0.5em 0.5em 0.5em; background: ERROR_BGCOLOR none repeat scroll 0% 0%; font-weight: bold; float: left; z-index: 1; width: 80%; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; color: ERROR_COLOR;';
				}
				var head= document.getElementsByTagName('head')[0];
				var style= document.createElement('style');
				style.type= 'text/css';
				if (style.styleSheet) {
				  style.styleSheet.cssText = '.mce_inline_error {' + err_style + '}';
				} else {
				  style.appendChild(document.createTextNode('.mce_inline_error {' + err_style + '}'));
				}
				head.appendChild(style);
				setTimeout('mce_preload_check();', 250);

				var mce_preload_checks = 0;
				function mce_preload_check(){
				    if (mce_preload_checks>40) return;
				    mce_preload_checks++;
				    try {
				        var jqueryLoaded=jQuery;
				    } catch(err) {
				        setTimeout('mce_preload_check();', 250);
				        return;
				    }
				    try {
				        var validatorLoaded=jQuery("#fake-form").validate({});
				    } catch(err) {
				        setTimeout('mce_preload_check();', 250);
				        return;
				    }
				    mce_init_form();
				}
				function mce_init_form(){
				    jQuery(document).ready( function($) {
				      var options = { errorClass: 'mce_inline_error', errorElement: 'div', onkeyup: function(){}, onfocusout:function(){}, onblur:function(){}  };
				      var mce_validator = $("#mc-embedded-subscribe-form").validate(options);
				      $("#mc-embedded-subscribe-form").unbind('submit');//remove the validator so we can get into beforeSubmit on the ajaxform, which then calls the validator
				      options = { url: 'http://uiowa.us2.list-manage.com/subscribe/post-json?u=c61b1cddac92babd42d7d628e&id=8e3635391c&c=?', type: 'GET', dataType: 'json', contentType: "application/json; charset=utf-8",
				                    beforeSubmit: function(){
				                        $('#mce_tmp_error_msg').remove();
				                        $('.datefield','#mc_embed_signup').each(
				                            function(){
				                                var txt = 'filled';
				                                var fields = new Array();
				                                var i = 0;
				                                $(':text', this).each(
				                                    function(){
				                                        fields[i] = this;
				                                        i++;
				                                    });
				                                $(':hidden', this).each(
				                                    function(){
				                                        var bday = false;
				                                        if (fields.length == 2){
				                                            bday = true;
				                                            fields[2] = {'value':1970};//trick birthdays into having years
				                                        }
				                                    	if ( fields[0].value=='MM' && fields[1].value=='DD' && (fields[2].value=='YYYY' || (bday && fields[2].value==1970) ) ){
				                                    		this.value = '';
													    } else if ( fields[0].value=='' && fields[1].value=='' && (fields[2].value=='' || (bday && fields[2].value==1970) ) ){
				                                    		this.value = '';
													    } else {
					                                        this.value = fields[0].value+'/'+fields[1].value+'/'+fields[2].value;
					                                    }
				                                    });
				                            });
				                        return mce_validator.form();
				                    }, 
				                    success: mce_success_cb
				                };
				      $('#mc-embedded-subscribe-form').ajaxForm(options);      

				    });
				}
				function mce_success_cb(resp){
				    $('#mce-success-response').hide();
				    $('#mce-error-response').hide();
				    if (resp.result=="success"){
				        $('#mce-'+resp.result+'-response').show();
				        $('#mce-'+resp.result+'-response').html(resp.msg);
				        $('#mc-embedded-subscribe-form').each(function(){
				            this.reset();
				    	});
				    } else {
				        var index = -1;
				        var msg;
				        try {
				            var parts = resp.msg.split(' - ',2);
				            if (parts[1]==undefined){
				                msg = resp.msg;
				            } else {
				                i = parseInt(parts[0]);
				                if (i.toString() == parts[0]){
				                    index = parts[0];
				                    msg = parts[1];
				                } else {
				                    index = -1;
				                    msg = resp.msg;
				                }
				            }
				        } catch(e){
				            index = -1;
				            msg = resp.msg;
				        }
				        try{
				            if (index== -1){
				                $('#mce-'+resp.result+'-response').show();
				                $('#mce-'+resp.result+'-response').html(msg);            
				            } else {
				                err_id = 'mce_tmp_error_msg';
				                html = '<div id="'+err_id+'" style="'+err_style+'"> '+msg+'</div>';

				                var input_id = '#mc_embed_signup';
				                var f = $(input_id);
				                if (ftypes[index]=='address'){
				                    input_id = '#mce-'+fnames[index]+'-addr1';
				                    f = $(input_id).parent().parent().get(0);
				                } else if (ftypes[index]=='date'){
				                    input_id = '#mce-'+fnames[index]+'-month';
				                    f = $(input_id).parent().parent().get(0);
				                } else {
				                    input_id = '#mce-'+fnames[index];
				                    f = $().parent(input_id).get(0);
				                }
				                if (f){
				                    $(f).append(html);
				                    $(input_id).focus();
				                } else {
				                    $('#mce-'+resp.result+'-response').show();
				                    $('#mce-'+resp.result+'-response').html(msg);
				                }
				            }
				        } catch(e){
				            $('#mce-'+resp.result+'-response').show();
				            $('#mce-'+resp.result+'-response').html(msg);
				        }
				    }
				}

				</script>
				<!--End mc_embed_signup-->
			</div>
		</div>
			
		</div>
		
	<% if Ad1Image %>
		<div id="bookstore" class="static_ad">
	
			<a href="$Ad1URL" target="_blank">$Ad1Image</a>
		</div>
	<% end_if %>
	
	<% if Ad2Image %>
		<div id="tech-connection" class="static_ad">
			<a href="$Ad2URL" target="_blank">$Ad2Image</a>
		</div>
	<% end_if %>
	
	<% if Ad3Image %>
		<div id="secondary-ad" class="static_ad">
			<a href="$Ad3URL" target="_blank">$Ad3Image</a>
		</div>
	<% end_if %>	
	

	</div>
	
	<div class="clear-left"></div>

