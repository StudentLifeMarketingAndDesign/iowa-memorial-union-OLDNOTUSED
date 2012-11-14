<?php
/**
 * Defines the EventItem page type
 */
class HomePageWidgetItem extends Page {
	static $db = array(
		"HeaderText1" => "Text",
		"URL" => "Text",
	
	  
					  );
	static $has_one = array(
		"Image" => "Image"
							
							);
   


   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab('Root.Content.Main', 'Content');
   
   $fields->addFieldToTab('Root.Content.Main', new TextField('HeaderText1','Secondary Header (optional) '));
   $fields->addFieldToTab('Root.Content.Main', new TextField('URL','URL'));
   $fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Standard IMU Web Event Image sized at 628px x 447px (72 dpi)'));
   $fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content',4));	return $fields;
	
   }}

class HomePageWidgetItem_Controller extends Page_Controller {
	
	function init() {
		parent::init();

	

	}
	
	

}?>