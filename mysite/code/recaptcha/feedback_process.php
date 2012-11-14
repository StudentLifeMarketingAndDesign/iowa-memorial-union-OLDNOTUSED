<?

				require_once('/var/www_imu/mysite/code/recaptcha/recaptchalib.php');
				$privatekey = "6LcjsAgAAAAAAJNAXp7BiEvEas6scIeWzQdaS87c";
				$resp = recaptcha_check_answer ($privatekey,
												$_SERVER["REMOTE_ADDR"],
												$_POST["recaptcha_challenge_field"],
												$_POST["recaptcha_response_field"]);
				
				print_r($_POST);
				
				if (!$resp->is_valid) {
				  die ("The reCAPTCHA wasn't entered correctly. Go back and try it again." .
					   "(reCAPTCHA said: " . $resp->error . ")");
				}


			  $name = strip_tags(str_replace(":", " - ", $_POST['name']));
			  $email = strip_tags(str_replace(":", " - ", $_POST['email']));
			  $subject = strip_tags(str_replace(":", " - ", $_POST['subject']));
			  $message = "Name: ".strip_tags(str_replace(":", " - ", $_POST['name']))."\n";
			  $message .= "Email: ".strip_tags(str_replace(":", " - ", $_POST['email']))."\n";
			  $message .= "Concern: ".strip_tags(str_replace(":", " - ", $_POST['concern']))."\n";
			  $message .= "Sent from IP: ".$_SERVER['REMOTE_ADDR']."\n";
			  
			  $message = trim(stripslashes($message));
			
			  $name = trim($_POST['name']);
			  $email = trim($_POST['email']);
			  $ID = (integer)$_POST['ID'];
	
			  if ($message != '') {
					mail( "imu-feedback@uiowa.edu", "IMU Site Feedback: ".$subject, $message, "From: \"$name\" <$email>" );
				}
				
				header("Location: http://rubicon.imu.uiowa.edu/imu-feedback-thank-you/");


?>