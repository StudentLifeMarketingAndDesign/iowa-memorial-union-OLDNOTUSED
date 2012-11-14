<?php
/**
 * Defines the Minisite page type
 */
class TypeD extends Page {

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

class TypeD_Controller extends Page_Controller {

	function init() {
		parent::init();
		Requirements::themedCSS("TypeD");
		
	
	}
 
}
 
?>