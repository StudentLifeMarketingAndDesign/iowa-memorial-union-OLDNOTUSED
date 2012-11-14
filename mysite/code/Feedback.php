<?php
/**
 * Defines the Minisite page type
 */
class Feedback extends TypeD {

   static $db = array(
   

   );
   
   
   
   static $has_one = array(
   
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */
	$fields->removeByName('ContentImage'); 
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( 274x221 pixels )'));
	
	
	$fields->removeFieldFromTab("Root","Content2");	return $fields;
	
   }}

class Feedback_Controller extends TypeD_Controller {

	function init() {
		parent::init();	
	}
	
	function recaptcha() {
		require_once('/local/www/vhosts/uber.imu.uiowa.edu/htdocs_imu/mysite/code/recaptcha/recaptchalib.php');
		$publickey = "6LcjsAgAAAAAAD6MXE7QNLusIBMajgpfK_EWjL3C"; // Global key
		return recaptcha_get_html($publickey);
	}
 
}
 
?>