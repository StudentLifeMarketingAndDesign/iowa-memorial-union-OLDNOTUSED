<?php
/**
 * Defines the Minisite page type
 */
class RenovationPage extends TypeE {

   static $db = array(
  				  
  
   );
   
   
   
   static $has_one = array(
   
 
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	return $fields;
   }}

class RenovationPage_Controller extends TypeE_Controller {

function init() {
		parent::init();


	
	}
 
}
 
?>