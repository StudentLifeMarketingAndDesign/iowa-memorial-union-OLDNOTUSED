<?php
/**
 * Defines the Minisite page type
 */
class FamilyWeekendET extends Page {

   static $db = array(
	'InteriorPageContent' => 'HTMLText',				  
   'ContactsColumn' => 'HTMLText',
   'EventsColumn' => 'HTMLText',
   'DescriptionColumn' => 'HTMLText',
   'SponsorColumn' => 'HTMLText',

   );
   
   static $has_one = array(
   
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */
	$fields->removeByName('ContentImage'); 
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( 274x221 pixels )', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.InteriorPage', new HTMLEditorField('InteriorPageContent','This column is for interior pages and overrides the left and center column'));
	$fields->addFieldToTab('Root.Content.ContentFW', new HTMLEditorField('ContactsColumn','Contacts column on left:'));
	$fields->addFieldToTab('Root.Content.ContentFW', new HTMLEditorField('EventsColumn','Events column on left:'));
	$fields->addFieldToTab('Root.Content.ContentFW', new HTMLEditorField('DescriptionColumn','Description column on left:'));
	$fields->addFieldToTab('Root.Content.ContentFW', new HTMLEditorField('SponsorColumn','Sponsor column on left:'));
	
	
	$fields->removeFieldFromTab("Root","Content1");	return $fields;
	$fields->removeFieldFromTab("Root","Content2");	return $fields;
	
   }}

class FamilyWeekendET_Controller extends Page_Controller {

	function init() {
		parent::init();
		Requirements::themedCSS("FamilyWeekendET");
		
	
	}
 
}
 
?>