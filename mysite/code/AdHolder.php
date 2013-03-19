<?php
/**
 * Defines the AdHolder page type
 */
class AdHolder extends Page {
   static $db = array(
   
   );
   static $has_one = array(
   );
   
   static $allowed_children = array('AdPage');
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
 	
	$fields->removeFieldFromTab("Root.Content.Main","TitleImage");
	$fields->removeFieldFromTab("Root.Content","Content1");	
	$fields->removeFieldFromTab("Root.Content","Content2");	
	$fields->removeFieldFromTab("Root.Content","Images");		
	
    	
   return $fields;
}   

   
}
 
class AdHolder_Controller extends Page_Controller {

function init() {
		parent::init();
	
		
		
	
	}
 
}
 
?>