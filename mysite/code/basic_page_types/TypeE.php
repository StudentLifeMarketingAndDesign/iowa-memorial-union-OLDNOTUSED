<?php
/**
 * Defines the Minisite page type
 */
class TypeE extends Page {

   static $db = array(
  				  
  
   );
   
   
   
   static $has_one = array(
   
 
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->removeByName('ContentImageCaption');
	$fields->removeByName('Content2'); 
	$fields->removeByName('Content1Title'); 
	
	/* Image Dimensions in the label */
	$fields->removeByName('ContentImage'); 
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( 735x331 pixels )'));	return $fields;
	
   }}

class TypeE_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("TypeE");

	
	}
 
}
 
?>