<?php
/**
 * Defines the Minisite page type
 */
class StudentLegalServicesInteriorPage extends Page {

   
   public static $db = array(
							 
'ExternalLink' => 'Text',
	
	);
	

 static $has_one = array(
   

	  
	  
	  );
	  

function getCMSFields() {
	$fields = parent::getCMSFields();
	

		$fields->addFieldToTab('Root.Content.Main', new TextField('ExternalLink','Enter Full URL of external link here'));
		
	
	return $fields;
	
   }}

class StudentLegalServicesInteriorPage_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("StudentLegalCommon");
		Requirements::themedCSS("StudentLegalServicesInterior");
		//Requirements::customxsaxas("test");
		
	}
 
}
 
?>