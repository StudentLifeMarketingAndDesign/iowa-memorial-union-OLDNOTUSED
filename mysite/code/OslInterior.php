<?php
/**
 * Defines the Minisite page type
 */
class OslInterior extends Page {

function getCMSFields() {
	$fields = parent::getCMSFields();	return $fields;
	
   }}

class OslInterior_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("OslInterior");
		//Requirements::customxsaxas("test");
	
	
	
	}
 
}
 
?>