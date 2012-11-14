<?php
/**
 * Defines the Minisite page type
 */
class CampusEventServicesHome extends TypeA {

static $db = array(


);

function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/*$fields->addFieldToTab('Root.Content.Content2', new HTMLEditorField('Content2a'));
	
	$fields->removeByName('Content1Title');
	$fields->removeByName('Content3Title');
	$fields->removeByName('Images');
	$fields->removeByName('TitleImage');
	
	$fields->removeByName('Content4');*/	return $fields;
	
   }}

class CampusEventServicesHome_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("CampusEventServicesHome");
	
	
	
	}
 
}
 
?>