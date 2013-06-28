<?php
/**
 * Defines the Minisite page type
 */
class MemorialsPage extends TypeE {

   static $db = array(
   	'HonorRole' => 'HTMLText',
   	'Memorials' => 'HTMLText',
   	'ShareYourStory' => 'HTMLText',
   	'ContentImageCaption2' => 'Text',
   	'ContentImageCaption3' => 'Text',
   	'ContentImageCaption4' => 'Text'
   );
   
   
   
   static $has_one = array(
   	'ContentImage2' => 'Image',
   	'ContentImage3' => 'Image',
   	'ContentImage4' => 'Image'
 
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField( 'HonorRole', 'Honor Role' ) );
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField( 'Memorials', 'Memorials' ) );
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField( 'ShareYourStory', 'Share Your Story' ) );
	
	$fields->addFieldToTab('Root.Content.Images', new TextField('ContentImageCaption', 'Caption 1'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage2', 'Content Image ( 735x331 pixels )'));
	$fields->addFieldToTab('Root.Content.Images', new TextField('ContentImageCaption2', 'Caption 2'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage3', 'Content Image ( 735x331 pixels )'));
	$fields->addFieldToTab('Root.Content.Images', new TextField('ContentImageCaption3', 'Caption 3'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage4', 'Content Image ( 735x331 pixels )'));
	$fields->addFieldToTab('Root.Content.Images', new TextField('ContentImageCaption4', 'Caption 4'));
	
	return $fields;
   }}

class MemorialsPage_Controller extends TypeE_Controller {

function init() {
		parent::init();


	
	}
 
}
 
?>