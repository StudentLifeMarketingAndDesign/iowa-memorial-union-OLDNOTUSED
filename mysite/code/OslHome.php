<?php
/**
 * Defines the Minisite page type
 */
class OslHome extends TypeE {

function getCMSFields() {
	$fields = parent::getCMSFields();	return $fields;
	
   }}

class OslHome_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("OslHome");
		//Requirements::customxsaxas("test");
	
	
	
	}
 
}
?>