<?php
/**
 * Defines the Minisite page type
 */
class TypeC extends Page {

   static $db = array(

   );
   
   
   
   static $has_one = array(
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */
	$fields->removeByName('ContentImage'); 
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( 374x298 pixels )'));	return $fields;
	
   }}

class TypeC_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("TypeC");
		
	}
 
}
 
?>