<?php
/**
 * Defines the Minisite page type
 */
class IowaHouseHotelInterior extends Page{

static $defaults = array (

	"IncludeSiblings" => "true"

);
static $db = array(

);

static $has_one = array(
	
	"IowaHouseBackground" => "Image"

);


static $allowed_children = array (
	"IowaHouseHotelInterior", "IowaHouseRoomDisplay"
);

function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new ImageField('IowaHouseBackground', 'Background Image (785x142 pixels):', null, null, null, $this->ClassName));
	$fields->removeByName('Content1Title');
	$fields->removeByName('Content2Title');
	$fields->removeByName('Images');
	$fields->removeByName('TitleImage');	return $fields;
	
   }}

class IowaHouseHotelInterior_Controller extends Page_Controller {

function init() {
		parent::init();
		
		Requirements::themedCSS("IowaHouseHotelInterior");
	
	
	
	}
 
}
 
?>