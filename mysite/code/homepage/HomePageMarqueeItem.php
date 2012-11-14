<?php
/**
 * Defines the EventItem page type
 */
class HomePageMarqueeItem extends Page {
	static $db = array(
		"URL" => "Text"
	  
					  );
	static $has_one = array(
		"Image" => "Image"
							
);
   


   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab('Root.Content.Main', 'Content');
   $fields->addFieldToTab('Root.Content.Main', new TextField('URL','URL'));
   $fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Standard IMU Web Event Image sized at 628px x 447px (72 dpi)'));
   $fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content',4));	return $fields;
	
   }}

class HomePageMarqueeItem_Controller extends Page_Controller {
	
	function init() {
		parent::init();

	

	}
	
	

}?>