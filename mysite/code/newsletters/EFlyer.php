<?php
/**
 * Defines the HomePage page type
 */
class EFlyer extends NewsletterComponent {

   static $db = array(
	
	'FooterText' => 'HTMLText',
	'ImageURL' => 'Text',
					  
   );
   
   
   
   static $has_one = array(
						   
		'MainImage' => 'Image',
	  
	  );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Main Content Fields */
	
	//Remove the content field so we can re-add and shrink the number of rows it uses
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content', 'Main Text', 5	));
	$fields->addFieldToTab('Root.Content.Main', new TextField('ImageURL', 'Image Link URL (optional)'));
	$fields->addFieldToTab('Root.Content.Main', new ImageField('MainImage', 'Main Image - 500 x 636 pixels', null, null, null, "eflyer_images"));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('FooterText', 'Footer Text', 5	));	return $fields;
	
   }}

class EFlyer_Controller extends ContentController {

function init() {
	parent::init();
}
 
}
 
?>