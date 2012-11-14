<?php
/**
 * Defines the HomePage page type
 */
class WildRoseNewsletter extends NewsletterComponent {

   static $db = array(
   
    'NewsletterDate' => 'Text',
	
   );
   
   
   
   static $has_one = array(
  
	 
	  
	  );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */


	
	
	
	//$fields->renameField("ContentImage", "A better Title for Image");
	

		
		// remove a field from a tab
		$fields->removeFieldFromTab('Root.Content', 'Content');
		$fields->addFieldToTab('Root.Content.Main', new TextField('NewsletterDate', 'Date range of newsletter here'));	return $fields;
	
   }}

class WildRoseNewsletter_Controller extends Page_Controller {

function init() {
	parent::init();
	Requirements::themedCSS("WildRoseNewsletter");
}
 
}
 
?>