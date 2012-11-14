<?php
/**
 * Defines the Minisite page type
 */
class CicHome extends TypeE {

function getCMSFields() {
	$fields = parent::getCMSFields();	return $fields;
	
   }}

class CicHome_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("CicHome");
		//Requirements::customxsaxas("test");
	
	
	
	}
 
}
?>