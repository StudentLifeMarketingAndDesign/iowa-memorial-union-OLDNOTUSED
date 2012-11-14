<?php
/**
 * Defines the Minisite page type
 */
class CampusCafeInterior extends CampusCafeHome {

function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */	
	$fields->removeByName('ContentImage'); 
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( 360x246 pixels )', null, null, null, $this->ClassName));
	return $fields;
	
   }}

class CampusCafeInterior_Controller extends Page_Controller {

function init() {
		parent::init();
	
		Requirements::themedCSS("CampusCafeHome");
		Requirements::themedCSS("CampusCafeInterior");
	
	}
	
 
}
 
?>