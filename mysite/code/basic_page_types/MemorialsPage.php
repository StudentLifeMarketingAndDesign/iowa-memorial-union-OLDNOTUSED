<?php
/**
 * Defines the Minisite page type
 */
class MemorialsPage extends TypeE {

   static $db = array(
   	'HonorRole' => 'HTMLText',
   	'Memorials' => 'HTMLText',
   	'ShareYourStory' => 'HTMLText'
   );
   
   
   
   static $has_one = array(
   
 
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField( 'HonorRole', 'Honor Role' ) );
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField( 'Memorials', 'Memorials' ) );
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField( 'ShareYourStory', 'Share Your Story' ) );
	
	return $fields;
   }}

class MemorialsPage_Controller extends TypeE_Controller {

function init() {
		parent::init();


	
	}
 
}
 
?>