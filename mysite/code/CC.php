<?php
/**
 * Defines the Minisite page type
 */
class CC extends TypeB {

	static $defaults = array( 
	
	);
	
	

   static $db = array(
   
   'Tab1Title' => 'Text',
   'Tab2Title' => 'Text',
   'Tab3Title' => 'Text',
   'Tab4Title' => 'Text',
   'Tab5Title' => 'Text',
   'Tab6Title' => 'Text',
   'BlackBoxLine1' => 'Text',
   'BlackBoxLine2' => 'Text',
   'BlackBoxLine3' => 'Text',
   'BlackBoxLine4' => 'Text',
   
   'Tab1Content' => 'HTMLText',
   'Tab2Content' => 'HTMLText',
   'Tab3Content' => 'HTMLText',
   'Tab4Content' => 'HTMLText',
   'Tab5Content' => 'HTMLText',
   'Tab6Content' => 'HTMLText',
   
   'Tab1URL' => 'Text',
   'Tab2URL' => 'Text',
   'Tab3URL' => 'Text',
   'Tab4URL' => 'Text',
   'Tab5URL' => 'Text',
   'Tab6URL' => 'Text',


   );
   
   
   
   static $has_one = array(
   
   	   'FeatureBox1Image' => 'Image',
	   'FeatureBox2Image' => 'Image',
	   'FeatureBox3Image' => 'Image',
	   'FeatureBox4Image' => 'Image',
	   'FeatureBox5Image' => 'Image',
	   'FeatureBox6Image' => 'Image',
   
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */
	$fields->removeByName('Content1'); 
	$fields->removeByName('Content2'); 
	$fields->removeByName('ContentImage'); 
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( DIMENSIONS HERE )'));
	
	
	
		
	
	$fields->removeFieldFromTab("Root.Content","Images");
	
	
	/* Feature box tab fields: */
	
	$fields->addFieldToTab('Root.Content.FeatureBox1', new ImageField('FeatureBox1Image', 'Main Image (330x316 pixels)'));
	$fields->addFieldToTab('Root.Content.FeatureBox1', new TextField('Tab1Title','Title:'));
	$fields->addFieldToTab('Root.Content.FeatureBox1', new TextField('BlackBoxLine1','Line1:'));
	$fields->addFieldToTab('Root.Content.FeatureBox1', new TextField('BlackBoxLine2','Line2:'));
	$fields->addFieldToTab('Root.Content.FeatureBox1', new TextField('BlackBoxLine3','Line3:'));
	$fields->addFieldToTab('Root.Content.FeatureBox1', new TextField('BlackBoxLine4','Line4:'));
	$fields->addFieldToTab('Root.Content.FeatureBox1', new HTMLEditorField('Tab1Content','Content:','test default content'));
	$fields->addFieldToTab('Root.Content.FeatureBox1', new TextField('Tab1URL','URL for more information:'));
	
	$fields->addFieldToTab('Root.Content.FeatureBox2', new ImageField('FeatureBox2Image', 'Main Image (390x373 pixels)'));
	$fields->addFieldToTab('Root.Content.FeatureBox2', new TextField('Tab2Title','Title:'));
	$fields->addFieldToTab('Root.Content.FeatureBox2', new HTMLEditorField('Tab2Content','Content:'));
	$fields->addFieldToTab('Root.Content.FeatureBox2', new TextField('Tab2URL','URL for more information:'));

	
	$fields->addFieldToTab('Root.Content.FeatureBox3', new ImageField('FeatureBox3Image', 'Main Image (390x373 pixels)'));
	$fields->addFieldToTab('Root.Content.FeatureBox3', new TextField('Tab3Title','Title:'));
	$fields->addFieldToTab('Root.Content.FeatureBox3', new HTMLEditorField('Tab3Content','Content:'));
	$fields->addFieldToTab('Root.Content.FeatureBox3', new TextField('Tab3URL','URL for more information:'));

	
	$fields->addFieldToTab('Root.Content.FeatureBox4', new ImageField('FeatureBox4Image', 'Main Image (390x373 pixels)'));
	$fields->addFieldToTab('Root.Content.FeatureBox4', new TextField('Tab4Title','Title:'));
	$fields->addFieldToTab('Root.Content.FeatureBox4', new HTMLEditorField('Tab4Content','Content:'));
	$fields->addFieldToTab('Root.Content.FeatureBox4', new TextField('Tab4URL','URL for more information:'));

	$fields->addFieldToTab('Root.Content.FeatureBox5', new ImageField('FeatureBox5Image', 'Main Image (390x373 pixels)'));
	$fields->addFieldToTab('Root.Content.FeatureBox5', new TextField('Tab5Title','Title:'));
	$fields->addFieldToTab('Root.Content.FeatureBox5', new HTMLEditorField('Tab5Content','Content:'));
	$fields->addFieldToTab('Root.Content.FeatureBox5', new TextField('Tab5URL','URL for more information:'));
	
	$fields->addFieldToTab('Root.Content.FeatureBox6', new ImageField('FeatureBox6Image', 'Main Image (390x373 pixels)'));
	$fields->addFieldToTab('Root.Content.FeatureBox6', new TextField('Tab6Title','Title:'));
	$fields->addFieldToTab('Root.Content.FeatureBox6', new HTMLEditorField('Tab6Content','Content:'));
	$fields->addFieldToTab('Root.Content.FeatureBox6', new TextField('Tab6URL','URL for more information:'));	return $fields;
	
   }}

class CC_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("CC");
		
		
	
	}
 
}
?>