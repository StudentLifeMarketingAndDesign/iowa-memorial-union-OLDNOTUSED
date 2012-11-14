<?php
/**
 * Defines the Minisite page type
 */
class MapsPage extends TypeD {

   static $db = array(
   

   );
   
   
   
   static $has_one = array(
   
   );


function getCMSFields() {
	$fields = parent::getCMSFields();	return $fields;
	
   }}

class MapsPage_Controller extends Page_Controller {

	function init() {
		parent::init();
		Requirements::themedCSS("TypeD");
	
	}
 
}
 
?>