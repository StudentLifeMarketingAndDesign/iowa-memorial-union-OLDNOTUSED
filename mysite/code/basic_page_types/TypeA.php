<?php
/**
 * Defines the Minisite page type
 */
class TypeA extends Page {

   static $db = array(
   
   'Content3Title' => 'Text',
   'Content3' => 'HTMLText',
   
   'Content4Title' => 'Text',
   'Content4' => 'HTMLText',
   
   'ContentImage2Caption' => 'Text'
   );
   
   
   
   static $has_one = array(

   'ContentImage2' => 'Image'
   
   
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Image Dimensions in the label */
	$fields->removeByName('ContentImage'); 
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Content Image ( 360 pixels wide)', null, null, null, $this->ClassName));
	
	
	$fields->addFieldToTab('Root.Content.Images', new TextField('ContentImage2Caption'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage2', 'Content Image2 ( 330 pixels wide)', null, null, null, $this->ClassName));

	$fields->addFieldToTab('Root.Content.Content3', new TextField('Content3Title','Header:'));
	$fields->addFieldToTab('Root.Content.Content3', new HTMLEditorField('Content3','Content:'));
		
	$fields->addFieldToTab('Root.Content.Content4', new TextField('Content4Title','Header:'));
	$fields->addFieldToTab('Root.Content.Content4', new HTMLEditorField('Content4','Content:'));	return $fields;
	
   }}

class TypeA_Controller extends Page_Controller {

function init() {
		parent::init();
		Requirements::themedCSS("TypeA");
		
	
	}
 
}
 
?>