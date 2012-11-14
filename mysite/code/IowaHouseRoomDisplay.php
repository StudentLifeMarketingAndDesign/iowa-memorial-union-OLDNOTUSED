<?php
/**
 * Defines the Minisite page type
 */
class IowaHouseRoomDisplay extends IowaHouseHotelInterior {

static $defaults = array (

	"IncludeSiblings" => "true"

);
static $db = array(

);



static $allowedChildren = array (
	"IowaHouseHotelInterior", "IowaHouseRoomDisplay"
);

function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->renameField("IowaHouseBackground", "Background Image (785x283 pixels):");	return $fields;
	
   }}

class IowaHouseRoomDisplay_Controller extends IowaHouseHotelInterior_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("IowaHouseRoomDisplay");
	
	
	
	}
 
}
 
?>