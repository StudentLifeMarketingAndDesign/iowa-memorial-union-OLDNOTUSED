<?php
/**
 * Defines the Minisite page type
 */
class TypeB2 extends Page {

	static $defaults = array( 
	
	);
	
	

   static $db = array(


   );
   
   
   
   static $has_one = array(
   
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */
	$fields->removeByName('Content1'); 
	$fields->removeByName('Content2'); 
	$fields->removeByName('ContentImage'); 
	
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( DIMENSIONS HERE )'));
	$fields->removeFieldFromTab("Root.Content","Images");	return $fields;
	
   }}

class TypeB2_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("TypeB2");
		
		
	
	}
	
public function Tabs(){
	
	$whereStatement = "ParentID = ".$this->ID;
	return DataObject::get("TypeB2Tab", $whereStatement);
	
}
 
}
?>