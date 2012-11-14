<?php
/**
 * Defines the HomePage page type
 */
class NewNowNewsletter extends NewsletterComponent {

   static $db = array(
	
	

	
	'Feature1Title' => 'Text',
	'Feature1Text' => 'HTMLText',

	'Feature2Title1' => 'Text',
	'Feature2Title2' => 'Text',
	'Feature2Title3' => 'Text',
	'Feature2Text' => 'HTMLText',
	'Feature2Text1' => 'HTMLText',
	'Feature2Text2' => 'HTMLText',
	'Feature2Text3' => 'HTMLText',
	
					  
	'UBSTitle' => 'Text',
	'UBSText' => 'HTMLText',	
	'UBSCaption' => 'Text',
					  
   );
   
   
   
   static $has_one = array(
						   
		'MainImage' => 'Image',
		
		'Feature1Image' => 'Image',
		'Feature2Image1' => 'Image',
		'Feature2Image2' => 'Image',
		'Feature2Image3' => 'Image',
	 	'UBSImage' => 'Image',
	  
	  );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Main Content Fields */
	$fields->removeFieldFromTab('Root.Content.Main', 'Content');
	$fields->addFieldToTab('Root.Content.Main', new ImageField('MainImage', 'Main Feature Image - 620 x 350 pixels'));

	
	/* Feature 1 content */
	$fields->addFieldToTab('Root.Content.Feature1', new ImageField('Feature1Image', 'Feature 1 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature1', new TextField('Feature1Title', 'Feature 1 Title'));
	$fields->addFieldToTab('Root.Content.Feature1', new HTMLEditorField('Feature1Text', 'Feature 1 Text'));
		

	
	/* Feature 2 content */
	$fields->addFieldToTab('Root.Content.Feature2', new ImageField('Feature2Image1', 'Feature 2 Image 1 - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature2', new TextField('Feature2Title1', 'Feature 2 Title 1'));
	$fields->addFieldToTab('Root.Content.Feature2', new HTMLEditorField('Feature2Text1', 'Feature 2 Text 1'));
	$fields->addFieldToTab('Root.Content.Feature2', new ImageField('Feature2Image2', 'Feature 2 Image 1 - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature2', new TextField('Feature2Title2', 'Feature 2 Title 1'));
	$fields->addFieldToTab('Root.Content.Feature2', new HTMLEditorField('Feature2Text2', 'Feature 2 Text 2'));
	$fields->addFieldToTab('Root.Content.Feature2', new ImageField('Feature2Image3', 'Feature 2 Image 1 - 150 x 110 pixels'));	
	$fields->addFieldToTab('Root.Content.Feature2', new TextField('Feature2Title3', 'Feature 2 Title 1'));
	$fields->addFieldToTab('Root.Content.Feature2', new HTMLEditorField('Feature2Text3', 'Feature 2 Text 3'));

	
	/* UBS content */
	$fields->addFieldToTab('Root.Content.UBS', new ImageField('UBSImage', 'UBS Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.UBS', new TextField('UBSCaption', 'UBS Image Caption'));
	$fields->addFieldToTab('Root.Content.UBS', new TextField('UBSTitle', 'UBS Title'));
	$fields->addFieldToTab('Root.Content.UBS', new HTMLEditorField('UBSText', 'UBS Text'));	
	
	
	return $fields;
	
   }}

class NewNowNewsletter_Controller extends ContentController {

function init() {
	parent::init();
}
 
}
 
?>