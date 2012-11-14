<?php
/**
 * Defines the Minisite page type
 */
class CICv2 extends TypeE {

function getCMSFields() {
	$fields = parent::getCMSFields();	return $fields;
	
   }}

class CICv2_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("CICv2");
		//Requirements::customxsaxas("test");
	
	
	
	}
 
}
?>