<?php
/**
 * Defines the Minisite page type
 */
class EmtNewsletterFeature extends NewsletterComponent {

	static $defaults = array(
							 
		
	
	);
	
	

   static $db = array(
 		"FeatureLink" => "Text"
   );
   
   
   
   static $has_one = array(
   
   	'Photo' => 'Image'

   
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Main', new TextField("FeatureLink", "Feature URL (for image and header)"));
	$imageField = new ImageField('Photo','Photo (182 x 112 pixels)');
	$imageField->setFolderName("assets/Uploads/emt_newsletter/");
	$fields->addFieldToTab('Root.Content.Main',$imageField );	return $fields;
	
   }}

class EmtNewsletterFeature_Controller extends ContentController {

function init() {
		parent::init();
	
		
		
	
	}
 
}
?>