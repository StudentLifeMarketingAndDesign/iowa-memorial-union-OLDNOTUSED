<?php
/**
 * Defines the Minisite page type
 */
class StudentLifeStaffMember extends DataObject {

   
   public static $db = array(
   		"Name" => "Text",
   		"Description" => "HTMLText"
	
	);
	

 static $has_one = array(
   
  	"Image" => "Image",
	 "Page" => "Page"
	  
	  );
	  
	function getCMSFields_forPopup() {
		$fields = new FieldSet();
		$fields->push( new TextField('Name','First and Last Name') );
		$fields->push( new ImageField('Image', null, null, null, null, $folder="OSL staff new") );
		$fields->push( new SimpleTinyMCEField('Description','Description') );
		return $fields;
	}
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	return $fields;
	
   }}

