<?php
/**
 * Defines the Minisite page type
 */
class CampusEventServicesRoomDisplay extends TypeA {

static $db = array(

"Location" => "Text",
"CESMainSubtext" => "HTMLText"


);

function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Main', new TextField('Location','Room Location'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('CESMainSubtext','Main subtext or link to a map'));

	
	$fields->removeByName('ContentImageCaption');
	$fields->removeByName('ContentImage2Caption');
	$fields->removeByName('ContentImage2');
	
	$fields->renameField('ContentImage','Room Background Image (772 by 303 pixels) DOES NOT RESIZE IMAGE, IMAGE MUST BE 772 X 303 PIXELS');
	/*$fields->addFieldToTab('Root.Content.Content2', new HTMLEditorField('Content2a'));
	
	$fields->removeByName('Content1Title');
	$fields->removeByName('Content3Title');
	$fields->removeByName('Images');
	$fields->removeByName('TitleImage');
	
	$fields->removeByName('Content4');*/	return $fields;
	
   }}

class CampusEventServicesRoomDisplay_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("CampusEventServicesRoomDisplay");
	
	
	
	}
 
}
 
?>