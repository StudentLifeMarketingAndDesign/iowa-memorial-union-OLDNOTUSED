<?php
/**
 * Defines the Orientation Data Collection Model & View Classes
 */
class TechConnectionOrientationPage extends OrientationPage {
   
	public static $db = array(
	);
	static $has_one = array(					 
	);  
	
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
   }}

class TechConnectionOrientationPage_Controller extends OrientationPage_Controller {
	
	function init() {
		parent::init();	
		
	}
}
 
?>