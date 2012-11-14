<?php
/**
 * Defines the HomePage page type
 */
class CCDFNewsletter extends NewsletterComponent {

   static $db = array(
	
	

	
	'Feature1Title' => 'Text',
	'Feature1Text' => 'HTMLText',
	'Feature1Caption' => 'Text',
	
	'Feature2Title' => 'Text',
	'Feature2Text' => 'HTMLText',
	'Feature2Caption' => 'Text',
	
	'Feature3Title' => 'Text',
	'Feature3Text' => 'HTMLText',
	'Feature3Caption' => 'Text',
	
	'Feature4Title' => 'Text',
	'Feature4Text' => 'HTMLText',
	'Feature4Caption' => 'Text',
					  
	'Feature5Title' => 'Text',
	'Feature5Text' => 'HTMLText',	
	'Feature5Caption' => 'Text',
					  
   );
   
   
   
   static $has_one = array(
						   
		'MainImage' => 'Image',
		
		'Feature1Image' => 'Image',
		'Feature2Image' => 'Image',
		'Feature3Image' => 'Image',
		'Feature4Image' => 'Image',
	 	'Feature5Image' => 'Image',
	  
	  );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Main Content Fields */
	$fields->removeFieldFromTab('Root.Content.Main', 'Content');
	$fields->addFieldToTab('Root.Content.Main', new ImageField('MainImage', 'Main Feature Image - 620 x 350 pixels'));

	
	/* Feature 1 content */
	$fields->addFieldToTab('Root.Content.Feature1', new ImageField('Feature1Image', 'Feature 1 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature1', new TextField('Feature1Caption', 'Feature 1 Image Caption'));
	$fields->addFieldToTab('Root.Content.Feature1', new TextField('Feature1Title', 'Feature 1 Title'));
	$fields->addFieldToTab('Root.Content.Feature1', new HTMLEditorField('Feature1Text', 'Feature 1 Text'));
		

	
	/* Feature 2 content */
	$fields->addFieldToTab('Root.Content.Feature2', new ImageField('Feature2Image', 'Feature 2 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature2', new TextField('Feature2Caption', 'Feature 2 Image Caption'));
	$fields->addFieldToTab('Root.Content.Feature2', new TextField('Feature2Title', 'Feature 2 Title'));
	$fields->addFieldToTab('Root.Content.Feature2', new HTMLEditorField('Feature2Text', 'Feature 2 Text'));
	
	/* Feature 3 content */
	$fields->addFieldToTab('Root.Content.Feature3', new ImageField('Feature3Image', 'Feature 3 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature3', new TextField('Feature3Caption', 'Feature 3 Image Caption'));
	$fields->addFieldToTab('Root.Content.Feature3', new TextField('Feature3Title', 'Feature 3 Title'));
	$fields->addFieldToTab('Root.Content.Feature3', new HTMLEditorField('Feature3Text', 'Feature 3 Text'));	
	
	/* Feature 4 content */
	$fields->addFieldToTab('Root.Content.Feature4', new ImageField('Feature4Image', 'Feature 4 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature4', new TextField('Feature4Caption', 'Feature 4 Image Caption'));
	$fields->addFieldToTab('Root.Content.Feature4', new TextField('Feature4Title', 'Feature 4 Title'));
	$fields->addFieldToTab('Root.Content.Feature4', new HTMLEditorField('Feature4Text', 'Feature 4 Text'));	
	
	/* Feature 5 content */
	$fields->addFieldToTab('Root.Content.Feature5', new ImageField('Feature5Image', 'Feature 5 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature5', new TextField('Feature5Caption', 'Feature 5 Image Caption'));
	$fields->addFieldToTab('Root.Content.Feature5', new TextField('Feature5Title', 'Feature 5 Title'));
	$fields->addFieldToTab('Root.Content.Feature5', new HTMLEditorField('Feature5Text', 'Feature 5 Text'));	
	
	
	return $fields;
	
   }}

class CCDFNewsletter_Controller extends ContentController {

function init() {
	parent::init();
}
 
}
 
?>