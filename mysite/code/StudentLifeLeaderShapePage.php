<?php
/**
 * Defines the Minisite page type
 */
class StudentLifeLeaderShapePage extends Page {

   
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

class StudentLifeLeaderShapePage_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("StudentLifeCommon");
		Requirements::themedCSS("StudentLifeLeaderShape");
		//Requirements::customxsaxas("test");
		
		
	
	
	
	}
 
}
 
?>