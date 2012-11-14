<?php
/**
 * Defines the Minisite page type
 */
class CampusEventServicesInterior extends TypeA {

static $db = array(


);

function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->removeByName('Content3'); 
	$fields->removeByName('Content4');
	
	/*$fields->addFieldToTab('Root.Content.Content2', new HTMLEditorField('Content2a'));
	
	$fields->removeByName('Content1Title');
	$fields->removeByName('Content3Title');
	$fields->removeByName('Images');
	$fields->removeByName('TitleImage');
	
	$fields->removeByName('Content4');*/	return $fields;
	
   }}

class CampusEventServicesInterior_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("CampusEventServicesInterior");
	
	
	
	}
 
}
 
?>