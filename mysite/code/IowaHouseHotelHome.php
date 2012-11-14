<?php
/**
 * Defines the Minisite page type
 */
class IowaHouseHotelHome extends Page {

static $db = array(

	"Content2a" => "HTMLText"

);

function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Content2', new HTMLEditorField('Content2a'));
	
	$fields->removeByName('Content3');
	$fields->removeByName('Content2Title');
	$fields->removeByName('Images');
	$fields->removeByName('TitleImage');
	
	$fields->removeByName('Content4');	return $fields;
	
   }}

class IowaHouseHotelHome_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("IowaHouseHotelHome");
	
	
	
	}
 
}
 
?>