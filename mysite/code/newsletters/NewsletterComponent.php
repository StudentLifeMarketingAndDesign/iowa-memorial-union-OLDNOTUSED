<?php
/**
 * Defines the Minisite page type
 */
class NewsletterComponent extends Page {

	static $defaults = array(
	
	
	);
	
	

   static $db = array(
   

   );
   
   
   
   static $has_one = array(
   


   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	
	
		$fields->removeFieldFromTab('Root.Content.Main','TitleImage');
		$fields->removeFieldFromTab('Root.Content.Main','IncludePageNameInContent');
		$fields->removeFieldFromTab('Root.Content.Main','SubNavTitle');
		$fields->removeFieldFromTab('Root.Content.Main','customCSS');
		$fields->removeFieldFromTab('Root.Content.Images','ContentImage');
	$fields->removeFieldFromTab('Root.Content','Content1');
	$fields->removeFieldFromTab('Root.Content','Content2');
	
	
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content:'));

	
	return $fields;
	
   }}

class NewsletterComponent_Controller extends ContentController {

function init() {
		parent::init();
	
		
		
	
	}
 
}
?>