<?php
/**
 * Defines the Minisite page type
 */
class StudentLifeHomePage extends Page {

   
   public static $db = array(
		"ShowContent" => "Boolean"
	
	);
	

 static $has_one = array(
   
      'EventImage' => 'Image'
	  
	  
	  );
	  

function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Content1', new CheckboxField('ShowContent','Show the following events? Uncheck to hide.'));
	
	return $fields;
	
   }}

class StudentLifeHomePage_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("StudentLifeCommon");
		Requirements::themedCSS("StudentLifeHome");
		//Requirements::customxsaxas("test");
		
		
	
	
	
	}
 
}
 
?>