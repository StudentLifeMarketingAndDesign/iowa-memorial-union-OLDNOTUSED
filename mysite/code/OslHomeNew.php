<?php
/**
 * Defines the Minisite page type
 */
class OslHomeNew extends TypeE {

function getCMSFields() {
	$fields = parent::getCMSFields();	return $fields;
	
   }}

class OslHomeNew_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("OslHomeNew");
		//Requirements::customxsaxas("test");
	
	
	
	}
 
}
?>