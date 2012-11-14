<?php
/**
 * Defines the HomePage page type
 */
class TCNewsNewArrivals extends NewsletterComponent {

   static $db = array(
	
	'MainTitle' => 'Text',
	'MainSubTitle2' => 'Text',
	'MainURL' => 'Text',
	'MainText' => 'HTMLText',

	
	'Feature1Title' => 'Text',
	'Feature1URL' => 'Text',
	'Feature1Text' => 'HTMLText',
	
	'Feature2Title' => 'Text',
	'Feature2URL' => 'Text',
	'Feature2Text' => 'HTMLText',
	
	'Feature3Title' => 'Text',
	'Feature3URL' => 'Text',
	'Feature3Text' => 'HTMLText',
	
	'Feature4Title' => 'Text',
	'Feature4URL' => 'Text',
	'Feature4Text' => 'HTMLText',
	
	'Feature5Title' => 'Text',
	'Feature5URL' => 'Text',
	'Feature5Text' => 'HTMLText',
	
	'Feature6Title' => 'Text',
	'Feature6URL' => 'Text',
	'Feature6Text' => 'HTMLText',
	
	'Feature7Title' => 'Text',
	'Feature7URL' => 'Text',
	'Feature7Text' => 'HTMLText',
	
	'Feature8Title' => 'Text',
	'Feature8URL' => 'Text',
	'Feature8Text' => 'HTMLText',
	
	'Feature9Title' => 'Text',
	'Feature9URL' => 'Text',
	'Feature9Text' => 'HTMLText',
					  
   );
   
   
   
   static $has_one = array(
						   
		'MainImage' => 'Image',
		
		'Feature1Image' => 'Image',
		'Feature2Image' => 'Image',
		'Feature3Image' => 'Image',
		'Feature4Image' => 'Image',
		'Feature5Image' => 'Image',
		'Feature6Image' => 'Image',
		'Feature7Image' => 'Image',
		'Feature8Image' => 'Image',
		'Feature9Image' => 'Image',
  
	  );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Main Content Fields */
	$fields->removeFieldFromTab('Root.Content.Main', 'Content');
	$fields->addFieldToTab('Root.Content.Main', new ImageField('MainImage', 'Main Feature Image - 620 x 350 pixels'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('MainURL', 'Main Image URL'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('MainTitle', 'Main Title'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('MainSubTitle2', 'Main Sub Title 2'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('MainText', 'Editor\'s Corner Text'));
	
	/* Feature 1 content */
	$fields->addFieldToTab('Root.Content.Feature1', new ImageField('Feature1Image', 'Feature 1 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature1', new TextField('Feature1URL', 'Feature 1 Image URL'));
	$fields->addFieldToTab('Root.Content.Feature1', new TextField('Feature1Title', 'Feature 1 Title'));
	$fields->addFieldToTab('Root.Content.Feature1', new HTMLEditorField('Feature1Text', 'Feature 1 Text'));
	
	/* Feature 2 content */
	$fields->addFieldToTab('Root.Content.Feature2', new ImageField('Feature2Image', 'Feature 2 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature2', new TextField('Feature2URL', 'Feature 2 Image URL'));
	$fields->addFieldToTab('Root.Content.Feature2', new TextField('Feature2Title', 'Feature 2 Title'));
	$fields->addFieldToTab('Root.Content.Feature2', new HTMLEditorField('Feature2Text', 'Feature 2 Text'));
	
	/* Feature 3 content */
	$fields->addFieldToTab('Root.Content.Feature3', new ImageField('Feature3Image', 'Feature 3 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature3', new TextField('Feature3URL', 'Feature 3 Image URL'));
	$fields->addFieldToTab('Root.Content.Feature3', new TextField('Feature3Title', 'Feature 3 Title'));
	$fields->addFieldToTab('Root.Content.Feature3', new HTMLEditorField('Feature3Text', 'Feature 3 Text'));
	
	/* Feature 4 content */
	$fields->addFieldToTab('Root.Content.Feature4', new ImageField('Feature4Image', 'Feature 4 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature4', new TextField('Feature4URL', 'Feature 4 Image URL'));
	$fields->addFieldToTab('Root.Content.Feature4', new TextField('Feature4Title', 'Feature 4 Title'));
	$fields->addFieldToTab('Root.Content.Feature4', new HTMLEditorField('Feature4Text', 'Feature 4 Text'));
	
	/* Feature 5 content */
	$fields->addFieldToTab('Root.Content.Feature5', new ImageField('Feature5Image', 'Feature 5 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature5', new TextField('Feature5URL', 'Feature 5 Image URL'));
	$fields->addFieldToTab('Root.Content.Feature5', new TextField('Feature5Title', 'Feature 5 Title'));
	$fields->addFieldToTab('Root.Content.Feature5', new HTMLEditorField('Feature5Text', 'Feature 5 Text'));
	
	/* Feature 6 content */
	$fields->addFieldToTab('Root.Content.Feature6', new ImageField('Feature6Image', 'Feature 6 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature6', new TextField('Feature6URL', 'Feature 6 Image URL'));
	$fields->addFieldToTab('Root.Content.Feature6', new TextField('Feature6Title', 'Feature 6 Title'));
	$fields->addFieldToTab('Root.Content.Feature6', new HTMLEditorField('Feature6Text', 'Feature 6 Text'));
	
	/* Feature 7 content */
	$fields->addFieldToTab('Root.Content.Feature7', new ImageField('Feature7Image', 'Feature 7 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature7', new TextField('Feature7URL', 'Feature 7 Image URL'));
	$fields->addFieldToTab('Root.Content.Feature7', new TextField('Feature7Title', 'Feature 7 Title'));
	$fields->addFieldToTab('Root.Content.Feature7', new HTMLEditorField('Feature7Text', 'Feature 7 Text'));
	
	/* Feature 8 content */
	$fields->addFieldToTab('Root.Content.Feature8', new ImageField('Feature8Image', 'Feature 8 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature8', new TextField('Feature8URL', 'Feature 8 Image URL'));
	$fields->addFieldToTab('Root.Content.Feature8', new TextField('Feature8Title', 'Feature 8 Title'));
	$fields->addFieldToTab('Root.Content.Feature8', new HTMLEditorField('Feature8Text', 'Feature 8 Text'));
	
	/* Feature 9 content */
	$fields->addFieldToTab('Root.Content.Feature9', new ImageField('Feature9Image', 'Feature 9 Image - 150 x 110 pixels'));
	$fields->addFieldToTab('Root.Content.Feature9', new TextField('Feature9URL', 'Feature 9 Image URL'));
	$fields->addFieldToTab('Root.Content.Feature9', new TextField('Feature9Title', 'Feature 9 Title'));
	$fields->addFieldToTab('Root.Content.Feature9', new HTMLEditorField('Feature9Text', 'Feature 9 Text'));	return $fields;
	
   }}

class TCNewsNewArrivals_Controller extends ContentController {

function init() {
	parent::init();
}
 
}
 
?>