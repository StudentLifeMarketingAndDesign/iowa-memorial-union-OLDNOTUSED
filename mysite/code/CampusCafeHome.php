<?php
/**
 * Defines the Minisite page type
 */
class CampusCafeHome extends TypeE {

function getCMSFields() {
	$fields = parent::getCMSFields();	return $fields;
	
   }}

class CampusCafeHome_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("CampusCafeHome");
		//Requirements::customxsaxas("test");
	
	
	
	}
 
}
 
?>