<?php
/**
 * Defines the Minisite page type
 */
class CabHome extends TypeD {

   
   public static $db = array(
		"Content2" => "HTMLText"
	
	);
	

 static $has_one = array(
   

	  
	  
	  );
	  

function getCMSFields() {
	$fields = parent::getCMSFields();

	
	$fields->addFieldToTab("Root.Content.Content2", new HTMLEditorField("Content2", "Content 2"));
	$fields->removeByName('Content3'); 
	$fields->removeByName('Content4');	return $fields;
	
   }}

class CabHome_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("CabHome");
		//Requirements::customxsaxas("test");
		
		
	
	
	
	}
 
}
?>